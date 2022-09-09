�
gD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Infra.CrossCutting.Identity\ApiIdentityConfig.cs
	namespace		 	
Aksaty		
 
.		 
Infra		 
.		 
CrossCutting		 #
.		# $
Identity		$ ,
{

 
public 

static 
class 
ApiIdentityConfig )
{ 
public
static
void
AddApiIdentityConfiguration
(
this
IServiceCollection
services
,
IConfiguration

)
{ 	
services 
. :
.AddIdentityEntityFrameworkContextConfiguration C
(C D
optionsD K
=>L N
options 
. 
UseSqlServer $
($ %

.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
,[ \
b 
=> 
b 
. 
MigrationsAssembly -
(- .
$str. R
)R S
)S T
)T U
;U V
services 
. 
AddDefaultIdentity '
<' (
IdentityUser( 4
>4 5
(5 6
(6 7
opt7 :
): ;
=>< >
{ 
opt 
. 
Password 
= 
new "
PasswordOptions# 2
(2 3
)3 4
{ 
RequireDigit  
=! "
false# (
,( )
RequiredLength "
=# $
$num% &
,& '
RequiredUniqueChars '
=( )
$num* +
,+ ,
RequireLowercase $
=% &
false' ,
,, -"
RequireNonAlphanumeric *
=+ ,
false- 2
,2 3
RequireUppercase $
=% &
false' ,
} 
; 
}   
)  
.!! 
AddRoles!! 
<!! 
IdentityRole!! '
>!!' (
(!!( )
)!!) *
."" $
AddEntityFrameworkStores"" *
<""* +"
NetDevPackAppDbContext""+ A
>""A B
(""B C
)""C D
.## $
AddDefaultTokenProviders## *
(##* +
)##+ ,
;##, -
services&& 
.&& 
AddJwtConfiguration&& (
(&&( )

,&&6 7
$str&&8 E
)&&E F
;&&F G
}'' 	
}(( 
})) �
jD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Infra.CrossCutting.Identity\WebAppIdentityConfig.cs
	namespace 	
Aksaty
 
. 
Infra 
. 
CrossCutting #
.# $
Identity$ ,
{ 
public 

static 
class  
WebAppIdentityConfig ,
{		 
public

 
static

 
void

 *
AddWebAppIdentityConfiguration

 9
(

9 :
this

: >
IServiceCollection

? Q
services

R Z
,

Z [
IConfiguration

\ j


k x
)

x y
{ 	
services
.
.AddIdentityEntityFrameworkContextConfiguration
(
options
=>
#SqlServerDbContextOptionsExtensions 3
.3 4
UseSqlServer4 @
(@ A
optionsA H
,H I

.W X
GetConnectionStringX k
(k l
$strl 
)	 �
,
� �
b 
=> 
b 
. 
MigrationsAssembly -
(- .
$str. R
)R S
)S T
)T U
;U V
services 
. $
AddIdentityConfiguration -
(- .
). /
;/ 0
} 	
} 
} 