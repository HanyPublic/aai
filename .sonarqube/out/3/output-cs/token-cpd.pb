¶
fD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\AddAttachmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
{ 
public		 

class		  
AddAttachmentCommand		 %
:		& '
AttachmentCommand		( 9
{

 
public  
AddAttachmentCommand #
(# $
Guid 
id 
, 
string 
description 
, 
string 
systemFileName !
,! "
string 
sourceFileName !
,! "
string 
fileExtension  
,  !
string 
createdById 
, 
string 
tanentId 
, 
DateTime 
	createdAt 
, 
bool 
showOnWebsite 
, 
bool 
deleted 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
Description 
= 
description %
;% &
SystemFileName 
= 
systemFileName +
;+ ,
SourceFileName 
= 
sourceFileName +
;+ ,
FileExtension 
= 
fileExtension )
;) *
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite   
=   
showOnWebsite   )
;  ) *
Deleted!! 
=!! 
deleted!! 
;!! 
}"" 	
public## 
override## 
bool## 
IsValid## $
(##$ %
)##% &
{$$ 	
ValidationResult%% 
=%% 
new%% "*
AddAttachmentCommandValidation%%# A
(%%A B
)%%B C
.%%C D
Validate%%D L
(%%L M
this%%M Q
)%%Q R
;%%R S
return&& 
base&& 
.&& 
IsValid&& 
(&&  
)&&  !
;&&! "
}'' 	
}(( 
})) ë
cD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\AttachmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
{		 
public

 

class

 
AttachmentCommand

 "
:

" #
BaseEntityCommand

# 4
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 
Type 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Description !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
URL 
{ 
get 
;  
	protected! *
set+ .
;. /
}0 1
public 
string 
SystemFileName $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
SourceFileName $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
SeoFileName !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
	SubFolder 
{  !
get" %
;% &
	protected' 0
set1 4
;4 5
}6 7
public 
string 
FileExtension #
{$ %
get& )
;) *
	protected+ 4
