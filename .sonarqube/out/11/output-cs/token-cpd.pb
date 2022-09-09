‘	
fD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Configurations\AutoMapperConfig.cs
	namespace 	
Aksaty
 
. 
Services 
. 
Api 
. 
Configurations ,
{ 
public 

static 
class 
AutoMapperConfig (
{		 
public

 
static

 
void

 &
AddAutoMapperConfiguration

 5
(

5 6
this

6 :
IServiceCollection

; M
services

N V
)

V W
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddAutoMapper "
(" #
typeof# )
() *+
DomainToViewModelMappingProfile* I
)I J
,J K
typeofL R
(R S+
ViewModelToDomainMappingProfileS r
)r s
)s t
;t u
} 	
} 
} £
dD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Configurations\DatabaseConfig.cs
	namespace 	
Aksaty
 
. 
Services 
. 
Api 
. 
Configurations ,
{ 
public		 

static		 
class		 
DatabaseConfig		 &
{

 
public 
static 
void $
AddDatabaseConfiguration 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
,T U
IConfigurationV d
configuratione r
)r s
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddDbContext !
<! "
AksatyContext" /
>/ 0
(0 1
options1 8
=>9 ;
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
)[ \
)\ ]
;] ^
services 
. 
AddDbContext !
<! " 
EventStoreSqlContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
)[ \
)\ ]
;] ^
} 	
} 
} Õ
oD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Configurations\DependencyInjectionConfig.cs
	namespace 	
Aksaty
 
