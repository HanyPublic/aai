using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection;
using System.Linq.Expressions;
using System.Linq;

namespace Aksaty.Infra.CrossCutting.Util
{
    public static class LinqExtensions
    {
        public static IQueryable<T> OrderByDynamic<T>(this IQueryable<T> source, string ordering)
        {
            bool ascending = (ordering.IndexOf(" asc") > -1);
            ordering = ordering.Split(null)[0];
            var type = typeof(T);
            var parameter = Expression.Parameter(type, "p");
            PropertyInfo property;
            Expression propertyAccess=Expression.Empty();
            if (ordering.Contains('.'))
            {
                // support to be sorted on child fields.
                String[] childProperties = ordering.Split('.');
                property = type.GetProperty(childProperties[0], BindingFlags.IgnoreCase);
                if (property != null)
                {
                    propertyAccess = Expression.MakeMemberAccess(parameter, property);
                    for (int i = 1; i < childProperties.Length; i++)
                    {
                        property = property.PropertyType.GetProperty(childProperties[i], BindingFlags.IgnoreCase | BindingFlags.Public | BindingFlags.Instance);
                        propertyAccess = Expression.MakeMemberAccess(propertyAccess, property);
                    }
                }
            }
            else
            {
                property = type.GetProperty(ordering.ToLower(), BindingFlags.IgnoreCase | BindingFlags.Public | BindingFlags.Instance);
                if (property != null)
                {
                    propertyAccess = Expression.MakeMemberAccess(parameter, property);
                }
            }
            if (property != null)
            {
                var orderByExp = Expression.Lambda(propertyAccess, parameter);
                MethodCallExpression resultExp = Expression.Call(typeof(Queryable),
                                                                 ascending ? "OrderBy" : "OrderByDescending",
                                                                 new[] { type, property.PropertyType }, source.Expression,
                                                                 Expression.Quote(orderByExp));
                return source.Provider.CreateQuery<T>(resultExp);
            }
            else
            {
                return source;
            }
        }
    }
}