set5 8
;8 9
}: ;
public 
int 
MediaTypeId 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
string 
ThumbURL 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
string 
Tags 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
} 
} Ù
pD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\RemoveRestoreAttachmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
{ 
public 

class *
RemoveRestoreAttachmentCommand /
:0 1
AttachmentCommand2 C
{		 
public

 
bool

 
Delete

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public *
RemoveRestoreAttachmentCommand -
(- .
Guid 
id 
, 
bool 
delete 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
Delete 
= 
delete 
; 
} 	
public 
override 
bool 
IsValid $
($ %
)% &
{ 	
ValidationResult 
= 
new "4
(RemoveRestoreAttachmentCommandValidation# K
(K L
)L M
.M N
ValidateN V
(V W
thisW [
)[ \
;\ ]
return 
base 
. 
IsValid 
(  
)  !
;! "
} 	
} 
} í	
uD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\RemoveRestoreListAttachmentsCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
{ 
public		 

class		 /
#RemoveRestoreListAttachmentsCommand		 4
:		4 5
BaseEntityCommand		6 G
{

 
public 
List 
< *
RemoveRestoreAttachmentCommand 2
>2 3+
RemoveRestoreAttachmentCommands4 S
;S T
public 
bool 
Delete 
; 
public /
#RemoveRestoreListAttachmentsCommand 2
(2 3
List3 7
<7 8*
RemoveRestoreAttachmentCommand8 V
>V W
commandsX `
,` a
boola e
deletef l
)l m
{ 	+
RemoveRestoreAttachmentCommands +
=, -
commands. 6
;6 7
Delete 
= 
delete 
; 
} 	
} 
} ß
kD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\SaveAllAttachmentsCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
{ 
public 

class %
SaveAllAttachmentsCommand *
:* +
Command+ 2
{		 
public

 %
SaveAllAttachmentsCommand

 (
(

( )
)

) *
{ 	
} 	
} 
} ª
|D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\Validations\AddAttachmentCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
., -
Validations- 8
{ 
public 

class *
AddAttachmentCommandValidation /
:/ 0'
AttachmentCommandValidation0 K
<K L
AttachmentCommandL ]
>] ^
{		 
public

 *
AddAttachmentCommandValidation

 -
(

- .
)

. /
{ 	
} 	
} 
} ç	
yD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\Validations\AttachmentCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
., -
Validations- 8
{ 
public		 

abstract		 
class		 '
AttachmentCommandValidation		 5
<		5 6
T		6 7
>		7 8
:		8 9
AbstractValidator		9 J
<		J K
T		K L
>		L M
where		N S
T		T U
:		U V
AttachmentCommand		W h
{

 
	protected 
void 

ValidateId !
(! "
)" #
{ 	
RuleFor 
( 
a 
=> 
a 
. 
Id 
) 
. 
NotEqual '
(' (
Guid( ,
., -
Empty- 2
)2 3
.3 4
WithMessage4 ?
(? @
$str@ Q
)Q R
;R S
} 	
} 
} ü
ÜD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Commands\Validations\RemoveRestoreAttachmentCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Commands$ ,
., -
Validations- 8
{ 
public 

class 4
(RemoveRestoreAttachmentCommandValidation 9
:9 :'
AttachmentCommandValidation: U
<U V
AttachmentCommandV g
>g h
{		 
public

 4
(RemoveRestoreAttachmentCommandValidation

 7
(

7 8
)

8 9
{ 	

ValidateId 
( 
) 
; 
} 	
} 
} ∞
dD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Events\AttachmentAddedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Events$ *
{		 
public

 

class

  
AttachmentAddedEvent

 %
:

& '
AttachmentEvent

( 7
{ 
public  
AttachmentAddedEvent #
(# $
Guid 
id 
, 
string 
type 
, 
string 
description 
, 
string 
url 
, 
string 
systemFileName !
,! "
string 
sourceFileName !
,! "
string 
seoFileName 
, 
string 
	subFolder 
, 
string 
fileExtension  
,  !
int 
mediaTypeId 
, 
string 
thumbUrl 
, 
string 
tags 
, 
string 
createdById 
, 
string 
tanentId 
, 
DateTime 
	createdAt 
, 
bool 
showOnWebsite 
, 
bool 
deleted 
) 
{ 	
Id 
= 
id 
; 
AggregateId   
=   
id   
;   
Type!! 
=!! 
type!! 
;!! 
Description"" 
="" 
description"" %
;""% &
URL## 
=## 
url## 
;## 
SystemFileName$$ 
=$$ 
systemFileName$$ +
;$$+ ,
SourceFileName%% 
=%% 
sourceFileName%% +
;%%+ ,
SeoFileName&& 
=&& 
seoFileName&& %
;&&% &
	SubFolder'' 
='' 
	subFolder'' !
;''! "
FileExtension(( 
=(( 
fileExtension(( )
;(() *
MediaTypeId)) 
=)) 
mediaTypeId)) %
;))% &
ThumbURL** 
=** 
thumbUrl** 
;**  
Tags++ 
=++ 
tags++ 
;++ 
CreatedById,, 
=,, 
createdById,, %
;,,% &
TanentId-- 
=-- 
tanentId-- 
;--  
	CreatedAt.. 
=.. 
	createdAt.. !
;..! "
ShowOnWebsite// 
=// 
showOnWebsite// )
;//) *
Deleted00 
=00 
deleted00 
;00 
}11 	
}22 
}33 ù
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Events\AttachmentEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Events$ *
{		 
public

 

abstract

 
class

 
AttachmentEvent

 )
:

) *
BaseEntityEvent

* 9
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 
Type 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
string 
Description !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
URL 
{ 
get 
;  
	protected! *
set+ .
;. /
}0 1
public 
string 
SystemFileName $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
SourceFileName $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
public 
string 
SeoFileName !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
	SubFolder 
{  !
get" %
;% &
	protected' 0
set1 4
;4 5
}6 7
public 
string 
FileExtension #
{$ %
get& )
;) *
	protected+ 4