. 
Services 
. 
Api 
. 
Configurations ,
{ 
public 

static 
class %
DependencyInjectionConfig 1
{ 
public		 
static		 
void		 /
#AddDependencyInjectionConfiguration		 >
(		> ?
this		? C
IServiceCollection		D V
services		W _
)		_ `
{

 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T&
NativeInjectorBootStrapper &
.& '
RegisterServices' 7
(7 8
services8 @
)@ A
;A B
} 	
} 
} Ö
oD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Configurations\HttpContextAccessorConfig.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Configurations #
{ 
internal 
static 
class %
HttpContextAccessorConfig 3
{ 
internal 
static 
IApplicationBuilder +
UseHttpContext, :
(: ;
this; ?
IApplicationBuilder@ S
applicationBuilderT f
)f g
{ 	
MyHttpContext 
. 
	Configure #
(# $
applicationBuilder$ 6
.6 7
ApplicationServices7 J
.J K
GetRequiredServiceK ]
<] ^ 
IHttpContextAccessor^ r
>r s
(s t
)t u
)u v
;v w
return 
applicationBuilder %
;% &
} 	
} 
} ü#
cD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Configurations\SwaggerConfig.cs
	namespace 	
Aksaty
 
. 
Services 
. 
Api 
. 
Configurations ,
{ 
public 

static 
class 
SwaggerConfig %
{		 
public

 
static

 
void

 #
AddSwaggerConfiguration

 2
(

2 3
this

3 7
IServiceCollection

8 J
services

K S
)

S T
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
services 
. 
AddSwaggerGen "
(" #
s# $
=>% '
{ 
s 
. 

SwaggerDoc 
( 
$str !
,! "
new# &
OpenApiInfo' 2
{ 
Version 
= 
$str "
," #
Title 
= 
$str ,
,, -
Description 
=  !
$str" >
,> ?
Contact 
= 
new !
OpenApiContact" 0
{1 2
Name3 7
=8 9
$str: I
,I J
EmailK P
=Q R
$strS p
,p q
Urlr u
=v w
newx {
Uri| 
(	 Ä
$str
Ä †
)
† °
}
¢ £
,
£ §
License 
= 
new !
OpenApiLicense" 0
{1 2
Name3 7
=8 9
$str: ?
,? @
UrlA D
=E F
newG J
UriK N
(N O
$str	O í
)
í ì
}
î ï
} 
) 
; 
s 
. !
AddSecurityDefinition '
(' (
$str( 0
,0 1
new2 5!
OpenApiSecurityScheme6 K
{ 
Description 
=  !
$str" K
,K L
Name 
= 
$str *
,* +
Scheme 
= 
$str %
,% &
BearerFormat  
=! "
$str# (
,( )
In 
= 
ParameterLocation *
.* +
Header+ 1
,1 2
Type   
=   
SecuritySchemeType   -
.  - .
ApiKey  . 4
}!! 
)!! 
;!! 
s## 
.## "
AddSecurityRequirement## (
(##( )
new##) ,&
OpenApiSecurityRequirement##- G
{$$ 
{%% 
new&& !
OpenApiSecurityScheme&& 1
{'' 
	Reference(( %
=((& '
new((( +
OpenApiReference((, <
{)) 
Type**  $
=**% &
ReferenceType**' 4
.**4 5
SecurityScheme**5 C
,**C D
Id++  "
=++# $
$str++% -
},, 
}-- 
,-- 
new.. 
string.. "
[.." #
]..# $
{..% &
}..& '
}// 
}00 
)00 
;00 
}22 
)22 
;22 
}33 	
public55 
static55 
void55 
UseSwaggerSetup55 *
(55* +
this55+ /
IApplicationBuilder550 C
app55D G
)55G H
{66 	
if77 
(77 
app77 
==77 
null77 
)77 
throw77 "
new77# &!
ArgumentNullException77' <
(77< =
nameof77= C
(77C D
app77D G
)77G H
)77H I
;77I J
app99 
.99 

UseSwagger99 
(99 
)99 
;99 
app:: 
.:: 
UseSwaggerUI:: 
(:: 
c:: 
=>:: !
{;; 
c<< 
.<< 
SwaggerEndpoint<< !
(<<! "
$str<<" <
,<<< =
$str<<> B
)<<B C
;<<C D
}== 
)== 
;== 
}>> 	
}?? 
}@@ ÉL
dD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\AccountController.cs
	namespace

 	
Aksaty


 
.

 
Services

 
.

 
Api

 
.

 
Controllers

 )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AccountController "
:# $
ApiController% 2
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
ITanentAppService *
_tanentService+ 9
;9 :
public 
AccountController  
(  !
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
IUserService 
userService $
,$ %
ITanentAppService 
tanentAppService .
). /
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_userService 
= 
userService &
;& '
_tanentService 
= 
tanentAppService -
;- .
} 	
[!! 	
HttpPost!!	 
]!! 
["" 	
Route""	 
("" 
$str"" 
)"" 
]"" 
public## 
async## 
Task## 
<## 
ActionResult## &
>##& '
Register##( 0
(##0 1!
UserRegisterViewModel##1 F
	viewModel##G P
)##P Q
{$$ 	
if%% 
(%% 
!%% 

ModelState%% 
.%% 
IsValid%% #
)%%# $
return%%% +
CustomResponse%%, :
(%%: ;

ModelState%%; E
)%%E F
;%%F G
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
	viewModel''% .
.''. /
Email''/ 4
)''4 5
&&''6 8
string''9 ?
.''? @
IsNullOrEmpty''@ M
(''M N
	viewModel''N W
.''W X
UserName''X `
)''` a
)''a b
return''c i

BadRequest''j t
(''t u
$str	''u î
)
''î ï
;
''ï ñ
var)) 
user)) 
=)) 
new)) 
IdentityUser)) '
())' (
)))( )
;))) *
if++ 
(++ 
string++ 
.++ 
IsNullOrEmpty++ $
(++$ %
	viewModel++% .
.++. /
UserName++/ 7
)++7 8
)++8 9
{,, 
user-- 
.-- 
UserName-- 
=-- 
	viewModel--  )
.--) *
Email--* /
.--/ 0
ToLower--0 7
(--7 8
)--8 9
.--9 :
Trim--: >
(--> ?
)--? @
;--@ A
user.. 
... 
Email.. 
=.. 
	viewModel.. &
...& '
Email..' ,
..., -
ToLower..- 4
(..4 5
)..5 6
...6 7
Trim..7 ;
(..; <
)..< =
;..= >
user// 
.// 
EmailConfirmed// #
=//$ %
true//& *
;//* +
}00 
else11 
{22 
user33 
.33 
UserName33 
=33 
	viewModel33  )
.33) *
UserName33* 2
.332 3
ToLower333 :
(33: ;
)33; <
.33< =
Trim33= A
(33A B
)33B C
;33C D
}44 
var77 
result77 
=77 
await77 
_userManager77 +
.77+ ,
CreateAsync77, 7
(777 8
user778 <
,77< =
	viewModel77> G
.77G H
Password77H P
)77P Q
;77Q R
if99 
(99 
result99 
.99 
	Succeeded99  
)99  !
{:: 
var;; 
tanentResult;;  
=;;! "
await;;# (
_tanentService;;) 7
.;;7 8
	AddUpdate;;8 A
(;;A B
new;;B E
TanentViewModel;;F U
(;;U V
	viewModel;;V _
.;;_ `
CompanyName;;` k
,;;k l
user;;m q
.;;q r
Id;;r t
);;t u
);;u v
;;;v w
if<< 
(<< 
tanentResult<<  
.<<  !
IsValid<<! (
)<<( )
{== 
await>> 
_userManager>> &
.>>& '
AddClaimAsync>>' 4
(>>4 5
user>>5 9
,>>9 :
new>>; >
System>>? E
.>>E F
Security>>F N
.>>N O
Claims>>O U
.>>U V
Claim>>V [
(>>[ \
$str>>\ f
,>>f g
(>>h i
await>>i n
_tanentService>>o }
.>>} ~
GetByUserId	>>~ â
(
>>â ä
user
>>ä é
.
>>é è
Id
>>è ë
)
>>ë í
)
>>í ì
.
>>ì î
Id
>>î ñ
.
>>ñ ó
ToString
>>ó ü
(
>>ü †
)
>>† °
)
>>° ¢
)
>>¢ £
;
>>£ §
}?? 
var@@ 
token@@ 
=@@ 
await@@ !
_userService@@" .
.@@. /

GetFullJwt@@/ 9
(@@9 :
user@@: >
)@@> ?
;@@? @
returnAA 
CustomResponseAA %
(AA% &
newAA& )
UserViewModelAA* 7
(AA7 8
userAA8 <
.AA< =
IdAA= ?
,AA? @
userAAA E
.AAE F
EmailAAF K
,AAK L
userAAM Q
.AAQ R
UserNameAAR Z
,AAZ [
tokenAA\ a
,AAb c
	viewModelAAc l
.AAl m
CompanyNameAAm x
)AAx y
)AAy z
;AAz {
}BB 
foreachDD 
(DD 
varDD 
errorDD 
inDD !
resultDD" (
.DD( )
ErrorsDD) /
)DD/ 0
{EE 
AddErrorFF 
(FF 
errorFF 
.FF 
DescriptionFF *
)FF* +
;FF+ ,
}GG 
returnII 
CustomResponseII !
(II! "
)II" #
;II# $
}JJ 	
[LL 	
HttpPostLL	 
]LL 
[MM 	
RouteMM	 
(MM 
$strMM 
)MM 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (
LoginNN) .
(NN. /
UserLogInViewModelNN/ A
	loginUserNNB K
)NNK L
{OO 	
ifPP 
(PP 
!PP 

ModelStatePP 
.PP 
IsValidPP #
)PP# $
returnPP% +
CustomResponsePP, :
(PP: ;

ModelStatePP; E
)PPE F
;PPF G
varRR 
resultRR 
=RR 
awaitRR 
_signInManagerRR -
.RR- .
PasswordSignInAsyncRR. A
(RRA B
	loginUserRRB K
.RRK L
EmailRRL Q
,RRQ R
	loginUserRRS \
.RR\ ]
PasswordRR] e
,RRe f
falseRRg l
,RRl m
trueRRn r
)RRr s
;RRs t
ifTT 
(TT 
resultTT 
.TT 
	SucceededTT  
)TT  !
{UU 
varVV 
userVV 
=VV 
awaitVV  
_userServiceVV! -
.VV- .$
GetUserByEmailOrUserNameVV. F
(VVF G
	loginUserVVG P
.VVP Q
EmailVVQ V
)VVV W
;VVW X
returnWW 
CustomResponseWW %
(WW% &
userWW& *
)WW* +
;WW+ ,
}XX 
ifZZ 
(ZZ 
resultZZ 
.ZZ 
IsLockedOutZZ "
)ZZ" #
{[[ 
AddError\\ 
(\\ 
$str\\ ;
)\\; <
;\\< =
return]] 
CustomResponse]] %
(]]% &
)]]& '
;]]' (
}^^ 
AddError`` 
(`` 
$str`` 1
)``1 2
;``2 3
returnaa 
CustomResponseaa !
(aa! "
)aa" #
;aa# $
}bb 	
[cc 	
HttpGetcc	 
]cc 
[dd 	
Routedd	 
(dd 
$strdd 
)dd 
]dd 
[ee 	
	Authorizeee	 
]ee 
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' (
LogOutff) /
(ff/ 0
)ff0 1
{gg 	
awaithh 
_signInManagerhh  
.hh  !
SignOutAsynchh! -
(hh- .
)hh. /
;hh/ 0
returnii 
Okii 
(ii 
)ii 
;ii 
}jj 	
}kk 
}ll û$
`D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\ApiController.cs
	namespace		 	
Aksaty		
 
.		 
Services		 
.		 
Api		 
.		 
Controllers		 )
{

 
[ 
ApiController 
] 
public 

abstract 
class 
ApiController '
:( )
ControllerBase* 8
{ 
private 
readonly 
ICollection $
<$ %
string% +
>+ ,
_errors- 4
=5 6
new7 :
List; ?
<? @
string@ F
>F G
(G H
)H I
;I J
public 
string 
UserId 
{ 	
get 
{ 
return 
this 
. 
User  
.  !
FindFirstValue! /
(/ 0

ClaimTypes0 :
.: ;
NameIdentifier; I
)I J
;J K
} 
} 	
public 
string 
TanentId 
{ 	
get 
{ 
return 
this 
. 
User  
.  !
FindFirstValue! /
(/ 0
$str0 :
): ;
;; <
} 
} 	
	protected 
ActionResult 
CustomResponse -
(- .
object. 4
result5 ;
=< =
null> B
)B C
{ 	
if 
( 
IsOperationValid  
(  !
)! "
)" #
{   
return!! 
Ok!! 
(!! 
result!!  
)!!  !
;!!! "
}"" 
return$$ 

BadRequest$$ 
($$ 
new$$ !$
ValidationProblemDetails$$" :
($$: ;
new$$; >

Dictionary$$? I
<$$I J
string$$J P
,$$P Q
string$$R X
[$$X Y
]$$Y Z
>$$Z [
{%% 
{&& 
$str&& 
,&& 
_errors&& %
.&&% &
ToArray&&& -
(&&- .
)&&. /
}&&0 1
}'' 
)'' 
)'' 
;'' 
}(( 	
	protected** 
ActionResult** 
CustomResponse** -
(**- . 
ModelStateDictionary**. B

modelState**C M
)**M N
{++ 	
var,, 
errors,, 
=,, 

modelState,, #
.,,# $
Values,,$ *
.,,* +

SelectMany,,+ 5
(,,5 6
e,,6 7
=>,,8 :
e,,; <
.,,< =
Errors,,= C
),,C D
;,,D E
foreach-- 
(-- 
var-- 
error-- 
in-- !
errors--" (
)--( )
{.. 
AddError// 
(// 
error// 
.// 
ErrorMessage// +
)//+ ,
;//, -
}00 
return22 
CustomResponse22 !
(22! "
)22" #
;22# $
}33 	
	protected55 
ActionResult55 
CustomResponse55 -
(55- .
ValidationResult55. >
validationResult55? O
)55O P
{66 	
foreach77 
(77 
var77 
error77 
in77 !
validationResult77" 2
.772 3
Errors773 9
)779 :
{88 
AddError99 
(99 
error99 
.99 
ErrorMessage99 +
)99+ ,
;99, -
}:: 
return<< 
CustomResponse<< !
(<<! "
)<<" #
;<<# $
}== 	
	protected?? 
bool?? 
IsOperationValid?? '
(??' (
)??( )
{@@ 	
returnAA 
!AA 
_errorsAA 
.AA 
AnyAA 
(AA  
)AA  !
;AA! "
}BB 	
	protectedDD 
voidDD 
AddErrorDD 
(DD  
stringDD  &
erroDD' +
)DD+ ,
{EE 	
_errorsFF 
.FF 
AddFF 
(FF 
erroFF 
)FF 
;FF 
}GG 	
	protectedHH 
voidHH 
ClearErrorsHH "
(HH" #
)HH# $
{II 	
_errorsJJ 
.JJ 
ClearJJ 
(JJ 
)JJ 
;JJ 
}KK 	
}LL 
}MM áê
gD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\AttachmentController.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Controllers  
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str #
)# $
]$ %
public 

class  
AttachmentController %
:& '
ApiController( 5
{ 
private 
readonly !
IAttachmentAppService .!
_attachmentAppService/ D
;D E
private 
readonly 
IWebHostEnvironment ,
_hostingEnv- 8
;8 9
public  
AttachmentController #
(# $!
IAttachmentAppService$ 9 
attachmentAppService: N
,N O
IWebHostEnvironmentP c
hostingEnvironmentd v
)v w
{ 	!
_attachmentAppService !
=" # 
attachmentAppService$ 8
;8 9
_hostingEnv 
= 
hostingEnvironment ,
;, -
}   	
[%% 	#
DisableRequestSizeLimit%%	  
]%%  !
[&& 	
Consumes&&	 
(&& 
$str&& '
)&&' (
]&&( )
['' 	
HttpPost''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
Upload(() /
(((/ 0
[((0 1
FromForm((1 9
]((9 :
	IFormFile((; D
[((D E
]((E F
files((G L
)((L M
{)) 	
if** 
(** 

ModelState** 
.** 
IsValid** "
)**" #
{++ 
List,, 
<,, %
AttachmentCreateViewModel,, .
>,,. /
attachments,,0 ;
=,,< =
new,,> A
List,,B F
<,,F G%
AttachmentCreateViewModel,,G `
>,,` a
(,,a b
),,b c
;,,c d
foreach-- 
(-- 
var-- 
file-- !
in--" $
files--% *
)--* +
{.. 
var// 
attachmentCVM// %
=//& '
await//( -
SaveFile//. 6
(//6 7
file//7 ;
)//; <
;//< =
attachmentCVM00 !
.00! "
Id00" $
=00% &
Guid00' +
.00+ ,
NewGuid00, 3
(003 4
)004 5
;005 6
attachmentCVM11 !
.11! "
	CreatedAt11" +
=11, -
DateTime11. 6
.116 7
Now117 :
;11: ;
attachmentCVM22 !
.22! "
CreatedById22" -
=22. /
this220 4
.224 5
UserId225 ;
;22; <
attachmentCVM33 !
.33! "
TanentId33" *
=33+ ,
this33- 1
.331 2
TanentId332 :
;33: ;
await44 !
_attachmentAppService44 /
.44/ 0
Add440 3
(443 4
attachmentCVM444 A
)44A B
;44B C
attachmentCVM55 !
.55! "
Url55" %
=55& '
Aksaty55( .
.55. /
Application55/ :
.55: ;
Helpers55; B
.55B C
MediaHelper55C N
.55N O
CreateMediaURL55O ]
(55] ^
attachmentCVM55^ k
)55k l
;55l m
attachments66 
.66  
Add66  #
(66# $
attachmentCVM66$ 1
)661 2
;662 3
}77 
var88 
validationResult88 $
=88% &
await88' ,!
_attachmentAppService88- B
.88B C
SaveAll88C J
(88J K
)88K L
;88L M
if99 
(99 
validationResult99 $
.99$ %
IsValid99% ,
)99, -
{:: 
return;; 
CustomResponse;; )
(;;) *
attachments;;* 5
);;5 6
;;;6 7
}<< 
else== 
{>> 
return?? 
CustomResponse?? )
(??) *
validationResult??* :
)??: ;
;??; <
}@@ 
}AA 
elseBB 
{CC 
returnDD 
newDD +
UnprocessableEntityObjectResultDD :
(DD: ;

ModelStateDD; E
)DDE F
;DDF G
}EE 
}FF 	
[KK 	
HttpGetKK	 
]KK 
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
GetAttachmentsLL) 7
(LL7 8
[LL8 9
	FromQueryLL9 B
]LLB C&
GetAllAttachmentsViewModelLLD ^
getAllViewModelLL_ n
)LLn o
{MM 	
getAllViewModelNN 
.NN 
CreatedByIdNN '
=NN( )
stringNN* 0
.NN0 1
IsNullOrEmptyNN1 >
(NN> ?
getAllViewModelNN? N
.NNN O
CreatedByIdNNO Z
)NNZ [
?NN\ ]
thisNN^ b
.NNb c
UserIdNNc i
:NNj k
getAllViewModelNNl {
.NN{ |
CreatedById	NN| á
;
NNá à
getAllViewModelOO 
.OO 
TanentIdOO $
=OO% &
stringOO' -
.OO- .
IsNullOrEmptyOO. ;
(OO; <
getAllViewModelOO< K
.OOK L
TanentIdOOL T
)OOT U
?OOV W
thisOOX \
.OO\ ]
TanentIdOO] e
:OOf g
getAllViewModelOOh w
.OOw x
TanentId	OOx Ä
;
OOÄ Å
varPP 
	pagedListPP 
=PP 
awaitPP !!
_attachmentAppServicePP" 7
.PP7 8
GetAllPP8 >
(PP> ?
getAllViewModelPP? N
)PPN O
;PPO P
ResponseQQ 
.QQ 
HeadersQQ 
.QQ 
AddPaginationQQ *
(QQ* +
	pagedListQQ+ 4
.QQ4 5
GetMetaDataQQ5 @
(QQ@ A
)QQA B
)QQB C
;QQC D
returnRR 
CustomResponseRR !
(RR! "
	pagedListRR" +
.RR+ ,
ItemsRR, 1
)RR1 2
;RR2 3
}SS 	
[YY 	
HttpGetYY	 
(YY 
$strYY 
)YY 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
GetAttachmentZZ) 6
(ZZ6 7
GuidZZ7 ;
IdZZ< >
)ZZ> ?
{[[ 	
return\\ 
CustomResponse\\ !
(\\! "
await\\" '!
_attachmentAppService\\( =
.\\= >
GetById\\> E
(\\E F
Id\\F H
)\\H I
)\\I J
;\\J K
}]] 	
[dd 	

HttpDeletedd	 
(dd 
$strdd -
)dd- .
]dd. /
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' (#
RemoveRestoreAttachmentee) @
(ee@ A
GuideeA E
IdeeF H
,eeH I
booleeJ N
DeleteeeO U
)eeU V
{ff 	
vargg 
resultgg 
=gg 
awaitgg !
_attachmentAppServicegg 4
.gg4 5
Removegg5 ;
(gg; <
Idgg< >
,gg> ?
Deletegg? E
)ggE F
;ggF G
ifhh 
(hh 
resulthh 
.hh 
IsValidhh 
)hh 
{ii 
returnjj 
CustomResponsejj %
(jj% &
$"jj& (
$strjj( ;
{jj; <
Idjj< >
}jj> ?
$strjj? D
{jjD E
(jjE F
DeletejjF L
?jjM N
$strjjO X
:jjY Z
$strjj[ e
)jje f
}jjf g
"jjg h
)jjh i
;jji j
}kk 
elsell 
{mm 
returnnn 
CustomResponsenn %
(nn% &
resultnn& ,
)nn, -
;nn- .
}oo 
}pp 	
[ww 	
HttpPostww	 
(ww 
$strww ,
)ww, -
]ww- .
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' ('
RemoveRestoreListAttachmentxx) D
(xxD E
ListxxE I
<xxI J
AttachmentViewModelxxJ ]
>xx] ^

viewModelsxx_ i
,xxi j
boolxxj n
deletexxo u
)xxu v
{yy 	
varzz 
resultzz 
=zz 
awaitzz !
_attachmentAppServicezz 4
.zz4 5

RemoveListzz5 ?
(zz? @

viewModelszz@ J
,zzJ K
deletezzK Q
)zzQ R
;zzR S
if{{ 
({{ 
result{{ 
.{{ 
IsValid{{ 
){{ 
{|| 
return}} 
CustomResponse}} %
(}}% &
$"}}& (
$str}}( =
{}}= >
(}}> ?
delete}}? E
?}}E F
$"}}F H
{}}H I
String}}I O
.}}O P
Join}}P T
(}}T U
$str}}U X
,}}X Y

viewModels}}Z d
.}}d e
Select}}e k
(}}k l
a}}l m
=>}}n p
a}}q r
.}}r s
Id}}s u
)}}u v
)}}v w
}}}w x
$str	}}x Ü
"
}}Ü á
:
}}á à
$"
}}â ã
{
}}ã å
String
}}å í
.
}}í ì
Join
}}ì ó
(
}}ó ò
$str
}}ò õ
,
}}õ ú

