“
YD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\CustomerCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public		 

abstract		 
class		 
CustomerCommand		 )
:		* +
BaseEntityCommand		, =
{

 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
Guid 
? 
ImageId 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 

NationalId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
RefId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Notes 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Review 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Email 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
Mobile 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Mobile2 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Address 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Type 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
AddRecription #
{$ %
get& )
;) *
	protected+ 4
set5 8
;8 9
}: ;
public 
decimal 
Balance 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
DateTime 
NextInstallDate '
{( )
get* -
;- .
	protected/ 8
set9 <
;< =
}> ?
public 
List 
< 
CustomerAttachment &
>& '
Attachments( 3
{4 5
get6 9
;9 :
	protected; D
setE H
;H I
}J K
} 
} ¡ú
`D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\CustomerCommandHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class "
CustomerCommandHandler '
:( )
CommandHandler* 8
,8 9
IRequestHandler 
< &
RegisterNewCustomerCommand 2
,2 3
ValidationResult4 D
>D E
,E F
IRequestHandler 
< !
UpdateCustomerCommand -
,- .
ValidationResult/ ?
>? @
,@ A
IRequestHandler 
< &
UpdateCustomerSalesCommand 2
,2 3
ValidationResult4 D
>D E
,E F
IRequestHandler 
< !
RemoveCustomerCommand -
,- .
ValidationResult/ ?
>? @
{ 
private 
readonly 
ICustomerRepository ,
_customerRepository- @
;@ A
public "
CustomerCommandHandler %
(% &
ICustomerRepository& 9
customerRepository: L
)L M
{ 	
_customerRepository 
=  !
customerRepository" 4
;4 5
} 	
public 
async 
Task 
< 
ValidationResult *
>* +
Handle, 2
(2 3&
RegisterNewCustomerCommand3 M
messageN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	
if 
( 
! 
message 
. 
IsValid  
(  !
)! "
)" #
return$ *
message+ 2
.2 3
ValidationResult3 C
;C D
var!! 
customer!! 
=!! 
new!! 
Aksaty!! %
.!!% &
Domain!!& ,
.!!, -
Models!!- 3
.!!3 4
Customer!!4 <
(!!< =
id"" 
:"" 
Guid"" 
."" 
NewGuid""  
(""  !
)""! "
,""" #
imageId""$ +
:""+ ,
message""- 4
.""4 5
ImageId""5 <
,""< =
name## 
:## 
message## 
.## 
Name## !
,##! "
email##" '
:##' (
message##) 0
.##0 1
Email##1 6
,##6 7
	birthDate##7 @
:##@ A
message##B I
.##I J
	BirthDate##J S
,##S T
mobile$$ 
:$$ 
message$$ 
.$$ 
Mobile$$ %
,$$% &
mobile2$$& -
:$$- .
message$$/ 6
.$$6 7
Mobile2$$7 >
,$$> ?
address$$? F
:$$F G
message$$H O
.$$O P
Address$$P W
,$$W X
type%% 
:%% 
message%% 
.%% 
Type%% "
,%%" #
addRecription%%# 0
:%%0 1
message%%2 9
.%%9 :
AddRecription%%: G
,%%G H
createdById%%H S
:%%S T
message%%U \
.%%\ ]
CreatedById%%] h
,%%h i
tanentId&& 
:&& 
message&&  
.&&  !
TanentId&&! )
,&&) *
	createdAt&&* 3
:&&3 4
message&&5 <
.&&< =
	CreatedAt&&= F
,&&F G
showOnWebsite&&G T
:&&T U
message&&V ]
.&&] ^
ShowOnWebsite&&^ k
,&&k l
deleted'' 
:'' 
message''  
.''  !
Deleted''! (
,''( )

nationalId'') 3
:''3 4
message''5 <
.''< =

NationalId''= G
,''G H
refId''H M
:''M N
message''N U
.''U V
RefId''V [
,''[ \
notes''\ a
:''a b
message''b i
.''i j
Notes''j o
,''o p
review''p v
:''v w
message''w ~
.''~ 
Review	'' Ö
,
''Ü á
attachments
''á í
:
''í ì
message
''ì ö
.
''ö õ
Attachments
''õ ¶
)
''¶ ß
;
''ß ®
if)) 
()) 
await)) 
_customerRepository)) )
.))) *

GetByEmail))* 4
())4 5
new))5 8
Queries))9 @
.))@ A
GetByEmailQuery))A P
())P Q
customer))Q Y
.))Y Z
Email))Z _
,))_ `
customer))a i
.))i j
CreatedById))j u
,))u v
customer))w 
.	)) Ä
TanentId
))Ä à
,
))à â
customer
))ä í
.
))í ì
ShowOnWebsite
))ì †
,
))† °
customer
))¢ ™
.
))™ ´
Deleted
))´ ≤
)
))≤ ≥
)
))≥ ¥
!=
))µ ∑
null
))∏ º
)
))º Ω
{** 
AddError++ 
(++ 
$str++ F
)++F G
;++G H
return,, 
ValidationResult,, '
;,,' (
}-- 
customer// 
.// 
AddDomainEvent// #
(//# $
new//$ '#
CustomerRegisteredEvent//( ?
(//? @
id00 
:00 
customer00 
.00 
Id00  
,00  !
imageId11 
:11 
customer11 !
.11! "
ImageId11" )
,11) *
name22 
:22 
customer22 
.22  
Name22  $
,22$ %
email22& +
:22+ ,
customer22- 5
.225 6
Email226 ;
,22; <
	birthDate22= F
:22F G
customer22H P
.22P Q
	BirthDate22Q Z
,22Z [
mobile33 
:33 
customer33 !
.33! "
Mobile33" (
,33( )
mobile233* 1
:331 2
customer333 ;
.33; <
Mobile233< C
,33C D
address33E L
:33L M
customer33N V
.33V W
Address33W ^
,33^ _
type44 
:44 
customer44 
.44 
Type44 #
,44# $
addRecription44$ 1
:441 2
customer443 ;
.44; <
AddRecription44< I
,44I J
createdById44K V
:44V W
customer44X `
.44` a
CreatedById44a l
,44l m
tanentId55 
:55 
customer55 "
.55" #
TanentId55# +
,55+ ,
	createdAt55, 5
:555 6
customer557 ?
.55? @
	CreatedAt55@ I
,55I J
showOnWebsite55K X
:55X Y
customer55Z b
.55b c
ShowOnWebsite55c p
,55p q

nationalId66 
:66 
customer66 #
.66# $

NationalId66$ .
,66. /
refId660 5
:665 6
message667 >
.66> ?
RefId66? D
,66D E
notes66F K
:66K L
message66M T
.66T U
Notes66U Z
,66Z [
review66[ a
:66a b
message66b i
.66i j
Review66j p
,66p q
deleted66r y
:66y z
customer	66{ É
.
66É Ñ
Deleted
66Ñ ã
)77 
)77 
;77 
_customerRepository99 
.99  
Add99  #
(99# $
customer99$ ,
)99, -
;99- .
return;; 
await;; 
Commit;; 
(;;  
_customerRepository;;  3
.;;3 4

UnitOfWork;;4 >
);;> ?
;;;? @
}<< 	
public>> 
async>> 
Task>> 
<>> 
ValidationResult>> *
>>>* +
Handle>>, 2
(>>2 3!
UpdateCustomerCommand>>3 H
message>>I P
,>>P Q
CancellationToken>>R c
cancellationToken>>d u
)>>u v
{?? 	
if@@ 
(@@ 
!@@ 
message@@ 
.@@ 
IsValid@@  
(@@  !
)@@! "
)@@" #
return@@$ *
message@@+ 2
.@@2 3
ValidationResult@@3 C
;@@C D
varBB 
customerBB 
=BB 
awaitBB  
_customerRepositoryBB! 4
.BB4 5
GetByIdBB5 <
(BB< =
messageBB= D
.BBD E
IdBBE G
)BBG H
;BBH I
ifCC 
(CC 
customerCC 
==CC 
nullCC  
)CC  !
{DD 
AddErrorEE 
(EE 
$"EE 
$strEE ,
{EE, -
messageEE- 4
.EE4 5
IdEE5 7
}EE7 8
$strEE8 G
"EEG H
)EEH I
;EEI J
returnFF 
ValidationResultFF '
;FF' (
}GG 
messageHH 
.HH 
AttachmentsHH 
.HH  
ForEachHH  '
(HH' (
oaHH( *
=>HH+ -
{HH. /
oaHH0 2
.HH2 3

CustomerIdHH3 =
=HH> ?
customerHH@ H
.HHH I
IdHHI K
;HHK L
}HHM N
)HHO P
;HHP Q
varII 
oldAttachmentsII 
=II  
customerII! )
.II) *
AttachmentsII* 5
;II5 6
ifJJ 
(JJ 
oldAttachmentsJJ 
.JJ 
CountJJ $
>JJ% &
$numJJ' (
)JJ( )
{JJ* +
varKK 
toRemoveAttachmentsKK '
=KK( )
oldAttachmentsKK* 8
.KK8 9
WhereKK9 >
(KK> ?
aKK? @
=>KKA C
!KKD E
messageKKE L
.KKL M
AttachmentsKKM X
.KKX Y
AnyKKY \
(KK\ ]
oaKK] _
=>KK` b
oaKKc e
.KKe f
AttachmentIdKKf r
==KKs u
aKKv w
.KKw x
AttachmentId	KKx Ñ
)
KKÑ Ö
)
KKÖ Ü
;
KKÜ á
_customerRepositoryLL #
.LL# $
RemoveAttachmentsLL$ 5
(LL5 6
toRemoveAttachmentsLL6 I
)LLI J
;LLJ K
}MM 
varNN 
toAddAttachmentsNN  
=NN! "
messageNN# *
.NN* +
AttachmentsNN+ 6
.NN6 7
WhereNN7 <
(NN< =
aNN= >
=>NN? A
!NNB C
oldAttachmentsNNC Q
.NNQ R
AnyNNR U
(NNU V
oaNNV X
=>NNY [
oaNN\ ^
.NN^ _
AttachmentIdNN_ k
==NNl n
aNNo p
.NNp q
AttachmentIdNNq }
)NN} ~
)NN~ 
;	NN Ä
ifOO 
(OO 
toAddAttachmentsOO  
.OO  !
CountOO! &
(OO& '
)OO' (
>OO( )
$numOO) *
)OO* +
{PP 
awaitQQ 
_customerRepositoryQQ )
.QQ) *
AddAttachmentsQQ* 8
(QQ8 9
toAddAttachmentsQQ9 I
)QQI J
;QQJ K
}RR 
customerTT 
.TT 
UpdateTT 
(TT 
messageTT #
.TT# $
ImageIdTT$ +
,TT+ ,
messageTT- 4
.TT4 5
NameTT5 9
,TT9 :
messageTT; B
.TTB C
EmailTTC H
,TTH I
messageUU 
.UU 
	BirthDateUU !
,UU! "
messageUU# *
.UU* +
MobileUU+ 1
,UU1 2
messageUU3 :
.UU: ;
Mobile2UU; B
,UUB C
messageVV 
.VV 
AddressVV 
,VV  
messageVV! (
.VV( )
TypeVV) -
,VV- .
messageVV/ 6
.VV6 7
AddRecriptionVV7 D
,VVD E
messageVVF M
.VVM N

NationalIdVVN X
,VVX Y
refIdVVZ _
:VV_ `
messageVVa h
.VVh i
RefIdVVi n
,VVn o
notesVVp u
:VVu v
messageVVw ~
.VV~ 
Notes	VV Ñ
,
VVÑ Ö
review
VVÖ ã
:
VVã å
message
VVå ì
.
VVì î
Review
VVî ö
,
VVö õ
message
VVú £
.
VV£ §
ShowOnWebsite
VV§ ±
,
VV± ≤
message
VV≤ π
.
VVπ ∫
Deleted
VV∫ ¡
)
VV¡ ¬
;
VV¬ √
varXX 
existingCustomerXX  
=XX! "
awaitXX# (
_customerRepositoryXX) <
.XX< =

GetByEmailXX= G
(XXG H
newXXH K
QueriesXXL S
.XXS T
GetByEmailQueryXXT c
(XXc d
customerXXd l
.XXl m
EmailXXm r
,XXr s
customerXXt |
.XX| }
CreatedById	XX} à
,
XXà â
customer
XXä í
.
XXí ì
TanentId
XXì õ
,
XXõ ú
customer
XXù •
.
XX• ¶
ShowOnWebsite
XX¶ ≥
,
XX≥ ¥
customer
XXµ Ω
.
XXΩ æ
Deleted
XXæ ≈
)
XX≈ ∆
)
XX∆ «
;
XX« »
ifZZ 
(ZZ 
existingCustomerZZ  
!=ZZ! #
nullZZ$ (
&&ZZ) +
existingCustomerZZ, <
.ZZ< =
IdZZ= ?
!=ZZ@ B
customerZZC K
.ZZK L
IdZZL N
)ZZN O
{[[ 
if\\ 
(\\ 
!\\ 
existingCustomer\\ %
.\\% &
Equals\\& ,
(\\, -
customer\\- 5
)\\5 6
)\\6 7
{]] 
AddError^^ 
(^^ 
$str^^ J
)^^J K
;^^K L
return__ 
ValidationResult__ +
;__+ ,
}`` 
}aa 
customercc 
.cc 
AddDomainEventcc #
(cc# $
newcc$ ' 
CustomerUpdatedEventcc( <
(cc< =
customerdd 
.dd 
Iddd 
,dd 
messagedd $
.dd$ %
ImageIddd% ,
,dd, -
customerdd. 6
.dd6 7
Namedd7 ;
,dd; <
customerdd= E
.ddE F
EmailddF K
,ddK L
customeree 
.ee 
	BirthDateee "
,ee" #
customeree$ ,
.ee, -
Mobileee- 3
,ee3 4
customeree5 =
.ee= >
Mobile2ee> E
,eeE F
customerff 
.ff 
Addressff  
,ff  !
customerff" *
.ff* +
Typeff+ /
,ff/ 0
customerff1 9
.ff9 :
AddRecriptionff: G
,ffG H
customerffI Q
.ffQ R
ShowOnWebsiteffR _
,ff_ `
customerff` h
.ffh i

NationalIdffi s
,ffs t
customerfft |
.ff| }
RefId	ff} Ç
,
ffÇ É
customer
ffÉ ã
.
ffã å
Notes
ffå ë
,
ffë í
review
ffí ò
:
ffò ô
customer
ffô °
.
ff° ¢
Review
ff¢ ®
,
ff© ™
customer
ff™ ≤
.
ff≤ ≥
Deleted
ff≥ ∫
)
ff∫ ª
)
ffª º
;
ffº Ω
_customerRepositoryhh 
.hh 
Updatehh %
(hh% &
customerhh& .
)hh. /
;hh/ 0
returnjj 
awaitjj 
Commitjj 
(jj  
_customerRepositoryjj  3
.jj3 4

UnitOfWorkjj4 >
)jj> ?
;jj? @
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
ValidationResultmm *
>mm* +
Handlemm, 2
(mm2 3!
RemoveCustomerCommandmm3 H
messagemmI P
,mmP Q
CancellationTokenmmR c
cancellationTokenmmd u
)mmu v
{nn 	
ifoo 
(oo 
!oo 
messageoo 
.oo 
IsValidoo  
(oo  !
)oo! "
)oo" #
returnoo$ *
messageoo+ 2
.oo2 3
ValidationResultoo3 C
;ooC D
varqq 
customerqq 
=qq 
awaitqq  
_customerRepositoryqq! 4
.qq4 5
GetByIdqq5 <
(qq< =
messageqq= D
.qqD E
IdqqE G
)qqG H
;qqH I
ifss 
(ss 
customerss 
isss 
nullss  
)ss  !
{tt 
AddErroruu 
(uu 
$struu 7
)uu7 8
;uu8 9
returnvv 
ValidationResultvv '
;vv' (
}ww 
customeryy 
.yy 
AddDomainEventyy #
(yy# $
newyy$ ' 
CustomerRemovedEventyy( <
(yy< =
messageyy= D
.yyD E
IdyyE G
)yyG H
)yyH I
;yyI J
_customerRepository{{ 
.{{  
Remove{{  &
({{& '
customer{{' /
){{/ 0
;{{0 1
return}} 
await}} 
Commit}} 
(}}  
_customerRepository}}  3
.}}3 4

UnitOfWork}}4 >
)}}> ?
;}}? @
}~~ 	
public
ÄÄ 
void
ÄÄ 
Dispose
ÄÄ 
(
ÄÄ 
)
ÄÄ 
{
ÅÅ 	!
_customerRepository
ÇÇ 
.
ÇÇ  
Dispose
ÇÇ  '
(
ÇÇ' (
)
ÇÇ( )
;
ÇÇ) *
}
ÉÉ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
ValidationResult
ÖÖ *
>
ÖÖ* +
Handle
ÖÖ, 2
(
ÖÖ2 3(
UpdateCustomerSalesCommand
ÖÖ3 M
message
ÖÖN U
,
ÖÖU V
CancellationToken
ÖÖW h
cancellationToken
ÖÖi z
)
ÖÖz {
{
ÜÜ 	
if
áá 
(
áá 
!
áá 
message
áá 
.
áá 
IsValid
áá  
(
áá  !
)
áá! "
)
áá" #
return
áá$ *
message
áá+ 2
.
áá2 3
ValidationResult
áá3 C
;
ááC D
var
ââ 
customer
ââ 
=
ââ 
await
ââ  !
_customerRepository
ââ! 4
.
ââ4 5
GetById
ââ5 <
(
ââ< =
message
ââ= D
.
ââD E
Id
ââE G
)
ââG H
;
ââH I
if
ää 
(
ää 
customer
ää 
==
ää 
null
ää  
)
ää  !
{
ãã 
AddError
åå 
(
åå 
$"
åå 
$str
åå ,
{
åå, -
message
åå- 4
.
åå4 5
Id
åå5 7
}
åå7 8
$str
åå8 G
"
ååG H
)
ååH I
;
ååI J
return
çç 
ValidationResult
çç '
;
çç' (
}
éé 
customer
èè 
.
èè 
Update
èè 
(
èè 
message
èè #
.
èè# $
Balance
èè$ +
,
èè+ ,
message
èè- 4
.
èè4 5
NextInstallDate
èè5 D
)
èèD E
;
èèE F
customer
ëë 
.
ëë 
AddDomainEvent
ëë #
(
ëë# $
new
ëë$ ''
CustomerSalesUpdatedEvent
ëë( A
(
ëëA B
customer
íí 
.
íí 
Id
íí 
,
íí 
customer
ìì 
.
ìì 
Balance
ìì  
,
ìì  !
customer
ìì" *
.
ìì* +
NextInstallDate
ìì+ :
)
ìì: ;
)
ìì; <
;
ìì< =!
_customerRepository
ïï 
.
ïï  
Update
ïï  &
(
ïï& '
customer
ïï' /
)
ïï/ 0
;
ïï0 1
return
óó 
await
óó 
Commit
óó 
(
óó  !
_customerRepository
óó  3
.
óó3 4

UnitOfWork
óó4 >
)
óó> ?
;
óó? @
}
òò 	
}
ôô 
}öö ı
dD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\RegisterNewCustomerCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public		 

class		 &
RegisterNewCustomerCommand		 +
:		, -
CustomerCommand		. =
{

 
public &
RegisterNewCustomerCommand )
() *
string 
imageId 
, 
string 
name 
, 
string 
email  %
,% &
DateTime' /
	birthDate0 9
,9 :
string 
mobile 
, 
string !
mobile2" )
,) *
string+ 1
address2 9
,9 :
string 
type 
, 
string 
addRecription  -
,- .
string 
createdById 
, 
string  &
tanentId' /
,/ 0
DateTime 
	createdAt 
