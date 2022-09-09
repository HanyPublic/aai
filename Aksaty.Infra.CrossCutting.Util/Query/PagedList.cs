using System;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Aksaty.Infra.CrossCutting.Util
{
    public class PagedList<T>
    {
        public IEnumerable<T> Items { get; set; }
        public int CurrentPage { get; private set; }
        public int TotalPages { get; private set; }
        public int PageSize { get; private set; }
        public int TotalCount { get; private set; }
        public bool HasPrevious
        {
            get
            {
                return (CurrentPage > 1);
            }
        }

        public bool HasNext
        {
            get
            {
                return (CurrentPage < TotalPages);
            }
        }
        public PagedList()
        {

        }
        public PagedList(int count,int pageNumber, int pageSize)
        {
            TotalCount = count;
            PageSize = pageSize;
            CurrentPage = pageNumber;
            TotalPages = (int)Math.Ceiling(TotalCount / (double)pageSize);
        }
        public async Task CreateListAsync(IQueryable<T> source)
        {
           Items= await source.Skip((CurrentPage - 1) * PageSize).Take(PageSize).ToListAsync<T>();
        }
        public string GetMetaData()
        {
            return JsonConvert.SerializeObject(new
            {
                totalCount = TotalCount,
                pageSize = PageSize,
                currentPage = CurrentPage,
                totalPages = TotalPages
            });
        }
    }
}
