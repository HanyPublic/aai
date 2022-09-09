è
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Commands\AddUpdateTanentCommand.cs
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
class "
AddUpdateTanentCommand '
:( )
TanentCommand* 7
{ 
public "
AddUpdateTanentCommand %
(% &
string& ,
userId- 3
,3 4
string4 :
imageId; B
,B C
stringC I
nameJ N
,N O
stringP V
emailW \
,\ ]
string^ d
mobilee k
,k l
stringm s
addresst {
,{ |
string	} É
currency
Ñ å
,
å ç
int
é ë

monthCount
í ú
,
ú ù
decimal
û •

perecntage
¶ ∞
,
∞ ±
string
≤ ∏
logo
π Ω
,
Ω æ
string
ø ≈
colors
∆ Ã
,
Ã Õ
string
Œ ‘
note
’ Ÿ
,
Ÿ ⁄
string
€ ·
signatureArray
‚ 
,
 Ò
string
Ú ¯
stampAttachment
˘ à
)
à â
{		 	
ImageId

 
=

 
imageId

 
;

 
UserId 
= 
userId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
Mobile 
= 
mobile 
; 
Address 
= 
address 
; 
Currency 
= 
currency 
;  

MonthCount 
= 

monthCount #
;# $

Perecntage 
= 

perecntage #
;# $
Logo 
= 
logo 
; 
Colors 
= 
colors 
; 
Note 
= 
note 
; 
SignatureArray 
= 
signatureArray +
;+ ,
StampAttachment 
= 
stampAttachment -
;- .
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new ",
 AddUpdateTanentCommandValidation# C
(C D
)D E
.E F
ValidateF N
(N O
thisO S
)S T
;T U
return   
ValidationResult   #
.  # $
IsValid  $ +
;  + ,
}!! 	
}"" 
}## 
\D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Commands\TanentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public		 

abstract		 
class		 
TanentCommand		 '
:		( )
Command		* 1
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
public 
string 
ImageId 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
UserId 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Name 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Email 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
string 
Mobile 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Address 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Currency 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
int 

MonthCount 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
decimal 

Perecntage !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
Logo 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Colors 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Note 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
SignatureArray $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
StampAttachment %
{& '
get( +
;+ ,
	protected- 6
set7 :
;: ;
}< =
} 
} ◊
{D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Commands\Validations\AddUpdateTanentCommandValidation.cs
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
class ,
 AddUpdateTanentCommandValidation 1
:2 3
TanentValidation4 D
<D E"
AddUpdateTanentCommandE [
>[ \
{ 
public ,
 AddUpdateTanentCommandValidation /
(/ 0
)0 1
{ 	
ValidateName 
( 
) 
; 
} 	
} 
} •
kD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Commands\Validations\TanentValidation.cs
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
TanentValidation *
<* +
T+ ,
>, -
:. /
AbstractValidator0 A
<A B
TB C
>C D
whereE J
TK L
:M N
TanentCommandO \
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
ValidatePerecntage )
() *
)* +
{ 	
RuleFor 
( 
c 
=> 
c 
. 

Perecntage %
)% &
. 
NotEmpty 
( 
) 
; 
} 	
	protected 
void 
ValidateMonthCount )
() *
)* +
{ 	
RuleFor 
( 
c 
=> 
c 
. 

MonthCount %
)% &
. 
NotEmpty 
( 
) 
; 
} 	
	protected 
void 