, 
bool  $
showOnWebsite% 2
,2 3
string 

nationalId 
, 
string %
refId& +
,+ ,
string 
notes 
, 
string 
review  &
,& '
bool( ,
deleted- 4
) 
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
imageId& -
)- .
). /
ImageId0 7
=8 9
Guid: >
.> ?
Parse? D
(D E
imageIdE L
)L M
;M N
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
Mobile 
= 
mobile 
; 
Mobile2 
= 
mobile2 
; 
Address 
= 
address 
; 
Type 
= 
type 
; 
AddRecription 
= 
addRecription )
;) *
CreatedById 
= 
createdById %
;% &
TanentId   
=   
tanentId   
;    
	CreatedAt!! 
=!! 
	createdAt!! !
;!!! "
ShowOnWebsite"" 
="" 
showOnWebsite"" )
;"") *

NationalId## 
=## 

nationalId## #
;### $
RefId$$ 
=$$ 
refId$$ 
;$$ 
Notes%% 
=%% 
notes%% 
;%% 
Review&& 
=&& 
review&& 
;&& 
Deleted'' 
='' 
deleted'' 
;'' 
}(( 	
public** 
override** 
bool** 
IsValid** $
(**$ %
)**% &
{++ 	
ValidationResult,, 
=,, 
new,, "0
$RegisterNewCustomerCommandValidation,,# G
(,,G H
),,H I
.,,I J
Validate,,J R
(,,R S
this,,S W
),,W X
;,,X Y
return-- 
ValidationResult-- #
.--# $
IsValid--$ +
;--+ ,
}.. 	
}// 
}00 ˘
_D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\RemoveCustomerCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class !
RemoveCustomerCommand &
:' (
CustomerCommand) 8
{ 
public !
RemoveCustomerCommand $
($ %
Guid% )
id* ,
), -
{		 	
Id

 
=

 
id

 
;

 
AggregateId 
= 
id 
; 
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new "+
RemoveCustomerCommandValidation# B
(B C
)C D
.D E
ValidateE M
(M N
thisN R
)R S
;S T
return 
ValidationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} π
_D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\UpdateCustomerCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public		 