viewModels
}}ù ß
.
}}ß ®
Select
}}® Æ
(
}}Æ Ø
a
}}Ø ∞
=>
}}± ≥
a
}}¥ µ
.
}}µ ∂
Id
}}∂ ∏
)
}}∏ π
)
}}π ∫
}
}}∫ ª
$str
}}ª  
"
}}  À
)
}}À Ã
}
}}Ã Õ
"
}}Õ Œ
)
}}Œ œ
;
}}œ –
}~~ 
else 
{
ÄÄ 
return
ÅÅ 
CustomResponse
ÅÅ %
(
ÅÅ% &
result
ÅÅ& ,
)
ÅÅ, -
;
ÅÅ- .
}
ÇÇ 
}
ÉÉ 	
[
ââ 	
AllowAnonymous
ââ	 
]
ââ 
[
ää 	
HttpPost
ää	 
(
ää 
$str
ää 
)
ää  
]
ää  !
[
ãã 	
Consumes
ãã	 
(
ãã 
$str
ãã '
)
ãã' (
]
ãã( )
public
åå 
IActionResult
åå 
GetResizePicture
åå -
(
åå- .
[
åå. /
FromForm
åå/ 7
]
åå7 8"
ImageResizeViewModel
åå9 M
ImageDto
ååN V
)
ååV W
{
çç 	
try
éé 
{
èè 
if
êê 
(
êê 

ModelState
êê 
.
êê 
IsValid
êê &
)
êê& '
{
ëë 
MagickImage
íí 
image
íí  %
=
íí& '
new
íí( +
MagickImage
íí, 7
(
íí7 8
ImageDto
íí8 @
.
íí@ A
Image
ííA F
.
ííF G
OpenReadStream
ííG U
(
ííU V
)
ííV W
)
ííW X
;
ííX Y
image
îî 
.
îî 
Resize
îî  
(
îî  !
ImageDto
îî! )
.
îî) *
Width
îî* /
,
îî/ 0
ImageDto
îî1 9
.
îî9 :
Height
îî: @
)
îî@ A
;
îîA B
image
ïï 
.
ïï 
Strip
ïï 
(
ïï  
)
ïï  !
;
ïï! "
image
ññ 
.
ññ 
Quality
ññ !
=
ññ" #
ImageDto
ññ$ ,
.
ññ, -
Quality
ññ- 4
;
ññ4 5
return
óó 
File
óó 
(
óó  
image
óó  %
.
óó% &
ToByteArray
óó& 1
(
óó1 2
)
óó2 3
,
óó3 4
$str
óó5 @
,
óó@ A
ImageDto
óóB J
.
óóJ K
Image
óóK P
.
óóP Q
Name
óóQ U
)
óóU V
;
óóV W
}
òò 
else
ôô 
{
öö 
return
õõ 

BadRequest
õõ %
(
õõ% &
$str
õõ& @
)
õõ@ A
;
õõA B
}
úú 
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû 
ex
ûû 
)
ûû  
{
üü 
return
†† 

BadRequest
†† !
(
††! "
$str
††" *
+
††+ ,
ex
††- /
)
††/ 0
;
††0 1
}
°° 
}
¢¢ 	
[
®® 	
HttpGet
®®	 
(
®® 
$str
®® %
)
®®% &
]
®®& '
public
©© 
async
©© 
Task
©© 
<
©© 
IActionResult
©© '
>
©©' (
Download
©©) 1
(
©©1 2
Guid
©©2 6
id
©©7 9
)
©©9 :
{
™™ 	
var
´´ 
attachmentVM
´´ 
=
´´ 
await
´´ $#
_attachmentAppService
´´% :
.
´´: ;
GetById
´´; B
(
´´B C
id
´´C E
)
´´E F
;
´´F G
if
¨¨ 
(
¨¨ 
attachmentVM
¨¨ 
!=
¨¨ 
null
¨¨  $
)
¨¨$ %
{
≠≠ 
var
ÆÆ 
stream
ÆÆ 
=
ÆÆ 
new
ÆÆ  

FileStream
ÆÆ! +
(
ÆÆ+ ,
attachmentVM
ÆÆ, 8
.
ÆÆ8 9'
GetAttachmentAbsolutePath
ÆÆ9 R
(
ÆÆR S
rootPath
ÆÆS [
:
ÆÆ[ \
_hostingEnv
ÆÆ\ g
.
ÆÆg h
WebRootPath
ÆÆh s
,
ÆÆs t
tanentId
ÆÆt |
:
ÆÆ| }
thisÆÆ} Å
.ÆÆÅ Ç
TanentIdÆÆÇ ä
,ÆÆä ã
userIdÆÆã ë
:ÆÆë í
thisÆÆí ñ
.ÆÆñ ó
UserIdÆÆó ù
)ÆÆù û
,ÆÆû ü
FileModeÆÆ† ®
.ÆÆ® ©
OpenÆÆ© ≠
,ÆÆ≠ Æ

FileAccessÆÆØ π
.ÆÆπ ∫
ReadÆÆ∫ æ
,ÆÆæ ø
	FileShareÆÆ¿ …
.ÆÆ…  
ReadÆÆ  Œ
)ÆÆŒ œ
;ÆÆœ –
return
ØØ 
new
ØØ 
FileStreamResult
ØØ +
(
ØØ+ ,
stream
ØØ, 2
,
ØØ2 3$
AttachmentContentTypes
ØØ4 J
.
ØØJ K
GetContentType
ØØK Y
(
ØØY Z
attachmentVM
ØØZ f
.
ØØf g
FileExtension
ØØg t
)
ØØt u
)
ØØu v
;
ØØv w
}
∞∞ 
else
±± 
{
≤≤ 
return
≥≥ 
NotFound
≥≥ 
(
≥≥  
)
≥≥  !
;
≥≥! "
}
¥¥ 
}
µµ 	
private
ªª 
async
ªª 
Task
ªª 
<
ªª '
AttachmentCreateViewModel
ªª 4
>
ªª4 5
SaveFile
ªª6 >
(
ªª> ?
	IFormFile
ªª? H
file
ªªI M
)
ªªM N
{
ºº 	'
AttachmentCreateViewModel
ΩΩ %!
attachmentViewModel
ΩΩ& 9
=
ΩΩ: ;
new
ΩΩ< ?'
AttachmentCreateViewModel
ΩΩ@ Y
(
ΩΩY Z
)
ΩΩZ [
{
ææ 
FileExtension
øø 
=
øø 
Path
øø  $
.
øø$ %
GetExtension
øø% 1
(
øø1 2
file
øø2 6
.
øø6 7
FileName
øø7 ?
)
øø? @
,
øø@ A
SourceFileName
¿¿ 
=
¿¿  
Path
¿¿! %
.
¿¿% &
GetFileName
¿¿& 1
(
¿¿1 2
file
¿¿2 6
.
¿¿6 7
FileName
¿¿7 ?
)
¿¿? @
,
¿¿@ A
FileName
¡¡ 
=
¡¡ 
$"
¡¡ 
{
¡¡ 
Path
¡¡ "
.
¡¡" #)
GetFileNameWithoutExtension
¡¡# >
(
¡¡> ?
file
¡¡? C
.
¡¡C D
FileName
¡¡D L
)
¡¡L M
.
¡¡M N
Replace
¡¡N U
(
¡¡U V
$str
¡¡V Y
,
¡¡Y Z
$str
¡¡[ ^
)
¡¡^ _
}
¡¡_ `
$str
¡¡` a
{
¡¡a b
Guid
¡¡b f
.
¡¡f g
NewGuid
¡¡g n
(
¡¡n o
)
¡¡o p
}
¡¡p q
$str
¡¡q r
{
¡¡r s
DateTime
¡¡s {
.
¡¡{ |
Now
¡¡| 
.¡¡ Ä
ToString¡¡Ä à
(¡¡à â
$str¡¡â ô
)¡¡ô ö
}¡¡ö õ
"¡¡õ ú
,¡¡ú ù
Description
¬¬ 
=
¬¬ 
file
¬¬ "
.
¬¬" #
Length
¬¬# )
.
¬¬) *
ToString
¬¬* 2
(
¬¬2 3
)
¬¬3 4
,
¬¬4 5
CreatedById
√√ 
=
√√ 
this
√√ "
.
√√" #
UserId
√√# )
,
√√) *
TanentId
ƒƒ 
=
ƒƒ 
this
ƒƒ 
.
ƒƒ  
TanentId
ƒƒ  (
,
ƒƒ( )
ShowOnWebsite
≈≈ 
=
≈≈ 
true
≈≈ #
,
≈≈# $
Deleted
∆∆ 
=
∆∆ 
false
∆∆ 
}
«« 
;
«« 
string
»» 
filePath
»» 
=
»» !
attachmentViewModel
»» 1
.
»»1 2'
GetAttachmentAbsolutePath
»»2 K
(
»»K L
rootPath
»»L T
:
»»T U
_hostingEnv
»»V a
.
»»a b
WebRootPath
»»b m
,
»»m n
tanentId
»»o w
:
»»w x
this
»»y }
.
»»} ~
TanentId»»~ Ü
,»»Ü á
userId»»à é
:»»é è
this»»ê î
.»»î ï
UserId»»ï õ
)»»õ ú
;»»ú ù
using
…… 
(
…… 
var
…… 
stream
…… 
=
…… 
new
……  #

FileStream
……$ .
(
……. /
filePath
……/ 7
,
……7 8
FileMode
……9 A
.
……A B
Create
……B H
)
……H I
)
……I J
{
   
await
ÀÀ 
file
ÀÀ 
.
ÀÀ 
CopyToAsync
ÀÀ &
(
ÀÀ& '
stream
ÀÀ' -
)
ÀÀ- .
;
ÀÀ. /
await
ÃÃ 
stream
ÃÃ 
.
ÃÃ 

FlushAsync
ÃÃ '
(
ÃÃ' (
)
ÃÃ( )
;
ÃÃ) *
}
ÕÕ 
return
ŒŒ !
attachmentViewModel
ŒŒ &
;
ŒŒ& '
}
œœ 	
}
–– 
}—— ô-
eD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\CustomerController.cs
	namespace 	