set5 8
;8 9
}: ;
public 
int 
MediaTypeId 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
string 
ThumbURL 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
string 
Tags 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
} 
} ›
fD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Events\AttachmentRemovedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Events$ *
{ 
public		 

class		 "
AttachmentRemovedEvent		 '
:		' (
BaseEntityEvent		) 8
{

 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Delete 
{ 
get  
;  !
set" %
;% &
}' (
public "
AttachmentRemovedEvent %
(% &
Guid 
id 
, 
string 
createdById 
, 
string 
tanentId 
, 
DateTime 
	createdAt 
, 
bool 
showOnWebsite 
, 
bool 
delete 
, 
bool 
deleted 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
Deleted 
= 
deleted 
; 
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Delete 
= 
delete 
; 
Deleted 
= 
deleted 
; 
} 	
}   
}!! ò
gD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Events\AttachmentRestoredEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Events$ *
{ 
public		 

class		 #
AttachmentRestoredEvent		 (
:		( )
BaseEntityEvent		* 9
{

 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Delete 
{ 
get  
;  !
set" %
;% &
}' (
public #
AttachmentRestoredEvent &
(& '
Guid 
id 
, 
string 
createdById 
, 
string 
tanentId 
, 
DateTime 
	createdAt 
, 
bool 
showOnWebsite 
, 
bool 
deleted 
, 
bool 
delete 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
Delete 
= 
delete 
; 
} 	
} 
}   —n
kD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Handlers\AttachmentCommandsHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Handlers$ ,
{ 
public 

class %
AttachmentCommandsHandler *
:+ ,
CommandHandler 
, 
IRequestHandler 
<  
AddAttachmentCommand ,
,, -
ValidationResult. >
>> ?
,? @
IRequestHandler 
< *
RemoveRestoreAttachmentCommand 6
,6 7
ValidationResult8 H
>H I
,I J
IRequestHandler 
< /
#RemoveRestoreListAttachmentsCommand ;
,; <
ValidationResult= M
>M N
,N O
IRequestHandler 
< %
SaveAllAttachmentsCommand 1
,1 2
ValidationResult3 C
>C D
,D E
IRequestHandler 
< 
GetAttachmentQuery *
,* +

Attachment, 6
>6 7
,7 8
IRequestHandler 
< "
GetAllAttachmentsQuery .
,. /
	PagedList0 9
<9 :

Attachment: D
>D E
>E F
{ 
private 
readonly !
IAttachmentRepository .
_repository/ :
;: ;
public %
AttachmentCommandsHandler (
(( )!
IAttachmentRepository) > 
attachmentRepository? S
)S T
{ 	
_repository 
=  
attachmentRepository .
;. /
} 	
public   
async   
Task   
<   
ValidationResult   *
>  * +
Handle  , 2
(  2 3 
AddAttachmentCommand  3 G
request  H O
,  O P
CancellationToken  Q b
cancellationToken  c t
)  t u
{!! 	
if"" 
("" 
!"" 
request"" 
."" 
ValidationResult"" )
."") *
IsValid""* 1
)""1 2
return""3 9
request"": A
.""A B
ValidationResult""B R
;""R S
var## 

attachment## 
=## 
new##  

Attachment##! +
(##+ ,
id$$ 
:$$ 
request$$ 
.$$ 
Id$$ 
,$$ 
type%% 
:%% 
request%% 
.%% 
Type%% "
,%%" #
description%%$ /
:%%/ 0
request%%1 8
.%%8 9
Description%%9 D
,%%D E
url&& 
:&& 
request&& 
.&& 
URL&&  
,&&  !
deleted&&" )
:&&) *
request&&+ 2
.&&2 3
Deleted&&3 :
,&&: ;
systemFileName'' 
:'' 
request''  '
.''' (
SystemFileName''( 6
,''6 7
sourceFileName''8 F
:''F G
request''H O
.''O P
SourceFileName''P ^
,''^ _
seoFileName(( 
:(( 
request(( $
.(($ %
SeoFileName((% 0
,((0 1
	subFolder((2 ;
:((; <
request((= D
.((D E
	SubFolder((E N
,((N O
fileExtension)) 
:)) 
request)) &
.))& '
FileExtension))' 4
,))4 5
mediaTypeId))6 A
:))A B
request))C J
.))J K
MediaTypeId))K V
,))V W
thumbUrl** 
:** 
request** !
.**! "
ThumbURL**" *
,*** +
tags**, 0
:**0 1
request**2 9
.**9 :
Tags**: >
,**> ?
createdById**? J
:**J K
request**K R
.**R S
CreatedById**S ^
,**^ _
tanentId++ 
:++ 
request++  
.++  !
TanentId++! )
,++) *
	createdAt,, 
:,, 
request,, !
.,,! "
	CreatedAt,," +
,,,+ ,
showOnWebsite,,, 9
:,,9 :
request,,: A
.,,A B
ShowOnWebsite,,B O
)-- 
;-- 

attachment.. 
... 
AddDomainEvent.. %
(..% &
new//  
AttachmentAddedEvent// (
(//( )
id00 
:00 

attachment00 
.00 
Id00 !
,00! "
type11 
:11 

attachment11  
.11  !
Type11! %
,11% &
description11' 2
:112 3

attachment114 >
.11> ?
Description11? J
,11J K
url22 
:22 

attachment22 
.22  
URL22  #
,22# $
deleted22% ,
:22, -

attachment22. 8
.228 9
Deleted229 @
,22@ A
systemFileName33 
:33 

attachment33  *
.33* +
SystemFileName33+ 9
,339 :
sourceFileName33; I
:33I J

attachment33K U
.33U V
SourceFileName33V d
,33d e
seoFileName44 
:44 

attachment44 '
.44' (
SeoFileName44( 3
,443 4
	subFolder445 >
:44> ?

attachment44@ J
.44J K
	SubFolder44K T
,44T U
fileExtension55 
:55 

attachment55 )
.55) *
FileExtension55* 7
,557 8
mediaTypeId559 D
:55D E

attachment55F P
.55P Q
MediaTypeId55Q \
,55\ ]
thumbUrl66 
:66 

attachment66 $
.66$ %
ThumbURL66% -
,66- .
tags66/ 3
:663 4

attachment665 ?
.66? @
Tags66@ D
,66D E
createdById77 
:77 

attachment77 '
.77' (
CreatedById77( 3
,773 4
tanentId775 =
:77= >

attachment77? I
.77I J
TanentId77J R
,77R S
	createdAt88 
:88 

attachment88 %
.88% &
	CreatedAt88& /
,88/ 0
showOnWebsite881 >
:88> ?

attachment88@ J
.88J K
ShowOnWebsite88K X
)99 
):: 
;:: 
_repository;; 
.;; 
Add;; 
(;; 

attachment;; &
);;& '
;;;' (
return<< 
ValidationResult<< #
;<<# $
}== 	
public?? 
async?? 
Task?? 
<?? 
ValidationResult?? *
>??* +
Handle??, 2
(??2 3*
RemoveRestoreAttachmentCommand??3 Q
request??R Y
,??Y Z
CancellationToken??[ l
cancellationToken??m ~
)??~ 
{@@ 	
ifAA 
(AA 
!AA 
requestAA 
.AA 
ValidationResultAA )
.AA) *
IsValidAA* 1
)AA1 2
returnAA3 9
requestAA: A
.AAA B
ValidationResultAAB R
;AAR S
returnBB 
awaitBB 
RemoveAttachmentBB )
(BB) *
requestBB* 1
)BB1 2
;BB2 3
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 

AttachmentFF $
>FF$ %
HandleFF& ,
(FF, -
GetAttachmentQueryFF- ?
requestFF@ G
,FFG H
CancellationTokenFFI Z
cancellationTokenFF[ l
)FFl m
{GG 	
returnHH 
awaitHH 
_repositoryHH $
.HH$ %
GetByIdHH% ,
(HH, -
requestHH- 4
.HH4 5
IdHH5 7
)HH7 8
;HH8 9
}II 	
publicKK 
TaskKK 
<KK 
	PagedListKK 
<KK 

AttachmentKK (
>KK( )
>KK) *
HandleKK+ 1
(KK1 2"
GetAllAttachmentsQueryKK2 H
requestKKI P
,KKP Q
CancellationTokenKKR c
cancellationTokenKKd u
)KKu v
{LL 	
returnMM 
_repositoryMM "
.MM" #
GetAllMM# )
(MM) *
requestMM* 1
)MM1 2
;MM2 3
}NN 	
publicOO 
TaskOO 
<OO 
ValidationResultOO $
>OO$ %
HandleOO& ,
(OO, -%
SaveAllAttachmentsCommandOO- F
requestOOG N
,OON O
CancellationTokenOOP a
cancellationTokenOOb s
)OOs t
{PP 	
returnQQ 
CommitQQ 
(QQ 
_repositoryQQ %
.QQ% &

UnitOfWorkQQ& 0
)QQ0 1
;QQ1 2
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
ValidationResultTT *
>TT* +
HandleTT, 2
(TT2 3/
#RemoveRestoreListAttachmentsCommandTT3 V
requestTTW ^
,TT^ _
CancellationTokenTT` q
cancellationToken	TTr É
)
TTÉ Ñ
{UU 	
ifVV 
(VV 
requestVV 
.VV +
RemoveRestoreAttachmentCommandsVV 7
.VV7 8
CountVV8 =
>VV= >
$numVV> ?
)VV? @
{WW 
varXX 
resultXX 
=XX 
ValidationResultXX -
;XX- .
foreachYY 
(YY 
varYY 

attachmentYY '
inYY( *
requestYY+ 2
.YY2 3+
RemoveRestoreAttachmentCommandsYY3 R
)YYR S
{ZZ 

attachment[[ 
.[[ 
Delete[[ %
=[[& '
request[[( /
.[[/ 0
Delete[[0 6
;[[6 7
result\\ 
=\\ 
await\\ !
RemoveAttachment\\" 2
(\\2 3

attachment\\3 =
)\\= >
;\\> ?
}]] 
return^^ 
result^^ 
;^^ 
}__ 
AddError`` 
(`` 
$str`` 0
)``0 1
;``1 2
returnaa 
ValidationResultaa #
;aa# $
}bb 	
privatecc 
asynccc 
Taskcc 
<cc 
ValidationResultcc +
>cc+ ,
RemoveAttachmentcc- =
(cc= >*
RemoveRestoreAttachmentCommandcc> \
querycc] b
)ccb c
{dd 	
varee 

attachmentee 
=ee 
awaitee "
_repositoryee# .
.ee. /
GetByIdee/ 6
(ee6 7
queryee7 <
.ee< =
Idee= ?
)ee? @
;ee@ A
ifff 
(ff 

attachmentff 
!=ff 
nullff "
)ff" #
{gg 
ifhh 
(hh 

attachmenthh 
.hh 
Deletedhh &
!=hh' )
queryhh* /
.hh/ 0
Deletehh0 6
)hh6 7
{ii 

attachmentjj 
.jj 
Deletedjj &
=jj' (
queryjj) .
.jj. /
Deletejj/ 5
;jj5 6
ifkk 
(kk 
querykk 
.kk 
Deletekk $
)kk$ %
{ll 

attachmentmm "
.mm" #
AddDomainEventmm# 1
(mm1 2
newmm2 5"
AttachmentRemovedEventmm6 L
(mmL M
idmmM O
:mmO P
querymmQ V
.mmV W
IdmmW Y
,mmY Z
createdByIdmm[ f
:mmf g
querymmh m
.mmm n
CreatedByIdmmn y
,mmy z
tanentId	mm{ É
:
mmÉ Ñ
query
mmÖ ä
.
mmä ã
TanentId
mmã ì
,
mmì î
	createdAt
mmï û
:
mmû ü
query
mm† •
.
mm• ¶
	CreatedAt
mm¶ Ø
,
mmØ ∞
showOnWebsite
mm± æ
:
mmæ ø
query
mm¿ ≈
.
mm≈ ∆
ShowOnWebsite
mm∆ ”
,
mm” ‘
delete
mm‘ ⁄
:
mm⁄ €
query
mm€ ‡
.
mm‡ ·
Delete
mm· Á
,
mmÁ Ë
deleted
mmÈ 
:
mm Ò
query
mmÚ ˜
.
mm˜ ¯
Deleted
mm¯ ˇ
)
mmˇ Ä
)
mmÄ Å
;
mmÅ Ç
}nn 
elseoo 
{pp 

attachmentqq "
.qq" #
AddDomainEventqq# 1
(qq1 2
newqq2 5#
AttachmentRestoredEventqq6 M
(qqM N
idqqN P
:qqP Q
queryqqR W
.qqW X
IdqqX Z
,qqZ [
createdByIdqq\ g
:qqg h
queryqqi n
.qqn o
CreatedByIdqqo z
,qqz {
tanentId	qq| Ñ
:
qqÑ Ö
query
qqÜ ã
.
qqã å
TanentId
qqå î
,
qqî ï
	createdAt
qqñ ü
:
qqü †
query
qq° ¶
.
qq¶ ß
	CreatedAt
qqß ∞
,
qq∞ ±
showOnWebsite
qq≤ ø
:
qqø ¿
query
qq¡ ∆
.
qq∆ «
ShowOnWebsite
qq« ‘
,
qq‘ ’
delete
qq÷ ‹
:
qq‹ ›
query
qqﬁ „
.
qq„ ‰
Delete
qq‰ Í
,
qqÍ Î
deleted
qqÏ Û
:
qqÛ Ù
query
qqı ˙
.
qq˙ ˚
Deleted
qq˚ Ç
)
qqÇ É
)
qqÉ Ñ
;
qqÑ Ö
}rr 
_repositoryss 
.ss  
Updatess  &
(ss& '

attachmentss' 1
)ss1 2
;ss2 3
returntt 
awaittt  
Committt! '
(tt' (
_repositorytt( 3
.tt3 4

UnitOfWorktt4 >
)tt> ?
;tt? @
}uu 
elsevv 
{ww 
returnxx 
ValidationResultxx +
;xx+ ,
}yy 
}{{ 
else|| 
{}} 
AddError~~ 
(~~ 
$str~~ 4
)~~4 5
;~~5 6
return 
ValidationResult '
;' (
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ ®

hD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Handlers\AttachmentEventHandler.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Attachments		 #
.		# $
Handlers		$ ,
{

 
public 

class "
AttachmentEventHandler '
:( ) 
INotificationHandler 
<  
AttachmentAddedEvent 1
>1 2
,2 3 
INotificationHandler 
< "
AttachmentRemovedEvent 3
>3 4
{ 
public 
Task 
Handle 
(  
AttachmentAddedEvent /
notification0 <
,< =
CancellationToken> O
cancellationTokenP a
)a b
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( "
AttachmentRemovedEvent 1
notification2 >
,> ?
CancellationToken@ Q
cancellationTokenR c
)c d
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ö

iD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Interfaces\IAttachmentRepository.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Attachments		 #
.		# $

Interfaces		$ .
{

 
public 

	interface !
IAttachmentRepository *
:* +
IRepository, 7
<7 8

Attachment8 B
>B C
{ 
Task 
< 

Attachment 
> 
GetById  
(  !
Guid! %
id& (
)( )
;) *
Task 
< 
	PagedList 
< 

Attachment !
>! "
>" #
GetAll$ *
(* +"
GetAllAttachmentsQuery+ A
resourceParamsB P
)P Q
;Q R
void 
Add 
( 

Attachment 

attachment &
)& '
;' (
void 
Update 
( 

Attachment 

attachment )
)) *
;* +
void 
Remove 
( 

Attachment 

attachment )
)) *
;* +
} 
} £*
ZD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Models\Attachment.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Attachments		 #
.		# $
Models		$ *
{

 
public 

class 

Attachment 
: 

BaseEntity &
,& '
IAggregateRoot' 5
{ 
public 

Attachment 
( 
) 
{ 	
} 	
public 

Attachment 
( 
Guid 
id 
, 
string 
type 
, 
string 
description 
, 
string 
url 
, 
bool 
deleted 
, 
string 
systemFileName !
,! "
string 
sourceFileName !
,! "
string 
seoFileName 
, 
string 
	subFolder 
, 
string 
fileExtension  
,  !
int 
mediaTypeId 
, 
string 
thumbUrl 
, 
string 
tags 
, 
string 
createdById 
, 
string   
tanentId   
,   
DateTime!! 
	createdAt!! 
,!! 
bool"" 
showOnWebsite"" 
)"" 
{## 	
Id$$ 
=$$ 
id$$ 
;$$ 
Type%% 
=%% 
type%% 
;%% 
Description&& 
=&& 
description&& %
;&&% &
URL'' 
='' 
url'' 
;'' 
Deleted(( 
=(( 
deleted(( 
;(( 
SystemFileName)) 
=)) 
systemFileName)) +
;))+ ,
SourceFileName** 
=** 
sourceFileName** +
;**+ ,
SeoFileName++ 
=++ 
seoFileName++ %
;++% &
	SubFolder,, 
=,, 
	subFolder,, !
;,,! "
FileExtension-- 
=-- 
fileExtension-- )
;--) *
MediaTypeId.. 
=.. 
mediaTypeId.. %
;..% &
ThumbURL// 
=// 
thumbUrl// 
;//  
Tags00 
=00 
tags00 
;00 
CreatedById11 
=11 
createdById11 %
;11% &
TanentId22 
=22 
tanentId22 
;22  
	CreatedAt33 
=33 
	createdAt33 !
;33! "
ShowOnWebsite44 
=44 
showOnWebsite44 )
;44) *
}55 	
public77 
string77 
Type77 
{77 
get77  
;77  !
set77" %
;77% &
}77' (
[88 	
Column88	 
(88 
TypeName88 
=88 
$str88 *
)88* +
]88+ ,
public99 
string99 
Description99 !
{99" #
get99$ '
;99' (
set99) ,
;99, -
}99. /
[:: 	
Column::	 
(:: 
TypeName:: 
=:: 
$str:: +
)::+ ,
]::, -
public;; 
string;; 
URL;; 
{;; 
get;; 
;;;  
set;;! $
;;;$ %
};;& '
[<< 	
Required<<	 
]<< 
[== 	
Column==	 
(== 
TypeName== 
=== 
$str== +
)==+ ,
]==, -
public>> 
string>> 
SystemFileName>> $
{>>% &
get>>' *
;>>* +
set>>, /
;>>/ 0
}>>1 2
[?? 	
Required??	 
]?? 
[@@ 	
Column@@	 
(@@ 
TypeName@@ 
=@@ 
$str@@ +
)@@+ ,
]@@, -
publicAA 
stringAA 
SourceFileNameAA $
{AA% &
getAA' *
;AA* +
setAA, /
;AA/ 0
}AA1 2
[BB 	
ColumnBB	 
(BB 
TypeNameBB 
=BB 
$strBB +
)BB+ ,
]BB, -
publicCC 
stringCC 
SeoFileNameCC !
{CC" #
getCC$ '
;CC' (
setCC) ,
;CC, -
}CC. /
publicDD 
stringDD 
	SubFolderDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
publicEE 
stringEE 
FileExtensionEE #
{EE$ %
getEE& )
;EE) *
setEE+ .
;EE. /
}EE0 1
publicFF 
intFF 
MediaTypeIdFF 
{FF  
getFF! $
;FF$ %
setFF& )
;FF) *
}FF+ ,
publicHH 
stringHH 
ThumbURLHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
publicII 
stringII 
TagsII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
}JJ 
}KK Ì
gD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Queries\GetAllAttachmentsQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Queries$ +
{		 
public

 

class

 "
GetAllAttachmentsQuery

 '
:

( )
	BaseQuery

* 3
,

3 4
IRequest

5 =
<

= >
	PagedList

> G
<

G H

Attachment

H R
>

R S
>

S T
{ 
public 
Guid 
? 
EntityId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

EntityType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public "
GetAllAttachmentsQuery %
(% &
string' -
createdById. 9
,9 :
string; A
tanentIdB J
,J K
DateTimeL T
?T U
createdAtFromV c
,c d
DateTimed l
?l m
createdAtTom x
,x y
boolz ~
?~ 
showOnWebsite
Ä ç
,
ç é
bool
è ì
?
ì î
deleted
ï ú
)
ú ù
{ 	
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
CreatedAtFrom 
= 
createdAtFrom )
;) *
CreatedAtTo 
= 
createdAtTo %
;% &
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} “
cD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Attachments\Queries\GetAttachmentQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Attachments #
.# $
Queries$ +
{		 
public

 

class

 
GetAttachmentQuery

 #
:

$ %
IRequest

& .
<

. /

Attachment

/ 9
>

9 :
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
GetAttachmentQuery !
(! "
Guid" &
id' )
)) *
{ 	
Id 
= 
id 
; 
} 	
} 
} 