ValidateId !
(! "
)" #
{ 	
RuleFor 
( 
c 
=> 
c 
. 
Id 
) 
. 
NotEqual 
( 
Guid 
. 
Empty $
)$ %
;% &
} 	
}"" 
}## Ê
XD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Events\TanentEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Tanents 
.  
Events  &
{ 
public 

abstract 
class 
TanentEvent %
:% &
Event& +
{ 
public 
Guid 
? 
ImageId 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Email 
{ 
get !
;! "
	protected# ,
set- 0
;0 1
}2 3
public 
string 
Mobile 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Address 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
string 
Currency 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
int 

MonthCount 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
decimal 

Perecntage !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
Logo 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Colors 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
string 
Note 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
SignatureArray $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
StampAttachment %
{& '
get( +
;+ ,
	protected- 6
set7 :
;: ;
}< =
} 
} ß
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Events\TanentEventHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public

 

class

 
TanentEventHandler

 #
:

$ % 
INotificationHandler 
< !
TanentRegisteredEvent 2
>2 3
,3 4 
INotificationHandler 
< 
TanentUpdatedEvent /
>/ 0
,0 1 
INotificationHandler 
< 
TanentRemovedEvent /
>/ 0
{ 
public 
Task 
Handle 
( 
TanentUpdatedEvent -
message. 5
,5 6
CancellationToken7 H
cancellationTokenI Z
)Z [
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( !
TanentRegisteredEvent 0
message1 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( 
TanentRemovedEvent -
message. 5
,5 6
CancellationToken7 H
cancellationTokenI Z
)Z [
{ 	
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ Í
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Events\TanentRegisteredEvent.cs
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
class !
TanentRegisteredEvent &
:' (
TanentEvent( 3
{ 
public		 !
TanentRegisteredEvent		 $
(		$ %
Guid		% )
id		* ,
,		, -
Guid		- 1
?		1 2
imageId		3 :
,		; <
string		< B
name		C G
,		G H
string		I O
email		P U
,		U V
string		W ]
mobile		^ d
,		d e
string		f l
address		m t
,		t u
string		v |
currency			} Ö
,
		Ö Ü
int
		á ä

monthCount
		ã ï
,
		ï ñ
decimal
		ó û

perecntage
		ü ©
,
		© ™
string
		´ ±
logo
		≤ ∂
,
		∂ ∑
string
		∏ æ
colors
		ø ≈
,
		≈ ∆
string
		« Õ
note
		Œ “
,
		“ ”
string
		‘ ⁄
signatureArray
		€ È
,
		È Í
string
		Î Ò
stampAttachment
		Ú Å
)
		Å Ç
{

 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
Mobile 
= 
mobile 
; 
Address 
= 
address 
; 
Currency 
= 
currency 
;  

MonthCount 
= 

monthCount #
;# $

Perecntage 
= 

perecntage #
;# $
Logo 
= 
logo 
; 
Colors 
= 
colors 
; 
Note 
= 
note 
; 
SignatureArray 
= 
signatureArray +
;+ ,
StampAttachment 
= 
stampAttachment -
;- .
} 	
} 
} ú
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Events\TanentRemovedEvent.cs
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
TanentRemovedEvent #
:$ %
Event& +
{ 
public 
TanentRemovedEvent !
(! "
Guid" &
id' )
)) *
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
} ·
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Events\TanentUpdatedEvent.cs
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
TanentUpdatedEvent #
:$ %
TanentEvent& 1
{ 
public		 
TanentUpdatedEvent		 !
(		! "
Guid		" &
id		' )
,		) *
Guid		* .
?		. /
imageId		0 7
,		7 8
string		9 ?
name		@ D
,		D E
string		F L
email		M R
,		R S
string		T Z
mobile		[ a
,		a b
string		c i
address		j q
,		q r
string		s y
currency			z Ç
,
		Ç É
int
		Ñ á

monthCount
		à í
,
		í ì
decimal
		î õ

perecntage
		ú ¶
,
		¶ ß
string
		® Æ
logo
		Ø ≥
,
		≥ ¥
string
		µ ª
colors
		º ¬
,
		¬ √
string
		ƒ  
note
		À œ
,
		œ –
string
		— ◊
signatureArray
		ÿ Ê
,
		Ê Á
string
		Ë Ó
stampAttachment
		Ô ˛
)
		˛ ˇ
{

 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
Mobile 
= 
mobile 
; 
Address 
= 
address 
; 
Currency 
= 
currency 
;  

MonthCount 
= 

monthCount #
;# $

Perecntage 
= 

perecntage #
;# $
Logo 
= 
logo 
; 
Colors 
= 
colors 
; 
Note 
= 
note 
; 
SignatureArray 
= 
signatureArray +
;+ ,
StampAttachment 
= 
stampAttachment -
;- .
} 	
} 
} üQ
dD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Handlers\TanentCommandsHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Tanents 
.  
Handlers  (
{ 
public 

class !
TanentCommandsHandler &
:' (
CommandHandler) 7
,7 8
IRequestHandler 
< 
GetTanentByIdQuery *
,* +
Tanent, 2
>2 3
,3 4
IRequestHandler 
< "
AddUpdateTanentCommand .
,. /
ValidationResult0 @
>@ A
{ 
private 
readonly 
ITanentRepository *
_TanentRepository+ <
;< =
public !
TanentCommandsHandler $
($ %
ITanentRepository% 6
TanentRepository7 G
)G H
{ 	
_TanentRepository 
= 
TanentRepository  0
;0 1
} 	
public%% 
async%% 
Task%% 
<%% 
Tanent%%  
>%%  !
Handle%%" (
(%%( )
GetTanentByIdQuery%%) ;
request%%< C
,%%C D
CancellationToken%%E V
cancellationToken%%W h
)%%h i
{&& 	
return'' 
await'' 
_TanentRepository'' *
.''* +
GetByUserId''+ 6
(''6 7
request''7 >
.''> ?
UserId''? E
)''E F
;''F G
}(( 	
public// 
async// 
Task// 
<// 
ValidationResult// *
>//* +
Handle//, 2
(//2 3"
AddUpdateTanentCommand//3 I
message//J Q
,//Q R
CancellationToken//S d
cancellationToken//e v
)//v w
{00 	
if11 
(11 
!11 
message11 
.11 
IsValid11  
(11  !
)11! "
)11" #
return11$ *
message11+ 2
.112 3
ValidationResult113 C
;11C D
Guid22 
?22 
imageId22 
=22 
null22  
;22  !
if33 
(33 
!33 
string33 
.33 
IsNullOrEmpty33 %
(33% &
message33& -
.33- .
ImageId33. 5
)335 6
)336 7
imageId338 ?
=33@ A
Guid33B F
.33F G
Parse33G L
(33L M
message33M T
.33T U
ImageId33U \
)33\ ]
;33] ^
var44 
currentTanent44 
=44 
await44  %
_TanentRepository44& 7
.447 8
GetByUserId448 C
(44C D
message44D K
.44K L
UserId44L R
)44R S
;44S T
if55 
(55 
currentTanent55 
!=55  
null55! %
)55% &
{66 
currentTanent77 
.77 
Update77 $
(77$ %
name88 
:88 
message88  
.88  !
Name88! %
,88% &
imageId88' .
:88. /
imageId880 7
,887 8
email889 >
:88> ?
message88@ G
.88G H
Email88H M
,88M N
mobile99 
:99 
message99 "
.99" #
Mobile99# )
,99) *
address99+ 2
:992 3
message994 ;
.99; <
Address99< C
,99C D
currency99E M
:99M N
message99O V
.99V W
Currency99W _
,99_ `

monthCount:: 
::: 
message:: &
.::& '

MonthCount::' 1
,::1 2

perecntage::3 =
:::= >
message::? F
.::F G

Perecntage::G Q
,::Q R
logo::S W
:::W X
message::Y `
.::` a
Logo::a e
,::e f
colors;; 
:;; 
message;; "
.;;" #
Colors;;# )
,;;) *
note;;+ /
:;;/ 0
message;;1 8
.;;8 9
Note;;9 =
,;;= >
signatureArray;;? M
:;;M N
message;;O V
.;;V W
SignatureArray;;W e
,;;e f
stampAttachment<< "
:<<" #
message<<$ +
.<<+ ,
StampAttachment<<, ;
)<<; <
;<<< =
currentTanent>> 
.>> 
AddDomainEvent>> ,
(>>, -
new>>- 0
TanentUpdatedEvent>>1 C
(>>C D
id?? 
:?? 
currentTanent?? %
.??% &
Id??& (
,??( )
currentTanent??* 7
.??7 8
ImageId??8 ?
,??? @
name@@ 
:@@ 
currentTanent@@ '
.@@' (
Name@@( ,
,@@, -
email@@. 3
:@@3 4
currentTanent@@5 B
.@@B C
Email@@C H
,@@H I
mobile@@J P
:@@P Q
currentTanent@@R _
.@@_ `
Mobile@@` f
,@@f g
addressAA 
:AA 
currentTanentAA *
.AA* +
AddressAA+ 2
,AA2 3
currencyAA4 <
:AA< =
currentTanentAA> K
.AAK L
CurrencyAAL T
,AAT U

monthCountAAV `
:AA` a
currentTanentAAb o
.AAo p

MonthCountAAp z
,AAz {

perecntageBB 
:BB 
currentTanentBB  -
.BB- .

PerecntageBB. 8
,BB8 9
logoBB: >
:BB> ?
currentTanentBB@ M
.BBM N
LogoBBN R
,BBR S
colorsBBT Z
:BBZ [
currentTanentBB\ i
.BBi j
ColorsBBj p
,BBp q
noteCC 
:CC 
currentTanentCC '
.CC' (
NoteCC( ,
,CC, -
signatureArrayCC. <
:CC< =
currentTanentCC> K
.CCK L
SignatureArrayCCL Z
,CCZ [
stampAttachmentCC\ k
:CCk l
currentTanentCCm z
.CCz {
StampAttachment	CC{ ä
)EE 
)EE 
;EE 
_TanentRepositoryFF !
.FF! "
UpdateFF" (
(FF( )
currentTanentFF) 6
)FF6 7
;FF7 8
}GG 
elseHH 
{II 
varJJ 
tanentJJ 
=JJ 
newJJ  
TanentJJ! '
(JJ' (
idKK 
:KK 
GuidKK 
.KK 
NewGuidKK 
(KK 
)KK  
,KK  !
imageIdKK" )
,KK) *
userIdKK+ 1
:KK1 2
messageKK3 :
.KK: ;
UserIdKK; A
,KKA B
nameLL 
:LL 
messageLL 
.LL 
NameLL  
,LL  !
emailLL" '
:LL' (
messageLL) 0
.LL0 1
EmailLL1 6
,LL6 7
mobileLL8 >
:LL> ?
messageLL@ G
.LLG H
MobileLLH N
,LLN O
addressMM 
:MM 
messageMM 
.MM 
AddressMM &
,MM& '
currencyMM( 0
:MM0 1
messageMM2 9
.MM9 :
CurrencyMM: B
,MMB C

monthCountMMD N
:MMN O
messageMMP W
.MMW X

MonthCountMMX b
,MMb c

perecntageNN 
:NN 
messageNN !
.NN! "

PerecntageNN" ,
,NN, -
logoNN. 2
:NN2 3
messageNN4 ;
.NN; <
LogoNN< @
,NN@ A
colorsNNB H
:NNH I
messageNNJ Q
.NNQ R
ColorsNNR X
,NNX Y
noteOO 
:OO 
messageOO 
.OO 
NoteOO  
,OO  !
signatureArrayOO" 0
:OO0 1
messageOO2 9
.OO9 :
SignatureArrayOO: H
,OOH I
stampAttachmentOOJ Y
:OOY Z
messageOO[ b
.OOb c
StampAttachmentOOc r
)PP 
;PP 
tanentRR 
.RR 
AddDomainEventRR %
(RR% &
newRR& )!
TanentRegisteredEventRR* ?
(RR? @
idSS 
:SS 
tanentSS 
.SS 
IdSS !
,SS! "
tanentSS# )
.SS) *
ImageIdSS* 1
,SS1 2
nameTT 
:TT 
tanentTT  
.TT  !
NameTT! %
,TT% &
emailTT' ,
:TT, -
tanentTT. 4
.TT4 5
EmailTT5 :
,TT: ;
mobileTT< B
:TTB C
tanentTTD J
.TTJ K
MobileTTK Q
,TTQ R
addressUU 
:UU 
tanentUU #
.UU# $
AddressUU$ +
,UU+ ,
currencyUU- 5
:UU5 6
tanentUU7 =
.UU= >
CurrencyUU> F
,UUF G

monthCountUUH R
:UUR S
tanentUUT Z
.UUZ [

MonthCountUU[ e
,UUe f

perecntageVV 
:VV 
tanentVV  &
.VV& '

PerecntageVV' 1
,VV1 2
logoVV3 7
:VV7 8
tanentVV9 ?
.VV? @
LogoVV@ D
,VVD E
colorsVVF L
:VVL M
tanentVVN T
.VVT U
ColorsVVU [
,VV[ \
noteWW 
:WW 
tanentWW  
.WW  !
NoteWW! %
,WW% &
signatureArrayWW' 5
:WW5 6
tanentWW7 =
.WW= >
SignatureArrayWW> L
,WWL M
stampAttachmentWWN ]
:WW] ^
tanentWW_ e
.WWe f
StampAttachmentWWf u
)XX 
)XX 
;XX 
_TanentRepositoryYY !
.YY! "
AddYY" %
(YY% &
tanentYY& ,
)YY, -
;YY- .
}ZZ 
return^^ 
await^^ 
Commit^^ 
(^^  
_TanentRepository^^  1
.^^1 2

UnitOfWork^^2 <
)^^< =
;^^= >
}__ 	
publiccc 
voidcc 
Disposecc 
(cc 
)cc 
{dd 	
_TanentRepositoryee 
.ee 
Disposeee %
(ee% &
)ee& '
;ee' (
}ff 	
}gg 
}hh “
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Interfaces\ITanentRepository.cs
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
ITanentRepository &
:' (
IRepository) 4
<4 5
Tanent5 ;
>; <
{ 
Task 
< 
Tanent 
> 
GetByUserId  
(  !
string! '
userId( .
). /
;/ 0
Task 
< 
	PagedList 
< 
Tanent 
> 
> 
GetAll  &
(& '
GetAllTanentsQuery' 9
getAllTanentsQuery: L
)L M
;M N
void 
Add 
( 
Tanent 
Tanent 
) 
;  
void 
Update 
( 
Tanent 
Tanent !
)! "
;" #
} 
} ‚A
SD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Models\Tanent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Models 
{ 
public		 

class		 
Tanent		 
:		 
Entity		  
,		  !
IAggregateRoot		" 0
{

 
public 
Tanent 
( 
Guid 
id 
, 
Guid #
?# $
imageId% ,
,, -
string. 4
userId5 ;
,; <
string= C
nameD H
,H I
stringJ P
emailQ V
,V W
stringX ^
mobile_ e
,e f
stringg m
addressn u
,u v
stringw }
currency	~ Ü
,
Ü á
int
à ã

monthCount
å ñ
,
ñ ó
decimal
ò ü

perecntage
† ™
,
™ ´
string
¨ ≤
logo
≥ ∑
,
∑ ∏
string
π ø
colors
¿ ∆
,
∆ «
string
» Œ
note
œ ”
,
” ‘
string
’ €
signatureArray
‹ Í
,
Í Î
string
Ï Ú
stampAttachment
Û Ç
)
Ç É
{ 	
Id 
= 
id 
; 
ImageId 
= 
imageId 
; 
UserId 
= 
userId 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
Mobile 
= 
mobile 
; 
Address 
= 
address 
; 
Currency 
= 
currency 
;  

MonthCount 
= 

monthCount #
;# $

Perecntage 
= 

perecntage #
;# $
Logo 
= 
logo 
; 
Colors 
= 
colors 
; 
Note 
= 
note 
; 
SignatureArray 
= 
signatureArray +
;+ ,
StampAttachment 
= 
stampAttachment -
;- .
} 	
	protected   
Tanent   
(   
)   
{   
}   
public!! 
Guid!! 
?!! 
ImageId!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
["" 	

ForeignKey""	 
("" 
$str"" 
)"" 
]"" 
public## 

Attachment## 
Image## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
[$$ 	
Column$$	 
($$ 
TypeName$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
Name%% 
{%% 
get%%  
;%%  !
private%%" )
set%%* -
;%%- .
}%%/ 0
[&& 	
Column&&	 
(&& 
TypeName&& 
=&& 
$str&& *
)&&* +
]&&+ ,
public'' 
string'' 
Email'' 
{'' 
get'' !
;''! "
private''# *
set''+ .
;''. /
}''0 1
[(( 	
Column((	 
((( 
TypeName(( 
=(( 
$str(( *
)((* +
]((+ ,
public)) 
string)) 
Mobile)) 
{)) 
get)) "
;))" #
private))$ +
set)), /
;))/ 0
}))1 2
[** 	
Column**	 
(** 
TypeName** 
=** 
$str** +
)**+ ,
]**, -
public++ 
string++ 
Address++ 
{++ 
get++  #
;++# $
private++% ,
set++- 0
;++0 1
}++2 3
[,, 	
Column,,	 
(,, 
TypeName,, 
=,, 
$str,, )
),,) *
],,* +
public-- 
string-- 
Currency-- 
{--  
get--! $
;--$ %
private--& -
set--. 1
;--1 2
}--3 4
public.. 
int.. 

MonthCount.. 
{.. 
get..  #
;..# $
private..% ,
set..- 0
;..0 1
}..2 3
public// 
decimal// 

Perecntage// !
{//" #
get//$ '
;//' (
private//) 0
set//1 4
;//4 5
}//6 7
public00 
string00 
Logo00 
{00 
get00  
;00  !
private00" )
set00* -
;00- .
}00/ 0
public11 
string11 
Colors11 
{11 
get11 "
;11" #
private11$ +
set11, /
;11/ 0
}111 2
[22 	
Column22	 
(22 
TypeName22 
=22 
$str22 +
)22+ ,
]22, -
public33 
string33 
Note33 
{33 
get33  
;33  !
private33" )
set33* -
;33- .
}33/ 0
[44 	
Column44	 
(44 
TypeName44 
=44 
$str44 +
)44+ ,
]44, -
public55 
string55 
SignatureArray55 $
{55% &
get55' *
;55* +
private55, 3
set554 7
;557 8
}559 :
public66 
string66 
StampAttachment66 %
{66& '
get66( +
;66+ ,
private66- 4
set665 8
;668 9
}66: ;
[77 	

ForeignKey77	 
(77 
$str77 
)77 
]77 
public88 
IdentityUser88 
User88  
{88! "
get88# &
;88& '
private88( /
set880 3
;883 4
}885 6
public99 
string99 
UserId99 
{99 
get99 "
;99" #
private99$ +
set99, /
;99/ 0
}991 2
public;; 
void;; 
Update;; 
(;; 
string;; !
name;;" &
,;;& '
Guid;;' +
?;;+ ,
imageId;;- 4
,;;5 6
string;;6 <
email;;= B
,;;B C
string;;D J
mobile;;K Q
,;;Q R
string;;S Y
address;;Z a
,;;a b
string;;c i
currency;;j r
,;;r s
int;;t w

monthCount	;;x Ç
,
;;Ç É
decimal
;;Ñ ã

perecntage
;;å ñ
,
;;ñ ó
string
;;ò û
logo
;;ü £
,
;;£ §
string
;;• ´
colors
;;¨ ≤
,
;;≤ ≥
string
;;¥ ∫
note
;;ª ø
,
;;ø ¿
string
;;¡ «
signatureArray
;;» ÷
,
;;÷ ◊
string
;;ÿ ﬁ
stampAttachment
;;ﬂ Ó
)
;;Ó Ô
{<< 	
ImageId== 
=== 
imageId== 
;== 
Image>> 
=>> 
null>> 
;>> 
Name?? 
=?? 
name?? 
;?? 
Email@@ 
=@@ 
email@@ 
;@@ 
MobileAA 
=AA 
mobileAA 
;AA 
AddressBB 
=BB 
addressBB 
;BB 
CurrencyCC 
=CC 
currencyCC 
;CC  

MonthCountDD 
=DD 

monthCountDD #
;DD# $

PerecntageEE 
=EE 

perecntageEE #
;EE# $
LogoFF 
=FF 
logoFF 
;FF 
ColorsGG 
=GG 
colorsGG 
;GG 
NoteHH 
=HH 
noteHH 
;HH 
SignatureArrayII 
=II 
signatureArrayII +
;II+ ,
StampAttachmentJJ 
=JJ 
stampAttachmentJJ -
;JJ- .
}KK 	
}LL 
}MM †
`D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Queries\GetAllTanentsQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{		 
public

 

class

 
GetAllTanentsQuery

 #
:

$ %
	BaseQuery

& /
,

/ 0
IRequest

1 9
<

9 :
	PagedList

: C
<

C D
Tanent

D J
>

J K
>

K L
{ 
public 
int 
? 
MinMonthCount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
MaxMonthCount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
? 
MinPerecntage %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
? 
MaxPerecntage %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
GetAllTanentsQuery !
(! "
int 
? 
minMonthCount 
, 
int  #
?# $
maxMonthCount% 2
,2 3
decimal 
? 
minPerecntage "
," #
decimal$ +
?+ ,
maxPerecntage- :
): ;
{ 	
MinMonthCount 
= 
minMonthCount )
;) *
MaxMonthCount 
= 
maxMonthCount )
;) *
MinPerecntage 
= 
minPerecntage )
;) *
MaxPerecntage 
= 
maxPerecntage )
;) *
} 	
} 
} €
`D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Settings\Queries\GetTanentByIdQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Tanents 
.  
Queries  '
{ 
public		 

class		 
GetTanentByIdQuery		 #
:		# $
IRequest		$ ,
<		, -
Tanent		- 3
>		3 4
{

 
public 
GetTanentByIdQuery !
(! "
string" (
userId) /
)/ 0
{ 	
UserId 
= 
userId 
; 
} 	
public 
string 
UserId 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
} 
} 