Aksaty
 
. 
Services 
. 
Api 
. 
Controllers )
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str  
)  !
]! "
public 

class 
CustomerController #
:$ %
ApiController& 3
{ 
private 
readonly 
ICustomerAppService ,
_customerAppService- @
;@ A
public 
CustomerController !
(! "
ICustomerAppService" 5
customerAppService6 H
)H I
{ 	
_customerAppService 
=  !
customerAppService" 4
;4 5
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IEnumerable %
<% &
CustomerViewModel& 7
>7 8
>8 9
Get: =
(= >
[> ?
	FromQuery? H
]H I$
GetAllCustomersViewModelI a
	viewModelb k
)k l
{ 	
	viewModel 
. 
CreatedById !
=" #
this$ (
.( )
UserId) /
;/ 0
	viewModel 
. 
TanentId 
=  
this! %
.% &
TanentId& .
;. /
var 
	pagedList 
= 
await !
_customerAppService" 5
.5 6
GetAll6 <
(< =
	viewModel= F
)F G
;G H
Response 
. 
Headers 
. 
AddPagination *
(* +
	pagedList+ 4
.4 5
GetMetaData5 @
(@ A
)A B
)B C
;C D
return 
	pagedList 
. 
Items "
;" #
} 	
[!! 	
HttpGet!!	 
(!! 
$str!! 
)!! 
]!! 
public"" 
async"" 
Task"" 
<"" 
CustomerViewModel"" +
>""+ ,
Get""- 0
(""0 1
Guid""1 5
id""6 8
)""8 9
{## 	
var$$ 
customer$$ 
=$$ 
await$$ 
_customerAppService$$  3
.$$3 4
GetById$$4 ;
($$; <
id$$< >
)$$> ?
;$$? @
return%% 
customer%% 
;%% 
}&& 	
[(( 	
HttpPost((	 
](( 
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
Post))) -
())- .
[)). /
FromBody))/ 7
]))7 8%
CustomerRegisterViewModel))9 R
	viewModel))S \
)))\ ]
{** 	
	viewModel++ 
.++ 
CreatedById++ !
=++" #
this++$ (
.++( )
UserId++) /
;++/ 0
	viewModel,, 
.,, 
TanentId,, 
=,,  
this,,! %
.,,% &
TanentId,,& .
;,,. /
return-- 
!-- 

ModelState-- 
.-- 
IsValid-- &
?--' (
CustomResponse--) 7
(--7 8

ModelState--8 B
)--B C
:--D E
CustomResponse--F T
(--T U
await--U Z
_customerAppService--[ n
.--n o
Register--o w
(--w x
	viewModel	--x Å
)
--Å Ç
)
--Ç É
;
--É Ñ
}.. 	
[00 	
HttpPut00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Put11) ,
(11, -
[11- .
FromBody11. 6
]116 7
CustomerViewModel117 H
customerViewModel11I Z
)11Z [
{22 	
return33 
!33 

ModelState33 
.33 
IsValid33 &
?33' (
CustomResponse33) 7
(337 8

ModelState338 B
)33B C
:33D E
CustomResponse33F T
(33T U
await33U Z
_customerAppService33[ n
.33n o
Update33o u
(33u v
customerViewModel	33v á
)
33á à
)
33à â
;
33â ä
}44 	
[55 	

HttpDelete55	 
(55 
$str55 
)55  
]55  !
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
Delete66) /
(66/ 0
Guid660 4
id665 7
)667 8
{77 	
return88 
CustomResponse88 !
(88! "
await88" '
_customerAppService88( ;
.88; <
Remove88< B
(88B C
id88C E
)88E F
)88F G
;88G H
}99 	
[;; 	
HttpGet;;	 
(;; 
$str;; $
);;$ %
];;% &
public<< 
async<< 
Task<< 
<<< 
IList<< 
<<<  
CustomerHistoryData<<  3
><<3 4
><<4 5
History<<6 =
(<<= >
Guid<<> B
id<<C E
)<<E F
{== 	
return>> 
await>> 
_customerAppService>> ,
.>>, -
GetAllHistory>>- :
(>>: ;
id>>; =
)>>= >
;>>> ?
}?? 	
}@@ 
}AA Í+
dD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\ProductController.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Controllers  
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
ProductController "
:# $
ApiController% 2
{ 
private 
readonly 
IProductAppService +
_service, 4
;4 5
public 
ProductController  
(  !
IProductAppService! 3
productAppService4 E
)E F
{ 	
_service 
= 
productAppService (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Get) ,
(, -
[- .
	FromQuery. 7
]7 8#
GetAllProductsViewModel9 P#
getAllProductsViewModelQ h
)h i
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *#
getAllProductsViewModel* A
.A B
CreatedByIdB M
)M N
)N O#
getAllProductsViewModelP g
.g h
CreatedByIdh s
=t u
thisv z
.z {
UserId	{ Å
;
Å Ç
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *#
getAllProductsViewModel* A
.A B
TanentIdB J
)J K
)K L#
getAllProductsViewModelM d
.d e
TanentIde m
=n o
thisp t
.t u
TanentIdu }
;} ~
var 
	pagedList 