class		 !
UpdateCustomerCommand		 &
:		' (
CustomerCommand		) 8
{

 
public !
UpdateCustomerCommand $
($ %
Guid 
id 
, 
string 
imageId "
," #
string 
name 
, 
string 
email $
,$ %
DateTime& .
	birthDate/ 8
,8 9
string 
mobile 
, 
string  
mobile2! (
,( )
string* 0
address1 8
,8 9
string 
type 
, 
string 
addRecription ,
,, -
bool. 2
showOnWebsite3 @
,@ A
string 

nationalId 
, 
string $
refId% *
,* +
string 
notes 
, 
string 
review %
,% &
bool' +
deleted, 3
)3 4
{ 	
Id 
= 
id 
; 
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
imageId& -
)- .
). /
ImageId0 7
=8 9
Guid: >
.> ?
Parse? D
(D E
imageIdE L
)L M
;M N
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
Mobile 
= 
mobile 
; 
Mobile2 
= 
mobile2 
; 
Address 
= 
address 
; 
Type 
= 
type 
; 
AddRecription 
= 
addRecription )
;) *
ShowOnWebsite 
= 
showOnWebsite )
;) *

NationalId 
= 

nationalId #
;# $
RefId 
= 
refId 
; 
Notes   
=   
notes   
;   
Review!! 
=!! 
review!! 
;!! 
Deleted"" 
="" 
deleted"" 
;"" 
}## 	
public%% 
override%% 
bool%% 
IsValid%% $
(%%$ %
)%%% &
{&& 	
ValidationResult'' 
='' 
new'' "+
UpdateCustomerCommandValidation''# B
(''B C
)''C D
.''D E
Validate''E M
(''M N
this''N R
)''R S
;''S T
return(( 
ValidationResult(( #
.((# $
IsValid(($ +
;((+ ,
})) 	
}** 
}++ ™
dD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\UpdateCustomerSalesCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Customer  
.  !
Commands! )
{ 
public 

class &
UpdateCustomerSalesCommand +
:+ ,
CustomerCommand, ;
{		 
public

 &
UpdateCustomerSalesCommand

 )
(

) *
Guid 
id 
, 
decimal 
balance 
, 
DateTime 
nextInstallmentDate (
) 
{ 	
Id 
= 
id 
; 
Balance 
= 
balance 
; 
NextInstallDate 
= 
nextInstallmentDate 1
;1 2
} 	
} 
} ∫
hD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\Validations\CustomerValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

abstract 
class 
CustomerValidation ,
<, -
T- .
>. /
:0 1
AbstractValidator2 C
<C D
TD E
>E F
whereG L
TM N
:O P
CustomerCommandQ `
{ 
	protected 
void 
ValidateName #
(# $
)$ %
{		 	
RuleFor

 
(

 
c

 
=>

 
c

 
.

 
Name

 
)

  
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( Q
)Q R
. 
Length 
( 
$num 
, 
$num 
) 
.  
WithMessage  +
(+ ,
$str, ]
)] ^
;^ _
} 	
	protected 
void 
ValidateBirthDate (
(( )
)) *
{ 	
RuleFor 
( 
c 
=> 
c 
. 
	BirthDate $
)$ %
. 
NotEmpty 
( 
) 
. 
Must 
( 
HaveMinimumAge $
)$ %
. 
WithMessage 
( 
$str F
)F G
;G H
} 	
	protected 
void 
ValidateEmail $
($ %
)% &
{ 	
RuleFor 
( 
c 
=> 
c 
. 
Email  
)  !
. 
NotEmpty 
( 
) 
. 
EmailAddress 
( 
) 
;  
} 	
	protected 
void 

ValidateId !
(! "
)" #
{ 	
RuleFor   
(   
c   
=>   
c   
.   
Id   
)   
.!! 
NotEqual!! 
(!! 
Guid!! 
.!! 
Empty!! $
)!!$ %
;!!% &
}"" 	
	protected$$ 
static$$ 
bool$$ 
HaveMinimumAge$$ ,
($$, -
DateTime$$- 5
	birthDate$$6 ?
)$$? @
{%% 	
return&& 
	birthDate&& 
<=&& 
DateTime&&  (
.&&( )
Now&&) ,
.&&, -
AddYears&&- 5
(&&5 6
-&&6 7
$num&&7 9
)&&9 :
;&&: ;
}'' 	
}(( 
})) ¯
zD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\Validations\RegisterNewCustomerCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

class 0
$RegisterNewCustomerCommandValidation 5
:6 7
CustomerValidation8 J
<J K&
RegisterNewCustomerCommandK e
>e f
{ 
public 0
$RegisterNewCustomerCommandValidation 3
(3 4
)4 5
{ 	
ValidateName 
( 
) 
; 
ValidateBirthDate 
( 
) 
;  
ValidateEmail		 
(		 
)		 
;		 
}

 	
} 
} Œ
uD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\Validations\RemoveCustomerCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

class +
RemoveCustomerCommandValidation 0
:1 2
CustomerValidation3 E
<E F!
RemoveCustomerCommandF [
>[ \
{ 
public +
RemoveCustomerCommandValidation .
(. /
)/ 0
{ 	

ValidateId 
( 
) 
; 
} 	
}		 
}

 ©
uD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Commands\Validations\UpdateCustomerCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

class +
UpdateCustomerCommandValidation 0
:1 2
CustomerValidation3 E
<E F!
UpdateCustomerCommandF [
>[ \
{ 
public +
UpdateCustomerCommandValidation .
(. /
)/ 0
{ 	

ValidateId 
( 
) 
; 
ValidateName 
( 
) 
; 
ValidateBirthDate		 
(		 
)		 
;		  
ValidateEmail

 
(

 
)

 
;

 
} 	
} 
} Ë
UD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerEvent.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Customer		  
.		  !
Events		! '
{

 
public 

abstract 
class 
CustomerEvent '
:' (
BaseEntityEvent) 8
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 

NationalId  
{! "
get# &
;& '
	protected( 1
set2 5
;5 6
}7 8
public 
string 
RefId 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
string 
Notes 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
string 
Review 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
Guid 
? 
ImageId 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Name 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Email 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
DateTime 
	BirthDate !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
Mobile 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Mobile2 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Address 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Type 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
AddRecription #
{$ %
get& )
;) *
	protected+ 4
set5 8
;8 9
}: ;
} 
} ≤
\D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerEventHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerEventHandler %
:& ' 
INotificationHandler 
< #
CustomerRegisteredEvent 4
>4 5
,5 6 
INotificationHandler		 
<		  
CustomerUpdatedEvent		 1
>		1 2
,		2 3 
INotificationHandler

 
<

  
CustomerRemovedEvent

 1
>

1 2
{ 
public 
Task 
Handle 
(  
CustomerUpdatedEvent /
message0 7
,7 8
CancellationToken9 J
cancellationTokenK \
)\ ]
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( #
CustomerRegisteredEvent 2
message3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
(  
CustomerRemovedEvent /
message0 7
,7 8
CancellationToken9 J
cancellationTokenK \
)\ ]
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
}   
}!! ˛
_D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerRegisteredEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class #
CustomerRegisteredEvent (
:) *
CustomerEvent+ 8
{ 
public		 #
CustomerRegisteredEvent		 &
(		& '
Guid

 
id

 
,

 
Guid

 
?

 
imageId

 "
,

" #
string 
name 
, 
string 
email  %
,% &
DateTime 
	birthDate 
, 
string %
mobile& ,
,, -
string 
mobile2 
, 
string "
address# *
,* +
string, 2
type3 7
,7 8
string 
addRecription  
,  !
string" (
createdById) 4
,4 5
string 
tanentId 
, 
DateTime $
	createdAt% .
,. /
bool 
showOnWebsite 
, 
string %

nationalId& 0
,0 1
string 
refId 
, 
string 
notes  %
,% &
string' -
review. 4
,4 5
bool6 :
deleted; B
) 
{ 	
Id 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
Mobile 
= 
mobile 
; 
Mobile2 
= 
mobile2 
; 
Address 
= 
address 
; 
Type 
= 
type 
; 
AddRecription 
= 
addRecription )
;) *
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt   
=   
	createdAt   !
;  ! "
ShowOnWebsite!! 
=!! 
showOnWebsite!! )
;!!) *

NationalId"" 
="" 

nationalId"" #
;""# $
RefId## 
=## 
refId## 
;## 
Notes$$ 
=$$ 
notes$$ 
;$$ 
Review%% 
=%% 
review%% 
;%% 
Deleted&& 
=&& 
deleted&& 
;&& 
}'' 	
})) 
}** ù
\D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerRemovedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerRemovedEvent %
:& '
Event( -
{ 
public  
CustomerRemovedEvent #
(# $
Guid$ (
id) +
)+ ,
{		 	
Id

 
=

 
id

 
;

 
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
} 
} •
aD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerSalesUpdatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Customer  
.  !
Events! '
{ 
public 

class %
CustomerSalesUpdatedEvent *
:* +
Event+ 0
{		 
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
decimal 
Balance 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
DateTime 
NextInstallDate '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
public %
CustomerSalesUpdatedEvent (
(( )
Guid
 
id 
, 
decimal
 
balance 
, 
DateTime
 
nextInstallDate "
)" #
{ 	
Id 
= 
id 
; 
Balance 
= 
balance 
; 
NextInstallDate 
= 
nextInstallDate -
;- .
} 	
} 
} ﬁ
\D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Events\CustomerUpdatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class  
CustomerUpdatedEvent %
:& '
CustomerEvent( 5
{ 
public		  
CustomerUpdatedEvent		 #
(		# $
Guid

 
id

 
,

 
Guid

 
?

 
imageId

 "
,

" #
string 
name 
, 
string 
email 
, 
DateTime "
	birthDate# ,
,, -
string 
mobile 
, 
string !
mobile2" )
,) *
string 
address 
, 
string "
type# '
,' (
string 
addRecription  
,  !
bool! %
showOnWebsite& 3
,3 4
string 

nationalId 
, 
string 
refId 
, 
string  
notes! &
,& '
string' -
review. 4
,4 5
bool6 :
deleted; B
) 
{ 	
Id 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
Mobile 
= 
mobile 
; 
Mobile2 
= 
mobile2 
; 
Address 
= 
address 
; 
Type 
= 
type 
; 
AddRecription 
= 
addRecription )
;) *
ShowOnWebsite 
= 
showOnWebsite )
;) *

NationalId 
= 

nationalId #
;# $
RefId   
=   
refId   
;   
Notes!! 
=!! 
notes!! 
;!! 
Review"" 
="" 
review"" 
;"" 
Deleted## 
=## 
deleted## 
;## 
}$$ 	
}%% 
}&& ã
_D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Interfaces\ICustomerRepository.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 

Interfaces		 "
{

 
public 

	interface 
ICustomerRepository (
:) *
IRepository+ 6
<6 7
Aksaty7 =
.= >
Domain> D
.D E
ModelsE K
.K L
CustomerL T
>T U
{ 
Task 
< 
Aksaty 
. 
Domain 
. 
Models !
.! "
Customer" *
>* +
GetById, 3
(3 4
Guid4 8
id9 ;
); <
;< =
Task 
< 
Aksaty 
. 
Domain 
. 
Models !
.! "
Customer" *
>* +

GetByEmail, 6
(6 7
GetByEmailQuery7 F
queryG L
)M N
;N O
Task 
< 
	PagedList 
< 
Aksaty 
. 
Domain $
.$ %
Models% +
.+ ,
Customer, 4
>4 5
>5 6
GetAll7 =
(= > 
GetAllCustomersQuery> R 
getAllCustomersQueryS g
)g h
;h i
void 
Add 
( 
Aksaty 
. 
Domain 
. 
Models %
.% &
Customer& .
customer/ 7
)7 8
;8 9
void 
Update 
( 
Aksaty 
. 
Domain !
.! "
Models" (
.( )
Customer) 1
customer2 :
): ;
;; <
void 
Remove 
( 
Aksaty 
. 
Domain !
.! "
Models" (
.( )
Customer) 1
customer2 :
): ;
;; <
void 
RemoveAttachments 
( 
IEnumerable *
<* +
CustomerAttachment+ =
>= >
attachments? J
)J K
;K L
Task 
AddAttachments 
( 
IEnumerable '
<' (
CustomerAttachment( :
>: ;
attachments< G
)G H
;H I
} 
} öS
PD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Models\Customer.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Models		 
{

 
public 

class 
Customer 
: 

BaseEntity &
,& '
IAggregateRoot( 6
{ 
public 
Customer 
( 
Guid 
id 
, 
Guid 
? 
imageId !
,! "
string# )
name* .
,. /
string 
email 
, 
DateTime !
	birthDate" +
,+ ,
string 
mobile 
, 
string  
mobile2! (
,( )
string 
address 
, 
string !
type" &
,& '
string 
addRecription 
,  
string! '
createdById( 3
,3 4
string 
tanentId 
, 
DateTime $
	createdAt% .
,. /
bool 
showOnWebsite 
, 
bool #
deleted$ +
,+ ,
string 

nationalId 
, 
string $
refId% *
,* +
string 
notes 
, 
string 
review  &
,& '
List( ,
<, -
CustomerAttachment- ?
>? @
attachmentsA L
) 
{ 	
ImageId 
= 
imageId 
; 
Id 
= 
id 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
	BirthDate 
= 
	birthDate !
;! "
Mobile 
= 
mobile 
; 
Mobile2 
= 
mobile2 
; 
Address   
=   
address   
;   
Type!! 
=!! 
type!! 
;!! 
AddRecription"" 
="" 
addRecription"" )
;"") *
CreatedById## 
=## 
createdById## %
;##% &
TanentId$$ 
=$$ 
tanentId$$ 
;$$  
	CreatedAt%% 
=%% 
	createdAt%% !
;%%! "
ShowOnWebsite&& 
=&& 
showOnWebsite&& )
;&&) *
Deleted'' 
='' 
deleted'' 
;'' 

NationalId(( 
=(( 

nationalId(( #
;((# $
RefId)) 
=)) 
refId)) 
;)) 
Notes** 
=** 
notes** 
;** 
Review++ 
=++ 
review++ 
;++ 
attachments,, 
.,, 
ForEach,, 
(,,  
c,,  !
=>,," $
{,,% &
c,,' (
.,,( )

CustomerId,,) 3
=,,4 5
id,,6 8
;,,8 9
},,: ;
),,; <
;,,< =
Attachments-- 
=-- 
attachments-- %
;--% &
}.. 	
public// 
Customer// 
(// 
Guid00 
id00 
,00 
decimal11 
balance11 
,11 
DateTime22 
nextInstallDate22 $
)33 
{44 	
Id55 
=55 
id55 
;55 
Balance66 
=66 
balance66 
;66 
NextInstallDate77 
=77 
nextInstallDate77 -
;77- .
}88 	
	protected99 
Customer99 
(99 
)99 
{99 
}99  
public:: 
Guid:: 
?:: 
ImageId:: 
{:: 
get:: "
;::" #
set::$ '
;::' (
}::) *
[;; 	

ForeignKey;;	 
(;; 
$str;; 
);; 
];; 
public<< 

Attachment<< 
Image<< 
{<<  !
get<<" %
;<<% &
set<<' *
;<<* +
}<<, -
[== 	
Column==	 
(== 
TypeName== 
=== 
$str== *
)==* +
]==+ ,
public>> 
string>> 

NationalId>>  
{>>! "
get>># &
;>>& '
set>>( +
;>>+ ,
}>>- .
public?? 
string?? 
RefId?? 
{?? 
get?? !
;??! "
set??# &
;??& '
}??( )
[@@ 	
Column@@	 
(@@ 
TypeName@@ 
=@@ 
$str@@ *
)@@* +
]@@+ ,
publicAA 
stringAA 
NotesAA 
{AA 
getAA !
;AA! "
setAA# &
;AA& '
}AA( )
[BB 	
ColumnBB	 
(BB 
TypeNameBB 
=BB 
$strBB *
)BB* +
]BB+ ,
publicCC 
stringCC 
ReviewCC 
{CC 
getCC "
;CC" #
setCC$ '
;CC' (
}CC) *
[EE 	
ColumnEE	 
(EE 
TypeNameEE 
=EE 
$strEE *
)EE* +
]EE+ ,
publicFF 
stringFF 
NameFF 
{FF 
getFF  
;FF  !
setFF" %
;FF% &
}FF' (
[HH 	
ColumnHH	 
(HH 
TypeNameHH 
=HH 
$strHH *
)HH* +
]HH+ ,
publicII 
stringII 
EmailII 
{II 
getII !
;II! "
setII# &
;II& '
}II( )
publicKK 
DateTimeKK 
	BirthDateKK !
{KK" #
getKK$ '
;KK' (
setKK) ,
;KK, -
}KK. /
[MM 	
ColumnMM	 
(MM 
TypeNameMM 
=MM 
$strMM *
)MM* +
]MM+ ,
publicNN 
stringNN 
MobileNN 
{NN 
getNN "
;NN" #
setNN$ '
;NN' (
}NN) *
[PP 	
ColumnPP	 
(PP 
TypeNamePP 
=PP 
$strPP *
)PP* +
]PP+ ,
publicQQ 
stringQQ 
Mobile2QQ 
{QQ 
getQQ  #
;QQ# $
setQQ% (
;QQ( )
}QQ* +
[SS 	
ColumnSS	 
(SS 
TypeNameSS 
=SS 
$strSS +
)SS+ ,
]SS, -
publicTT 
stringTT 
AddressTT 
{TT 
getTT  #
;TT# $
setTT% (
;TT( )
}TT* +
publicVV 
stringVV 
TypeVV 
{VV 
getVV  
;VV  !
setVV" %
;VV% &
}VV' (
publicWW 
stringWW 
AddRecriptionWW #
{WW$ %
getWW& )
;WW) *
setWW+ .
;WW. /
}WW0 1
publicXX 
decimalXX 
BalanceXX 
{XX  
getXX! $
;XX$ %
privateXX& -
setXX. 1
;XX1 2
}XX3 4
publicYY 
DateTimeYY 
NextInstallDateYY '
{YY( )
getYY* -
;YY- .
privateYY/ 6
setYY7 :
;YY: ;
}YY< =
publicZZ 
ICollectionZZ 
<ZZ 
CustomerAttachmentZZ -
>ZZ- .
AttachmentsZZ/ :
{ZZ; <
getZZ= @
;ZZ@ A
setZZB E
;ZZE F
}ZZG H
=ZZI J
newZZK N
ListZZO S
<ZZS T
CustomerAttachmentZZT f
>ZZf g
(ZZg h
)ZZh i
;ZZi j
publicff 
voidff 
Updateff 
(ff 
Guidgg 
?gg 
imageIdgg 
,gg 
stringgg !
namegg" &
,gg& '
stringgg( .
emailgg/ 4
,gg4 5
DateTimehh 
	birthDatehh 
,hh 
stringhh  &
mobilehh' -
,hh- .
stringhh/ 5
mobile2hh6 =
,hh= >
stringii 
addressii 
,ii 
stringii "
typeii# '
,ii' (
stringii) /
addRecriptionii0 =
,ii= >
stringjj 

nationalIdjj 
,jj 
stringjj %
refIdjj& +
,jj+ ,
stringkk 
noteskk 
,kk 
stringkk 
reviewkk  &
,kk& '
boolkk( ,
showOnWebsitekk- :
,kk: ;
boolkk< @
deletedkkA H
)kkH I
{ll 	
ImageIdmm 
=mm 
imageIdmm 
;mm 
Imagenn 
=nn 
nullnn 
;nn 
Nameoo 
=oo 
nameoo 
;oo 
Emailpp 
=pp 
emailpp 
;pp 
	BirthDateqq 
=qq 
	birthDateqq !
;qq! "
Mobilerr 
=rr 
mobilerr 
;rr 
Mobile2ss 
=ss 
mobile2ss 
;ss 
Addresstt 
=tt 
addresstt 
;tt 
Typeuu 
=uu 
typeuu 
;uu 
AddRecriptionvv 
=vv 
addRecriptionvv )
;vv) *
ShowOnWebsiteww 
=ww 
showOnWebsiteww )
;ww) *

NationalIdxx 
=xx 

nationalIdxx #
;xx# $
RefIdyy 
=yy 
refIdyy 
;yy 
Noteszz 
=zz 
noteszz 
;zz 
Review{{ 
={{ 
review{{ 
;{{ 
Deleted|| 
=|| 
deleted|| 
;|| 
}}} 	
public
ÉÉ 
void
ÉÉ 
Update
ÉÉ 
(
ÉÉ 
decimal
ÉÉ "
balance
ÉÉ# *
,
ÉÉ* +
DateTime
ÉÉ, 4!
nextInstallmentDate
ÉÉ5 H
)
ÉÉH I
{
ÑÑ 	
Balance
ÖÖ 
=
ÖÖ 
balance
ÖÖ 
;
ÖÖ 
NextInstallDate
ÜÜ 
=
ÜÜ !
nextInstallmentDate
ÜÜ 1
;
ÜÜ1 2
}
áá 	
}
àà 
}ââ ©
ZD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Models\CustomerAttachment.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Models		 
{

 
public 

class 
CustomerAttachment #
:$ %
Entity& ,
,, -
IAggregateRoot. <
{ 
public 
Guid 
? 
AttachmentId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Attachment 

Attachment $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
Guid 
? 

CustomerId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Customer 
Customer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
static 
CustomerAttachment (!
GetCustomerAttachment) >
(> ?
Guid? C
attachmentIdD P
,P Q
GuidR V

customerIdW a
)a b
{ 	
return 
new 
CustomerAttachment )
() *
)* +
{ 
AttachmentId 
= 
attachmentId +
,+ ,

CustomerId 
= 

customerId '
} 
; 
} 	
} 
} ª
]D:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Queries\GetAllCustomersQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public 

class  
GetAllCustomersQuery %
:& '
	BaseQuery( 1
{		 
public

 
DateTime

 
?

 
MinBirthDate

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
DateTime 
? 
MaxBirthDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
MinNextInstallDate +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
DateTime 
? 
MaxNextInstallDate +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
decimal 
? 

MinBalance "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
decimal 
? 

MaxBalance "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IncludeAttachments &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public  
GetAllCustomersQuery #
(# $
DateTime 
? 
minBirthDate "
," #
DateTime$ ,
?, -
maxBirthDate. :
,: ;
DateTime 
? 
minNextInstallDate (
,( )
DateTime* 2
?2 3
maxNextInstallDate4 F
,F G
decimal 
? 

minBalance 
,  
decimal! (
?( )

maxBalance* 4
,4 5
bool5 9
includeAttachments: L
,L M
stringN T
createdByIdU `
,` a
string 
tanentId 
, 
bool 
showOnWebsite  -
,- .
bool/ 3
deleted4 ;
); <
{ 	
MinBirthDate 
= 
minBirthDate '
;' (
MaxBirthDate 
= 
maxBirthDate '
;' (
MinNextInstallDate 
=  
minNextInstallDate! 3
;3 4
MaxNextInstallDate 
=  
maxNextInstallDate! 3
;3 4

MinBalance 
= 

minBalance #
;# $

MaxBalance 
= 

maxBalance #
;# $
IncludeAttachments 
=  
includeAttachments! 3
;3 4
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
ShowOnWebsite   
=   
showOnWebsite   )
;  ) *
Deleted!! 
=!! 
deleted!! 
;!! 
}"" 	
}## 
}$$ Ä

XD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Domain\Queries\GetByEmailQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public 

class 
GetByEmailQuery  
:! "
BaseEntityQuery# 2
{		 
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
GetByEmailQuery 
( 
string 
email 
, 
string 
createdById  +
,+ ,
string
 
tanentId 
, 
bool 
showOnWebsite  -
,- .
bool
 
deleted 
) 
{ 	
Email 
= 
email 
; 
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} 