= 
await !
_service" *
.* +
GetAll+ 1
(1 2#
getAllProductsViewModel2 I
)I J
;J K
Response 
. 
Headers 
. 
AddPagination *
(* +
	pagedList+ 4
.4 5
GetMetaData5 @
(@ A
)A B
)B C
;C D
return 
CustomResponse !
(! "
	pagedList" +
.+ ,
Items, 1
)1 2
;2 3
} 	
[   	
HttpGet  	 
(   
$str   
)   
]   
public!! 
async!! 
Task!! 
<!! 
ProductViewModel!! *
>!!* +
Get!!, /
(!!/ 0
[!!0 1
	FromQuery!!1 :
]!!: ;
GetProductViewModel!!< O
getProductViewModel!!P c
)!!c d
{"" 	
return## 
await## 
_service## !
.##! "
GetById##" )
(##) *
getProductViewModel##* =
)##= >
;##> ?
}$$ 	
[%% 	
HttpPost%%	 
]%% 
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
Post&&) -
(&&- .
[&&. /
FromBody&&/ 7
]&&7 8
AddProductViewModel&&9 L
productViewModel&&M ]
)&&] ^
{'' 	
productViewModel(( 
.(( 
CreatedById(( (
=(() *
this((+ /
.((/ 0
UserId((0 6
;((6 7
productViewModel)) 
.)) 
TanentId)) %
=))& '
this))( ,
.)), -
TanentId))- 5
;))5 6
return** 
!** 

ModelState** 
.** 
IsValid** &
?**' (
CustomResponse**) 7
(**7 8

ModelState**8 B
)**B C
:**D E
CustomResponse**F T
(**T U
await**U Z
_service**[ c
.**c d
Add**d g
(**g h
productViewModel**h x
)**x y
)**y z
;**z {
}++ 	
[,, 	
HttpPut,,	 
],, 
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (
Put--) ,
(--, -
[--- .
FromBody--. 6
]--6 7
ProductViewModel--8 H
productViewModel--I Y
)--Y Z
{.. 	
return// 
!// 

ModelState// 
.// 
IsValid// &
?//' (
CustomResponse//) 7
(//7 8

ModelState//8 B
)//B C
://D E
CustomResponse//F T
(//T U
await//U Z
_service//[ c
.//c d
Update//d j
(//j k
productViewModel//k {
)//{ |
)//| }
;//} ~
}00 	
[22 	

HttpDelete22	 
(22 
$str22 
)22 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Delete33) /
(33/ 0
Guid330 4
id335 7
)337 8
{44 	
return55 
CustomResponse55 !
(55! "
await55" '
_service55) 1
.551 2
Remove552 8
(558 9
id559 ;
)55; <
)55< =
;55= >
}66 	
}77 
}88 Ø4
aD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\SaleController.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Controllers  
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
SaleController 
:  !
ApiController" /
{ 
private 
readonly 
ISaleAppService (
_saleAppService) 8
;8 9
public 
SaleController 
( 
ISaleAppService -
saleAppService. <
)< =
{ 	
_saleAppService 
= 
saleAppService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Get) ,
(, -
[- .
	FromQuery. 7
]7 8 
GetAllSalesViewModel9 M 
getAllSalesViewModelN b
)b c
{ 	
if 
( 
string 
. 
IsNullOrEmpty #
(# $ 
getAllSalesViewModel$ 8
.8 9
CreatedById9 D
)D E
)E F 
getAllSalesViewModelF Z
.Z [
CreatedById[ f
=g h
thisi m
.m n
UserIdn t
;t u
if 
( 
string 
. 
IsNullOrEmpty $
($ % 
getAllSalesViewModel% 9
.9 :
TanentId: B
)B C
)C D 
getAllSalesViewModelE Y
.Y Z
TanentIdZ b
=c d
thise i
.i j
TanentIdj r
;r s
var 
	pagedList 
= 
await !
_saleAppService" 1
.1 2
GetAll2 8
(8 9 
getAllSalesViewModel9 M
)M N
;N O
Response   
.   
Headers   
.   
AddPagination   *
(  * +
	pagedList  + 4
.  4 5
GetMetaData  5 @
(  @ A
)  A B
)  B C
;  C D
return!! 
CustomResponse!! !
(!!! "
	pagedList!!" +
.!!+ ,
Items!!, 1
)!!1 2
;!!2 3
}"" 	
[## 	
HttpGet##	 
(## 
$str## 
)## 
]## 
public$$ 
async$$ 
Task$$ 
<$$ 
SaleViewModel$$ '
>$$' (
Get$$) ,
($$, -
[$$- .
	FromQuery$$. 7
]$$7 8
GetSaleViewModel$$9 I
getSaleViewModel$$J Z
)$$Z [
{%% 	
return&& 
await&& 
_saleAppService&& (
.&&( )
GetById&&) 0
(&&0 1
getSaleViewModel&&1 A
)&&A B
;&&B C
}'' 	
[-- 	
HttpPost--	 
(-- 
$str-- "
)--" #
]--# $
public.. 
IActionResult.. 
CreateMockSale.. +
(..+ ,
[.., -
FromBody..- 5
]..5 6
AddSaleViewModel..7 G
addSaleViewModel..H X
)..X Y
{// 	
addSaleViewModel00 
.00 
CreatedById00 (
=00) *
this00+ /
.00/ 0
UserId000 6
;006 7
addSaleViewModel11 
.11 
TanentId11 %
=11& '
this11( ,
.11, -
TanentId11- 5
;115 6
return22 
!22 

ModelState22 
.22 
IsValid22 &
?22' (
CustomResponse22) 7
(227 8

ModelState228 B
)22B C
:22D E
CustomResponse22F T
(22T U
_saleAppService22U d
.22d e
CreateMockSale22e s
(22s t
addSaleViewModel	22t Ñ
)
22Ñ Ö
)
22Ö Ü
;
22Ü á
}33 	
[99 	
HttpPost99	 
(99 
$str99 
)99 
]99  
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (

CreateSale::) 3
(::3 4
[::4 5
FromBody::5 =
]::= >
SaleViewModel::? L
SaleViewModel::M Z
)::Z [
{;; 	
SaleViewModel<< 
.<< 
CreatedById<< %
=<<& '
this<<( ,
.<<, -
UserId<<- 3
;<<3 4
SaleViewModel== 
.== 
TanentId== "
===# $
this==% )
.==) *
TanentId==* 2
;==2 3
return>> 
!>> 

ModelState>> 
.>> 
IsValid>> &
?>>' (
CustomResponse>>) 7
(>>7 8

ModelState>>8 B
)>>B C
:>>D E
CustomResponse>>F T
(>>T U
await>>U Z
_saleAppService>>[ j
.>>j k
Create>>k q
(>>q r
SaleViewModel>>r 
)	>> Ä
)
>>Ä Å
;
>>Å Ç
}?? 	
[@@ 	
HttpPut@@	 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
PutAA) ,
(AA, -
[AA- .
FromBodyAA. 6
]AA6 7
SaleViewModelAA8 E
SaleViewModelAAF S
)AAS T
{BB 	
returnCC 
!CC 

ModelStateCC 
.CC 
IsValidCC &
?CC' (
CustomResponseCC) 7
(CC7 8

ModelStateCC8 B
)CCB C
:CCD E
CustomResponseCCF T
(CCT U
awaitCCU Z
_saleAppServiceCC[ j
.CCj k
UpdateCCk q
(CCq r
SaleViewModelCCr 
)	CC Ä
)
CCÄ Å
;
CCÅ Ç
}DD 	
[EE 	

HttpDeleteEE	 
(EE 
$strEE 
)EE 
]EE 
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
DeleteFF) /
(FF/ 0
GuidFF0 4
idFF5 7
)FF7 8
{GG 	
returnHH 
CustomResponseHH !
(HH! "
awaitHH" '
_saleAppServiceHH( 7
.HH7 8
RemoveHH8 >
(HH> ?
idHH? A
)HHA B
)HHB C
;HHC D
}II 	
}JJ 
}KK §)
lD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\SaleInstallmentController.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Controllers  
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str '
)' (
]( )
public 

class %
SaleInstallmentController *
:+ ,
ApiController- :
{ 
private 
readonly &
ISaleInstallmentAppService 3
_service4 <
;< =
public %
SaleInstallmentController (
(( )&
ISaleInstallmentAppService) C%
saleInstallmentAppServiceD ]
)] ^
{ 	
_service 
= %
saleInstallmentAppService 0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Get) ,
(, -
[- .
	FromQuery. 7
]7 8*
GetAllSaleInstallmentViewModel9 W*
getAllSaleInstallmentViewModelX v
)v w
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %*
getAllSaleInstallmentViewModel% C
.C D
CreatedByIdD O
)O P
)P Q*
getAllSaleInstallmentViewModelR p
.p q
CreatedByIdq |
=} ~
this	 É
.
É Ñ
UserId
Ñ ä
;
ä ã
if 
( 
string 
. 
IsNullOrEmpty $
($ %*
getAllSaleInstallmentViewModel% C
.C D
TanentIdD L
)L M
)M N*
getAllSaleInstallmentViewModelO m
.m n
TanentIdn v
=w x
thisy }
.} ~
TanentId	~ Ü
;
Ü á
var 
	pagedList 
= 
await !
_service" *
.* +
GetAll+ 1
(1 2*
getAllSaleInstallmentViewModel2 P
)P Q
;Q R
Response 
. 
Headers 
. 
AddPagination *
(* +
	pagedList+ 4
.4 5
GetMetaData5 @
(@ A
)A B
)B C
;C D
return 
CustomResponse !
(! "
	pagedList" +
.+ ,
Items, 1
)1 2
;2 3
} 	
[   	
HttpGet  	 
(   
$str   "
)  " #
]  # $
public!! 
async!! 
Task!! 
<!! 
IActionResult!! '
>!!' (
Get!!) ,
(!!, -'
GetSaleInstallmentViewModel!!- H
	viewModel!!I R
)!!R S
{"" 	
return## 
CustomResponse## !
(##! "
await##" '
_service##( 0
.##0 1
GetById##1 8
(##8 9
	viewModel##9 B
)##B C
)##C D
;##D E
}$$ 	
[%% 	
HttpGet%%	 
(%% 
$str%%  
)%%  !
]%%! "
public&& 
IActionResult&& 
GetStatusEnum&& *
(&&* +
)&&+ ,
{'' 	
return(( 
new(( 

JsonResult(( !
(((! "
new((" %
{((& '!
SaleInstallmentStatus((' <
.((< =
Paid((= A
,((A B!
SaleInstallmentStatus((C X
.((X Y
UnPaid((Y _
,((_ `!
SaleInstallmentStatus((` u
.((u v
OverDue((v }
}((~ 
)	(( Ä
;
((Ä Å
})) 	
[** 	
HttpPut**	 
]** 
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (
Put++) ,
(++, -
[++- .
FromBody++. 6
]++6 7$
SaleInstallmentViewModel++8 P$
SaleInstallmentViewModel++Q i
)++i j
{,, 	
return-- 
!-- 

ModelState-- 
.-- 
IsValid-- &
?--' (
CustomResponse--) 7
(--7 8

ModelState--8 B
)--B C
:--D E
CustomResponse--F T
(--T U
await--U Z
_service--[ c
.--c d
Update--d j
(--j k%
SaleInstallmentViewModel	--k É
)
--É Ñ
)
--Ñ Ö
;
--Ö Ü
}.. 	
[// 	

HttpDelete//	 
(// 
$str// 
)// 
]// 
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
Delete00) /
(00/ 0
Guid000 4
id005 7
)007 8
{11 	
return22 
CustomResponse22 !
(22! "
await22" '
_service22( 0
.220 1
Remove221 7
(227 8
id228 :
)22: ;
)22; <
;22< =
}33 	
}44 
}55 é
cD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Controllers\TanentController.cs
	namespace 	
Aksaty
 
. 
Api 
. 
Controllers  
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
]  
public 

class 
TanentController !
:" #
ApiController$ 1
{ 
private 
readonly 
ITanentAppService *
_tanentSerivce+ 9
;9 :
public 
TanentController 
(  
ITanentAppService  1
tanentAppService2 B
)B C
{ 	
_tanentSerivce 
= 
tanentAppService -
;- .
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
	GetTanent) 2
(2 3
)3 4
{ 	
var 
model 
= 
await 
_tanentSerivce ,
., -
GetByUserId- 8
(8 9
UserId9 ?
)? @
;@ A
if 
( 
model 
!= 
null 
) 
{   
return!! 
CustomResponse!! %
(!!% &
model!!& +
)!!+ ,
;!!, -
}"" 
else## 
{$$ 
return%% 
NotFound%% 
(%%  
)%%  !
;%%! "
}&& 
}'' 	
[-- 	
HttpPost--	 
]-- 
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
AddUpdateTanent..) 8
(..8 9
AddTanentViewModel..9 K
tanentViewModel..L [
)..[ \
{// 	
if00 
(00 

ModelState00 
.00 
IsValid00 "
)00" #
{11 
tanentViewModel22 
.22  
UserId22  &
=22' (
UserId22) /
;22/ 0
return33 
CustomResponse33 %
(33% &
await33& +
_tanentSerivce33, :
.33: ;
	AddUpdate33; D
(33D E
tanentViewModel33E T
)33T U
)33U V
;33V W
}44 
else55 
{66 
return77 
CustomResponse77 %
(77% &

ModelState77& 0
)770 1
;771 2
}88 
}99 	
}:: 
};; ˚

ND:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Program.cs
	namespace 	
Aksaty
 
. 
Services 
. 
API 
{ 
public 

static 
class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ¬'
ND:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Services.Api\Startup.cs
	namespace 	
Aksaty
 
. 
Services 
. 
API 
{ 
public 

class 
Startup 
{ 
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
Startup 
( 
IHostEnvironment '
env( +
)+ ,
{ 	
var 
builder 
= 
new  
ConfigurationBuilder 2
(2 3
)3 4
. 
SetBasePath 
( 
env  
.  !
ContentRootPath! 0
)0 1
. 
AddJsonFile 
( 
$str /
,/ 0
true1 5
,5 6
true7 ;
); <
. 
AddJsonFile 
( 
$" 
$str +
{+ ,
env, /
./ 0
EnvironmentName0 ?
}? @
$str@ E
"E F
,F G
trueH L
)L M
;M N
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
builder 
. 
AddUserSecrets &
<& '
Startup' .
>. /
(/ 0
)0 1
;1 2
} 
builder   
.   #
AddEnvironmentVariables   +
(  + ,
)  , -
;  - .
Configuration!! 
=!! 
builder!! #
.!!# $
Build!!$ )
(!!) *
)!!* +
;!!+ ,
}"" 	
public$$ 
void$$ 
ConfigureServices$$ %
($$% &
IServiceCollection$$& 8
services$$9 A
)$$A B
{%% 	
services'' 
.'' 
AddControllers'' #
(''# $
)''$ %
;''% &
services** 
.** $
AddDatabaseConfiguration** -
(**- .
Configuration**. ;
)**; <
;**< =
services-- 
.-- '
AddApiIdentityConfiguration-- 0
(--0 1
Configuration--1 >
)--> ?
;--? @
services00 
.00 &
AddAspNetUserConfiguration00 /
(00/ 0
)000 1
;001 2
services33 
.33 &
AddAutoMapperConfiguration33 /
(33/ 0
)330 1
;331 2
services66 
.66 #
AddSwaggerConfiguration66 ,
(66, -
)66- .
;66. /
services99 
.99 

AddMediatR99 
(99  
typeof99  &
(99& '
Startup99' .
)99. /
)99/ 0
;990 1
services<< 
.<< /
#AddDependencyInjectionConfiguration<< 8
(<<8 9
)<<9 :
;<<: ;
}== 	
public?? 
static?? 
void?? 
	Configure?? $
(??$ %
IApplicationBuilder??% 8
app??9 <
,??< =
IWebHostEnvironment??> Q
env??R U
)??U V
{@@ 	
ifAA 
(AA 
envAA 
.AA 
IsDevelopmentAA !
(AA! "
)AA" #
)AA# $
{BB 
appCC 
.CC %
UseDeveloperExceptionPageCC -
(CC- .
)CC. /
;CC/ 0
}DD 
appFF 
.FF 
UseHttpsRedirectionFF #
(FF# $
)FF$ %
;FF% &
appHH 
.HH 

UseRoutingHH 
(HH 
)HH 
;HH 
appJJ 
.JJ 
UseCorsJJ 
(JJ 
cJJ 
=>JJ 
{KK 
cLL 
.LL 
AllowAnyHeaderLL  
(LL  !
)LL! "
;LL" #
cMM 
.MM 
AllowAnyMethodMM  
(MM  !
)MM! "
;MM" #
cNN 
.NN 
AllowAnyOriginNN  
(NN  !
)NN! "
;NN" #
}OO 
)OO 
;OO 
appPP 
.PP 
UseStaticFilesPP 
(PP 
)PP  
;PP  !
appQQ 
.QQ  
UseAuthConfigurationQQ $
(QQ$ %
)QQ% &
;QQ& '
appSS 
.SS 
UseEndpointsSS 
(SS 
	endpointsSS &
=>SS' )
{TT 
	endpointsUU 
.UU 
MapControllersUU (
(UU( )
)UU) *
;UU* +
}VV 
)VV 
;VV 
appXX 
.XX 
UseSwaggerSetupXX 
(XX  
)XX  !
;XX! "
appYY 
.YY 
UseHttpContextYY 
(YY 
)YY  
;YY  !
}ZZ 	
}[[ 
}\\ 