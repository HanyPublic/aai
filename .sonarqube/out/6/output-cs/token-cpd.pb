�
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Product\AddProductCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class 
AddProductCommand "
:" #
ProductCommand# 1
{ 
public		 
AddProductCommand		  
(		  !
string		! '
imageId		( /
,		/ 0
string		0 6
name		7 ;
,		; <
decimal		< C
amount		D J
,		J K
string		L R
category		S [
,		[ \
string		] c
tanentId		d l
,		l m
string		n t
createdById			u �
,
		� �
DateTime
		� �
	createdAt
		� �
,
		� �
bool
		� �
showOnWebsite
		� �
,
		� �
bool
		� �
deleted
		� �
)
		� �
{

 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
imageId& -
)- .
). /
ImageId0 7
=8 9
Guid: >
.> ?
Parse? D
(D E
imageIdE L
)L M
;M N
Name 
= 
name 
; 
Amount 
= 
amount 
; 
Category 
= 
category 
;  
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �	
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Product\ProductCommand.cs
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
class		 
ProductCommand		 (
:		( )
BaseEntityCommand		) :
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
Guid 
? 
ImageId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
hD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Product\RemoveProductCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class  
RemoveProductCommand %
:% &
Command& -
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
 
set

 !
;

! "
}

# $
public  
RemoveProductCommand #
(# $
Guid$ (
id) +
)+ ,
{ 	
Id 
= 
id 
; 
} 	
} 
} �
hD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Product\UpdateProductCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 	
class
  
UpdateProductCommand $
:$ %
ProductCommand% 3
{ 
public		  
UpdateProductCommand		 #
(		# $
Guid		$ (
id		) +
,		+ ,
string		, 2
imageId		3 :
,		; <
string		< B
name		C G
,		G H
decimal		I P
amount		Q W
,		W X
string		Y _
category		` h
,		h i
bool		i m
showOnWebsite		n {
,		{ |
bool			} �
deleted
		� �
)
		� �
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
; 
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
imageId& -
)- .
). /
ImageId0 7
=8 9
Guid: >
.> ?
Parse? D
(D E
imageIdE L
)L M
;M N
Name 
= 
name 
; 
Amount 
= 
amount 
; 
Category 
= 
category 
;  
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �
uD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\AddSaleInstallmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class %
AddSaleInstallmentCommand *
:+ ,"
SaleInstallmentCommand- C
{ 
public %
AddSaleInstallmentCommand (
(( )
Guid 
saleId 
, 
decimal		 
amount		 
,		 
DateTime		 $
dueDate		% ,
,		, -
string		- 3
status		4 :
,		: ;
string

 
createdById

 
,

 
string

  &
tanentId

' /
,

/ 0
DateTime

1 9
	createdAt

: C
,

C D
bool 
showOnWebsite 
, 
bool  $
deleted% ,
), -
{ 	
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\RemoveSaleInstallmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class (
RemoveSaleInstallmentCommand -
:. /"
SaleInstallmentCommand0 F
{ 
public (
RemoveSaleInstallmentCommand +
(+ ,
Guid, 0
id1 3
)3 4
{ 	
Id		 
=		 
id		 
;		 
AggregateId

 
=

 
id

 
;

 
} 	
} 
} �	
rD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\SaleInstallmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class "
SaleInstallmentCommand '
:' (
BaseEntityCommand( 9
{ 
public		 
Guid		 
Id		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
Guid

 
SaleId
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
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
DueDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
zD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\SaveAllSaleInstallmentsCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class *
SaveAllSaleInstallmentsCommand /
:/ 0
Command0 7
{ 
public *
SaveAllSaleInstallmentsCommand -
(- .
). /
{ 	
}

 	
} 
} �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\UpdateSaleInstallmentCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class (
UpdateSaleInstallmentCommand -
:- ."
SaleInstallmentCommand. D
{ 
public (
UpdateSaleInstallmentCommand +
(+ ,
Guid 
id 
, 
Guid 
saleId 
, 
decimal  
amount! '
,' (
DateTime) 1
dueDate2 9
,9 :
string		 
status		 
,		 
bool		 
showOnWebsite		  -
,		- .
bool		/ 3
deleted		4 ;
)		; <
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
; 
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �
~D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\SaleInstallment\UpdateSaleInstallmentStatusCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class .
"UpdateSaleInstallmentStatusCommand 3
:4 5"
SaleInstallmentCommand6 L
{ 
public		 .
"UpdateSaleInstallmentStatusCommand		 1
(		1 2
Guid

	 
id

 
,

 
Guid	 
saleId 
, 
decimal 
amount $
,$ %
DateTime& .
dueDate/ 6
,6 7
string	 
status 
, 
bool 
showOnWebsite *
,* +
bool, 0
deleted1 8
)8 9
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Sale\CreateNewSaleCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class  
CreateNewSaleCommand %
:& '
SaleCommand( 3
{		 
public

  
CreateNewSaleCommand

 #
(

# $
Guid 
id 
, 
Guid 
? 

customerId 
, 
DateTime &
	startDate' 0
,0 1
string1 7
status8 >
,> ?
decimal 
amount 
, 
decimal #

paidAmount$ .
,. /
decimal0 7
remainingAmount8 G
,G H
int "
installmentMonthNumber &
,& '
int( +
installmentValue, <
,< =
decimal> E

percentageF P
,P Q
string 
createdById 
, 
string  &
tanentId' /
,/ 0
DateTime0 8
	createdAt9 B
,B C
bool 
showOnWebsite 
, 
bool  $
deleted% ,
), -
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 

CustomerId 
= 

customerId #
;# $
	StartDate 
= 
	startDate !
;! "
Status 
= 
status 
; 
Amount 
= 
amount 
; 

PaidAmount 
= 

paidAmount #
;# $
RemainingAmount 
= 
remainingAmount -
;- ."
InstallmentMonthNumber "
=# $"
installmentMonthNumber% ;
;; <
InstallmentValue 
= 
installmentValue /
;/ 0

Perecntage 
= 

percentage #
;# $
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
public## 

override## 
bool## 
IsValid##  
(##  !
)##! "
{$$ 
ValidationResult%% 
=%% 
new%% *
CreateNewSaleCommandValidation%% =
(%%= >
)%%> ?
.%%? @
Validate%%@ H
(%%H I
this%%I M
)%%M N
;%%N O
return&& 
ValidationResult&& 
.&&  
IsValid&&  '
;&&' (
}'' 
}(( 
})) �
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Sale\RemoveSaleCommand.cs
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
class 
RemoveSaleCommand "
:" #
SaleCommand# .
{ 
public 
RemoveSaleCommand  
(  !
Guid! %
id& (
)( )
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
new "'
RemoveSaleCommandValidation# >
(> ?
)? @
.@ A
ValidateA I
(I J
thisJ N
)N O
;O P
return 
ValidationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} �
\D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Sale\SaleCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

abstract 
class 
SaleCommand &
:' (
BaseEntityCommand( 9
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
 
	protected

 '
set

( +
;

+ ,
}

- .
public 
Guid 
? 

CustomerId 
{  !
get" %
;% &
	protected' 0
set1 4
;4 5
}6 7
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
Status 
{ 
get "
;" #
	protected$ -
set. 1
;1 2
}3 4
public 
decimal 
Amount 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
decimal 

PaidAmount !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
decimal 
RemainingAmount &
{' (
get) ,
;, -
	protected. 7
set8 ;
;; <
}= >
public 
int "
InstallmentMonthNumber )
{* +
get, /
;/ 0
	protected1 :
set; >
;> ?
}@ A
public 
int 
InstallmentValue #
{$ %
get& )
;) *
	protected+ 4
set5 8
;8 9
}: ;
public 
decimal 

Perecntage !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
List 
< 
Product 
> 
Products %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
List 
< 
SaleInstallment #
># $
SaleInstallments% 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} �
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Sale\UpdateSaleCommand.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
{ 
public 

class 
UpdateSaleCommand "
:# $
SaleCommand% 0
{		 
public

 
UpdateSaleCommand

  
(

  !
Guid 
id 
, 
Guid 
? 

customerId 
, 
DateTime '
	startDate( 1
,1 2
string3 9
status: @
,@ A
decimal 
amount 
, 
decimal $

paidAmount% /
,/ 0
decimal1 8
remainingAmount9 H
,H I
int "
installmentMonthNumber '
,' (
int) ,
installmentValue- =
,= >
decimal? F

percentageG Q
,Q R
bool 
showOnWebsite 
, 
bool  $
deleted% ,
), -
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 

CustomerId 
= 

customerId #
;# $
	StartDate 
= 
	startDate !
;! "
Status 
= 
status 
; 
Amount 
= 
amount 
; 

PaidAmount 
= 

paidAmount #
;# $
RemainingAmount 
= 
remainingAmount -
;- ."
InstallmentMonthNumber "
=# $"
installmentMonthNumber% ;
;; <
InstallmentValue 
= 
installmentValue /
;/ 0

Perecntage 
= 

percentage #
;# $
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
public   
override   
bool   
IsValid   $
(  $ %
)  % &
{!! 	
ValidationResult"" 
="" 
new"" "'
UpdateSaleCommandValidation""# >
(""> ?
)""? @
.""@ A
Validate""A I
(""I J
this""J N
)""N O
;""O P
return## 
ValidationResult## #
.### $
IsValid##$ +
;##+ ,
}$$ 	
}%% 
}&& �
{D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Validations\Sale\CreateNewSaleCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
class 	*
CreateNewSaleCommandValidation
 (
:) *
SaleValidation+ 9
<9 : 
CreateNewSaleCommand: N
>N O
{ 
public		 *
CreateNewSaleCommandValidation		 -
(		- .
)		. /
{

 	
ValidateAmount 
( 
) 
; 
ValidatePaidAmount 
( 
)  
;  !
} 	
} 
} �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Validations\Sale\RemoveSaleCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

class '
RemoveSaleCommandValidation ,
:, -
SaleValidation- ;
<; <
RemoveSaleCommand< M
>M N
{ 
public		 '
RemoveSaleCommandValidation		 *
(		* +
)		+ ,
{

 	

ValidateId 
( 
) 
; 
} 	
} 
} �
kD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Validations\Sale\SaleValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

abstract 
class 
SaleValidation (
<( )
T) *
>* +
:, -
AbstractValidator. ?
<? @
T@ A
>A B
whereC H
TI J
:K L
SaleCommandM X
{		 
	protected

 
void

 
ValidateAmount

 %
(

% &
)

& '
{ 	
RuleFor 
( 
s 
=> 
s 
. 
Amount !
)! "
." #
GreaterThan# .
(. /
$num/ 0
)0 1
.1 2
WithMessage2 =
(= >
$str> ]
)] ^
;^ _
} 	
	protected 
void 
ValidatePaidAmount )
() *
)* +
{ 	
RuleFor 
( 
s 
=> 
s 
. 

PaidAmount %
)% &
.& '
LessThanOrEqualTo' 8
(8 9
s9 :
=>: <
s< =
.= >
Amount> D
)D E
. 
WithMessage 
( 
$str M
)M N
.N O 
GreaterThanOrEqualToO c
(c d
$numd e
)e f
. 
WithMessage 
( 
$str ?
)? @
;@ A
} 	
	protected 
void 

ValidateId !
(! "
)" #
{ 	
RuleFor 
( 
c 
=> 
c 
. 
Id 
) 
. 
NotEqual 
( 
Guid 
. 
Empty $
)$ %
;% &
}   	
	protected'' 
static'' 
bool'' 
	HaveItems'' '
(''' (
ICollection''( 3
<''3 4
Product''4 ;
>''; <
Products''= E
)''E F
{(( 	
return)) 
Products)) 
.)) 
Count)) !
>))! "
$num))" #
;))# $
}** 	
}00 
}11 �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Commands\Validations\Sale\UpdateSaleCommandValidation.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Commands  
.  !
Validations! ,
{ 
public 

class '
UpdateSaleCommandValidation ,
:- .
SaleValidation/ =
<= >
UpdateSaleCommand> O
>O P
{ 
public '
UpdateSaleCommandValidation *
(* +
)+ ,
{ 	

ValidateId 
( 
) 
; 
ValidateAmount		 
(		 
)		 
;		 
ValidatePaidAmount

 
(

 
)

  
;

  !
} 	
} 
} �
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Product\ProductCreatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public		 

class		 
ProductCreatedEvent		 %
:		& '
ProductEvent		' 3
{

 
public 
ProductCreatedEvent "
(# $
Guid$ (
id) +
,+ ,
Guid, 0
?0 1
imageId2 9
,9 :
string: @
nameA E
,E F
decimalF M
amountN T
,T U
stringU [
category\ d
,d e
stringf l
tanentIdm u
,u v
stringw }
createdById	~ �
,
� �
DateTime
� �
	createdAt
� �
,
� �
bool
� �
showOnWebsite
� �
,
� �
bool
� �
deleted
� �
)
� �
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Amount 
= 
amount 
; 
Category 
= 
category 
;  
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �	
^D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Product\ProductEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public		 	
abstract		
 
class		 
ProductEvent		 %
:		% &
BaseEntityEvent		& 5
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
Guid 
? 
ImageId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Product\ProductRemovedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class 
ProductRemovedEvent $
:% &
Event& +
{		 
public

 
ProductRemovedEvent

 "
(

" #
Guid

# '
id

( *
)

* +
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
} 
} �
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Product\ProductUpdatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public		 

class		 
ProductUpdatedEvent		 $
:		% &
ProductEvent		' 3
{

 
public 
ProductUpdatedEvent "
(" #
Guid# '
id( *
,* +
Guid+ /
?/ 0
imageId1 8
,9 :
string: @
nameA E
,E F
decimalG N
amountO U
,U V
stringW ]
category^ f
,f g
stringh n
tanentIdo w
,w x
stringy 
createdById
� �
,
� �
DateTime
� �
	createdAt
� �
,
� �
bool
� �
showOnWebsite
� �
,
� �
bool
� �
deleted
� �
)
� �
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Amount 
= 
amount 
; 
Category 
= 
category 
;  
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
} 
} �	
sD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\SaleInstallment\SaleInstallmentAddedEvent.cs
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
class %
SaleInstallmentAddedEvent *
:+ , 
SaleInstallmentEvent- A
{ 
public		 %
SaleInstallmentAddedEvent		 (
(		( )
Guid

 
id

 
,

 
Guid 
saleId 
, 
decimal 
amount 
, 
DateTime 
dueDate 
, 
string 
status 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
} 	
} 
} �	
nD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\SaleInstallment\SaleInstallmentEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

abstract 
class  
SaleInstallmentEvent .
:. /
Event/ 4
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
Guid		 
SaleId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
decimal

 
Amount

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
DateTime 
DueDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
uD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\SaleInstallment\SaleInstallmentRemovedEvent.cs
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
class '
SaleInstallmentRemovedEvent ,
:, -
Event- 2
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 '
SaleInstallmentRemovedEvent		 *
(		* +
Guid		+ /
id		0 2
)		2 3
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
; 
} 	
} 
} �
{D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\SaleInstallment\SaleInstallmentStatusUpdatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class -
!SaleInstallmentStatusUpdatedEvent 2
:3 4 
SaleInstallmentEvent5 I
{ 
public -
!SaleInstallmentStatusUpdatedEvent 0
(0 1
Guid 
id 
, 
Guid		 
saleId		 
,		 
string

 
status

 
)

 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
SaleId 
= 
saleId 
; 
Status 
= 
status 
; 
} 	
} 
} �	
uD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\SaleInstallment\SaleInstallmentUpdatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class '
SaleInstallmentUpdatedEvent ,
:- . 
SaleInstallmentEvent/ C
{ 
public '
SaleInstallmentUpdatedEvent *
(* +
Guid 
id 
, 
Guid		 
saleId		 
,		 
decimal

 
amount

 
,

 
DateTime 
dueDate 
, 
string 
status 
) 
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
} 	
} 
} �
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Sale\SaleCreatedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{		 
public

 

class

 
SaleCreatedEvent

 !
:

! "
	SaleEvent

" +
{ 
public 
SaleCreatedEvent 
(  
Guid 
id 
, 
Guid 
? 

customerId 
, 
DateTime &
	startDate' 0
,0 1
string2 8
status9 ?
,? @
decimal 
amount 
, 
decimal "

paidAmount# -
,- .
decimal/ 6
remainingAmount7 F
,G H
intI L"
installmentMonthNumberM c
,c d
int 
installmentValue  
,  !
decimal! (

percentage) 3
,3 4
string 
createdById 
, 
string  &
tanentId' /
,/ 0
DateTime1 9
	createdAt: C
,C D
bool 
showOnWebsite 
, 
bool  $
deleted% ,
), -
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 

CustomerId 
= 

customerId #
;# $
	StartDate 
= 
	startDate !
;! "
Status 
= 
status 
; 
Amount 
= 
amount 
; 

PaidAmount 
= 

paidAmount #
;# $
RemainingAmount 
= 
remainingAmount -
;- ."
InstallmentMonthNumber "
=# $"
installmentMonthNumber% ;
;; <
InstallmentValue 
= 
installmentValue /
;/ 0

Percentage 
= 

percentage #
;# $
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
;"") *
Deleted## 
=## 
deleted## 
;## 
}$$ 	
}'' 
}(( �
XD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Sale\SaleEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Sales 
. 
Events $
.$ %
Sale% )
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
 
	SaleEvent

 #
:

# $
BaseEntityEvent

$ 3
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
Guid 
? 

CustomerId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 

PaidAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
RemainingAmount &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int "
InstallmentMonthNumber )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
InstallmentValue #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 

Percentage !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
_D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Sale\SaleRemovedEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{ 
public 

class 
SaleRemovedEvent !
:" #
Event# (
{		 
public

 
SaleRemovedEvent

 
(

  
Guid

  $
id

% '
)

' (
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
} 
} �
^D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Events\Sale\SaleUpdateEvent.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Events 
{		 
public

 

class

 
SaleUpdateEvent

  
:

! "
	SaleEvent

# ,
{ 
public 
SaleUpdateEvent 
( 
Guid 
id 
, 
Guid 
? 

customerId 
, 
DateTime &
	startDate' 0
,0 1
string2 8
status9 ?
,? @
decimal 
amount 
, 
decimal #

paidAmount$ .
,. /
decimal0 7
remainingAmount8 G
,G H
intI L"
installmentMonthNumberM c
,c d
int 
installmentValue  
,  !
decimal" )

percentage* 4
,4 5
bool 
showOnWebsite 
, 
bool  $
deleted% ,
), -
{ 	
Id 
= 
id 
; 
AggregateId 
= 
id 
; 

CustomerId 
= 

customerId #
;# $
	StartDate 
= 
	startDate !
;! "
Status 
= 
status 
; 
Amount 
= 
amount 
; 

PaidAmount 
= 

paidAmount #
;# $
RemainingAmount 
= 
remainingAmount -
;- ."
InstallmentMonthNumber "
=# $"
installmentMonthNumber% ;
;; <
InstallmentValue 
= 
installmentValue /
;/ 0

Percentage 
= 

percentage #
;# $
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
}   	
}!! 
}"" �T
iD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\Product\ProductCommandHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Handlers  
{ 
public 

class !
ProductCommandHandler &
:' (
CommandHandler) 7
,7 8
IRequestHandler 
< 
GetAllProductsQuery +
,+ ,
	PagedList- 6
<6 7
Product7 >
>> ?
>? @
,@ A
IRequestHandler 
< 
GetProductQuery '
,' (
Product) 0
>0 1
,1 2
IRequestHandler 
< 
AddProductCommand )
,) *
ValidationResult+ ;
>; <
,< =
IRequestHandler 
<  
UpdateProductCommand ,
,, -
ValidationResult. >
>> ?
,? @
IRequestHandler 
<  
RemoveProductCommand ,
,, -
ValidationResult. >
>> ?
{ 
private 
readonly 
IProductRepository +
_productRepository, >
;> ?
public !
ProductCommandHandler $
($ %
IProductRepository% 7
productRepository8 I
)I J
{ 	
_productRepository 
=  
productRepository! 2
;2 3
} 	
public 
Task 
< 
	PagedList 
< 
Product %
>% &
>& '
Handle( .
(. /
GetAllProductsQuery/ B
requestC J
,J K
CancellationTokenL ]
cancellationToken^ o
)o p
{ 	
return 
_productRepository %
.% &
GetAll& ,
(, -
request- 4
)4 5
;5 6
} 	
public!! 
Task!! 
<!! 
Product!! 
>!! 
Handle!! #
(!!# $
GetProductQuery!!$ 3
request!!4 ;
,!!; <
CancellationToken!!= N
cancellationToken!!O `
)!!` a
{"" 	
return## 
_productRepository## %
.##% &
GetById##& -
(##- .
request##. 5
)##5 6
;##6 7
}$$ 	
public%% 
async%% 
Task%% 
<%% 
ValidationResult%% *
>%%* +
Handle%%, 2
(%%2 3
AddProductCommand%%3 D
request%%E L
,%%L M
CancellationToken%%N _
cancellationToken%%` q
)%%q r
{&& 	
if'' 
('' 
!'' 
request'' 
.'' 
IsValid''  
(''  !
)''! "
)''" #
return''$ *
request''+ 2
.''2 3
ValidationResult''3 C
;''C D
var(( 
product(( 
=(( 
new(( 
Product(( %
(((% &
id)) 
:)) 
Guid)) 
.)) 
NewGuid))  
())  !
)))! "
,))" #
request** 
.** 
ImageId** 
,**  
name++ 
:++ 
request++ 
.++ 
Name++ "
,++" #
amount++$ *
:++* +
request++, 3
.++3 4
Amount++4 :
,++: ;
category++< D
:++D E
request++F M
.++M N
Category++N V
,++V W
request,, 
.,, 
TanentId,,  
,,,  !
request,," )
.,,) *
CreatedById,,* 5
,,,5 6
request,,7 >
.,,> ?
	CreatedAt,,? H
,,,H I
request,,J Q
.,,Q R
ShowOnWebsite,,R _
,,,_ `
request-- 
.-- 
Deleted-- 
)--  
;--  !
product.. 
... 
AddDomainEvent.. "
(.." #
new..# &
ProductCreatedEvent..' :
(..: ;
id// 
:// 
product// 
.// 
Id// 
,// 
imageId// &
://& '
product//' .
.//. /
ImageId/// 6
,//6 7
name00 
:00 
product00 
.00 
Name00 "
,00" #
amount00$ *
:00* +
product00, 3
.003 4
Amount004 :
,00: ;
category00< D
:00D E
product00F M
.00M N
Category00N V
,00V W
product11 
.11 
TanentId11  
,11  !
product11" )
.11) *
CreatedById11* 5
,115 6
product117 >
.11> ?
	CreatedAt11? H
,11H I
product11J Q
.11Q R
ShowOnWebsite11R _
,11_ `
product22 
.22 
Deleted22 
)22  
)22  !
;22! "
_productRepository33 
.33 
Add33 "
(33" #
product33# *
)33* +
;33+ ,
return44 
await44 
Commit44 
(44  
_productRepository44  2
.442 3

UnitOfWork443 =
)44= >
;44> ?
}55 	
public77 
async77 
Task77 
<77 
ValidationResult77 *
>77* +
Handle77, 2
(772 3 
UpdateProductCommand773 G
request77H O
,77O P
CancellationToken77Q b
cancellationToken77c t
)77t u
{88 	
if99 
(99 
!99 
request99 
.99 
IsValid99  
(99  !
)99! "
)99" #
return99$ *
request99+ 2
.992 3
ValidationResult993 C
;99C D
var:: 

oldProduct:: 
=:: 
await:: !
_productRepository::" 4
.::4 5
GetById::5 <
(::< =
request::= D
.::D E
Id::E G
)::G H
;::H I
if;; 
(;; 

oldProduct;; 
==;; 
null;; "
);;" #
{;;$ %
AddError;;& .
(;;. /
$";;/ 1
$str;;1 A
{;;A B
request;;B I
.;;I J
Id;;J L
};;L M
$str;;M [
";;[ \
);;\ ]
;;;] ^
return;;_ e
request;;f m
.;;m n
ValidationResult;;n ~
;;;~ 
}
;;� �
var== 
product== 
=== 
new== 
Product== %
(==% &
id>> 
:>> 
request>> 
.>> 
Id>> !
,>>! "
imageId>>" )
:>>) *
request>>* 1
.>>1 2
ImageId>>2 9
,>>9 :
name?? 
:?? 
request??  
.??  !
Name??! %
,??% &
amount??' -
:??- .
request??/ 6
.??6 7
Amount??7 =
,??= >
category??? G
:??G H
request??I P
.??P Q
Category??Q Y
,??Y Z

oldProduct@@ 
.@@ 
TanentId@@ &
,@@& '

oldProduct@@( 2
.@@2 3
CreatedById@@3 >
,@@> ?

oldProduct@@@ J
.@@J K
	CreatedAt@@K T
,@@T U
request@@V ]
.@@] ^
ShowOnWebsite@@^ k
,@@k l
requestAA 
.AA 
DeletedAA "
)AA" #
;AA# $
productBB 
.BB 
AddDomainEventBB "
(BB" #
newBB# &
ProductUpdatedEventBB' :
(BB: ;
idCC 
:CC 
productCC 
.CC 
IdCC 
,CC 
imageIdCC &
:CC& '
productCC' .
.CC. /
ImageIdCC/ 6
,CC6 7
nameDD 
:DD 
productDD 
.DD 
NameDD "
,DD" #
amountDD$ *
:DD* +
productDD, 3
.DD3 4
AmountDD4 :
,DD: ;
categoryDD< D
:DDD E
productDDF M
.DDM N
CategoryDDN V
,DDV W
productEE 
.EE 
TanentIdEE  
,EE  !
productEE" )
.EE) *
CreatedByIdEE* 5
,EE5 6
productEE7 >
.EE> ?
	CreatedAtEE? H
,EEH I
productEEJ Q
.EEQ R
ShowOnWebsiteEER _
,EE_ `
productFF 
.FF 
DeletedFF 
)GG 
)GG 
;GG 
_productRepositoryHH 
.HH 
UpdateHH %
(HH% &
productHH& -
)HH- .
;HH. /
returnII 
awaitII 
CommitII 
(II  
_productRepositoryII  2
.II2 3

UnitOfWorkII3 =
)II= >
;II> ?
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
ValidationResultLL *
>LL* +
HandleLL, 2
(LL2 3 
RemoveProductCommandLL3 G
requestLLH O
,LLO P
CancellationTokenLLQ b
cancellationTokenLLc t
)LLt u
{MM 	
ifNN 
(NN 
!NN 
requestNN 
.NN 
IsValidNN  
(NN  !
)NN! "
)NN" #
returnNN$ *
requestNN+ 2
.NN2 3
ValidationResultNN3 C
;NNC D
varOO 
productOO 
=OO 
awaitOO 
_productRepositoryOO  2
.OO2 3
GetByIdOO3 :
(OO: ;
requestOO; B
.OOB C
IdOOC E
)OOE F
;OOF G
ifPP 
(PP 
productPP 
==PP 
nullPP 
)PP  
{QQ 
AddErrorRR 
(RR 
$strRR ?
)RR? @
;RR@ A
returnSS 
ValidationResultSS '
;SS' (
}TT 
elseUU 
{VV 
productWW 
.WW 
AddDomainEventWW &
(WW& '
newWW' *
ProductRemovedEventWW+ >
(WW> ?
requestWW? F
.WWF G
IdWWG I
)WWI J
)WWJ K
;WWK L
_productRepositoryXX "
.XX" #
RemoveXX# )
(XX) *
productXX* 1
)XX1 2
;XX2 3
returnYY 
awaitYY 
CommitYY #
(YY# $
_productRepositoryYY$ 6
.YY6 7

UnitOfWorkYY7 A
)YYA B
;YYB C
}ZZ 
}[[ 	
}\\ 
}]] �
gD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\Product\ProductEventHandler.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Handlers		  
{

 
public 

class 
ProductEventHandler $
:% & 
INotificationHandler' ;
<; <
ProductCreatedEvent< O
>O P
,P Q 
INotificationHandler	 
< 
ProductUpdatedEvent 1
>1 2
,2 3 
INotificationHandler	 
< 
ProductRemovedEvent 1
>1 2
{ 
public 
Task 
Handle 
( 
ProductCreatedEvent .
notification/ ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( 
ProductUpdatedEvent .
notification/ ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( 
ProductRemovedEvent .
notification/ ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ��
zD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\SaleInstallment\SaleInstallmentCommandsHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Handlers  
{ 
public 

class *
SaleInstallmentCommandsHandler /
:0 1
CommandHandler 
, 
IRequestHandler 
< %
AddSaleInstallmentCommand 1
,1 2
ValidationResult3 C
>C D
,D E
IRequestHandler 
< (
UpdateSaleInstallmentCommand 4
,4 5
ValidationResult6 F
>F G
,G H
IRequestHandler 
< (
RemoveSaleInstallmentCommand 4
,4 5
ValidationResult6 F
>F G
,G H
IRequestHandler 
< &
GetAllSaleInstallmentQuery 2
,2 3
	PagedList4 =
<= >
SaleInstallment> M
>M N
>N O
,O P
IRequestHandler 
< #
GetSaleInstallmentQuery /
,/ 0
SaleInstallment1 @
>@ A
{ 
private 
readonly &
ISaleInstallmentRepository 3
_repository4 ?
;? @
private 
readonly 
ISaleRepository (
_saleRepository) 8
;8 9
public *
SaleInstallmentCommandsHandler -
(- .&
ISaleInstallmentRepository. H%
saleInstallmentRepositoryI b
,b c
ISaleRepositoryd s
saleRepository	t �
)
� �
{ 	
_repository 
= %
saleInstallmentRepository 3
;3 4
_saleRepository 
= 
saleRepository ,
;, -
}   	
public!! 
async!! 
Task!! 
<!! 
ValidationResult!! *
>!!* +
Handle!!, 2
(!!2 3%
AddSaleInstallmentCommand!!3 L
request!!M T
,!!T U
CancellationToken!!V g
cancellationToken!!h y
)!!y z
{"" 	
var$$ 
sale$$ 
=$$ 
await$$ 
_saleRepository$$ ,
.$$, -
GetById$$- 4
($$4 5
request$$5 <
.$$< =
SaleId$$= C
,$$C D
false$$E J
,$$J K
true$$L P
,$$P Q
false$$R W
)$$W X
;$$X Y
if%% 
(%% 
sale%% 
!=%% 
null%% 
)%% 
{&& 
sale(( 
.(( "
InstallmentMonthNumber(( +
++((+ -
;((- .
sale)) 
=)) &
UpdateSaleInstallmentValue)) 1
())1 2
sale))2 6
)))6 7
;))7 8"
UpdateSaleDomainEvents** &
(**& '
sale**' +
)**+ ,
;**, -
_saleRepository++ 
.++  
Update++  &
(++& '
sale++' +
)+++ ,
;++, -
var-- 
saleInstallment-- #
=--$ %
new--& )
SaleInstallment--* 9
(--9 :
id.. 
:.. 
Guid.. 
... 
NewGuid.. $
(..$ %
)..% &
,..& '
saleId// 
:// 
request// #
.//# $
SaleId//$ *
,//* +
amount00 
:00 
sale00  
.00  !
InstallmentValue00! 1
,001 2
dueDate11 
:11 
request11 $
.11$ %
DueDate11% ,
,11, -
status22 
:22 
sale22  
.22  !
Status22! '
,22' (
tanentId33 
:33 
sale33 "
.33" #
TanentId33# +
,33+ ,
createdById44 
:44  
sale44! %
.44% &
CreatedById44& 1
,441 2
	createdAt55 
:55 
sale55 #
.55# $
	CreatedAt55$ -
,55- .
showOnWebsite66 !
:66! "
sale66# '
.66' (
ShowOnWebsite66( 5
,665 6
deleted77 
:77 
sale77 !
.77! "
Deleted77" )
,77) *
$str77+ -
)88 
;88 
saleInstallment99 
.99  
AddDomainEvent99  .
(99. /
new99/ 2%
SaleInstallmentAddedEvent993 L
(99L M
id:: 
::: 
saleInstallment:: (
.::( )
Id::) +
,::+ ,
saleId;; 
:;; 
saleInstallment;; +
.;;+ ,
SaleId;;, 2
,;;2 3
amount<< 
:<< 
saleInstallment<< +
.<<+ ,
Amount<<, 2
,<<2 3
dueDate== 
:== 
saleInstallment== ,
.==, -
DueDate==- 4
,==4 5
status>> 
:>> 
saleInstallment>> +
.>>+ ,
Status>>, 2
)?? 
)?? 
;?? 
_repository@@ 
.@@ 
Add@@ 
(@@  
saleInstallment@@  /
)@@/ 0
;@@0 1
returnAA 
awaitAA 
CommitAA #
(AA# $
_repositoryAA$ /
.AA/ 0

UnitOfWorkAA0 :
)AA: ;
;AA; <
}BB 
elseCC 
{DD 
AddErrorEE 
(EE 
$"EE 
$strEE (
{EE( )
requestEE) 0
.EE0 1
SaleIdEE1 7
}EE7 8
$strEE8 G
"EEG H
)EEH I
;EEI J
returnFF 
ValidationResultFF '
;FF' (
}GG 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
ValidationResultKK *
>KK* +
HandleKK, 2
(KK2 3(
UpdateSaleInstallmentCommandKK3 O
requestKKP W
,KKW X
CancellationTokenKKY j
cancellationTokenKKk |
)KK| }
{LL 	
varMM 
oldSIMM 
=MM 
awaitMM 
_repositoryMM )
.MM) *
GetByIdMM* 1
(MM1 2
requestMM2 9
.MM9 :
IdMM: <
,MM< =
falseMM> C
)MMC D
;MMD E
varOO 
differenceInAmountOO "
=OO# $
requestOO% ,
.OO, -
AmountOO- 3
-OO4 5
oldSIOO6 ;
.OO; <
AmountOO< B
;OOB C
ifPP 
(PP 
differenceInAmountPP "
!=PP# %
$numPP& '
)PP' (
{QQ 
varRR 
installmentsRR  
=RR! "
awaitRR# (
_repositoryRR) 4
.RR4 5

GetAllListRR5 ?
(RR? @
newRR@ C&
GetAllSaleInstallmentQueryRRD ^
(RR^ _
requestRR_ f
.RRf g
SaleIdRRg m
,RRm n
oldSIRRo t
.RRt u
CreatedById	RRu �
,
RR� �
oldSI
RR� �
.
RR� �
TanentId
RR� �
,
RR� �
$str
RR� �
)
RR� �
)
RR� �
;
RR� �
ifSS 
(SS 
differenceInAmountSS &
>SS' (
$numSS) *
)SS* +
{TT 
varUU 
indexUU 
=UU 
installmentsUU  ,
.UU, -
	FindIndexUU- 6
(UU6 7
iUU7 8
=>UU9 ;
iUU< =
.UU= >
IdUU> @
==UUA C
oldSIUUD I
.UUI J
IdUUJ L
)UUL M
;UUM N
DecimalVV 
	remainderVV %
=VV& '
$numVV( )
;VV) *
varWW 
zWW 
=WW 
indexWW !
+WW" #
$numWW$ %
;WW% &
doXX 
{YY 
varZZ 
siZZ 
=ZZ  
installmentsZZ! -
[ZZ- .
zZZ. /
]ZZ/ 0
;ZZ0 1
	remainder[[ !
=[[" #
differenceInAmount[[$ 6
-[[7 8
si[[9 ;
.[[; <
Amount[[< B
;[[B C
if\\ 
(\\ 
	remainder\\ %
>\\& '
$num\\( )
)\\) *
{]] 
si^^ 
.^^ 
Amount^^ %
=^^& '
$num^^( )
;^^) *
differenceInAmount__ .
=__/ 0
	remainder__1 :
;__: ;
}`` 
elseaa 
{bb 
sicc 
.cc 
Amountcc %
=cc& '
sicc( *
.cc* +
Amountcc+ 1
-cc2 3
differenceInAmountcc4 F
;ccF G
}dd 
_repositoryee #
.ee# $
Updateee$ *
(ee* +
siee+ -
)ee- .
;ee. /
zff 
++ff 
;ff 
}gg 
whilegg 
(gg 
	remaindergg &
>gg' (
$numgg) *
)gg* +
;gg+ ,
}hh 
elseii 
{jj 
differenceInAmountkk &
=kk' (
Mathkk) -
.kk- .
Abskk. 1
(kk1 2
differenceInAmountkk2 D
)kkD E
;kkE F
varll 
remainderSIll #
=ll$ %
installmentsll& 2
.ll2 3
FirstOrDefaultll3 A
(llA B
sillB D
=>llE G
sillH J
.llJ K
TypellK O
==llP R 
SaleInstallmentTypesllS g
.llg h
	Remainderllh q
)llq r
;llr s
ifmm 
(mm 
remainderSImm #
!=mm$ &
nullmm' +
)mm+ ,
{nn 
remainderSIoo #
.oo# $
Amountoo$ *
+=oo+ -
differenceInAmountoo. @
;oo@ A
_repositorypp #
.pp# $
Updatepp$ *
(pp* +
remainderSIpp+ 6
)pp6 7
;pp7 8
}qq 
elserr 
{ss 
vartt 
lastInstallmenttt +
=tt, -
installmentstt. :
.tt: ;
LastOrDefaulttt; H
(ttH I
)ttI J
;ttJ K
_repositoryuu #
.uu# $
Adduu$ '
(uu' (
SaleInstallmentvv +
.vv+ ,!
CreateSaleInstallmentvv, A
(vvA B
Guidww  $
.ww$ %
NewGuidww% ,
(ww, -
)ww- .
,ww. /
oldSIxx  %
.xx% &
SaleIdxx& ,
,xx, -
differenceInAmountyy  2
,yy2 3
lastInstallmentzz  /
.zz/ 0
DueDatezz0 7
.zz7 8
	AddMonthszz8 A
(zzA B
$numzzB C
)zzC D
,zzD E!
SaleInstallmentStatus{{  5
.{{5 6
UnPaid{{6 <
,{{< =
oldSI||  %
.||% &
TanentId||& .
,||. /
oldSI}}  %
.}}% &
CreatedById}}& 1
,}}1 2
DateTime~~  (
.~~( )
Now~~) ,
,~~, -
true~~. 2
,~~2 3
false  %
,% &"
SaleInstallmentTypes
��  4
.
��4 5
	Remainder
��5 >
)
��> ?
)
��? @
;
��@ A
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
oldSI
�� 
.
�� 
Status
�� 
!=
�� 
request
��  '
.
��' (
Status
��( .
)
��. /
{
�� 
await
�� 
UpdateSaleValue
�� %
(
��% &
request
��& -
.
��- .
Status
��. 4
,
��4 5
oldSI
��6 ;
,
��; <
request
��= D
.
��D E
Amount
��E K
)
��K L
;
��L M
}
�� 
var
�� 
saleInstallment
�� 
=
��  !
new
��" %
SaleInstallment
��& 5
(
��5 6
id
�� 
:
�� 
oldSI
�� 
.
��  
Id
��  "
,
��" #
saleId
�� 
:
�� 
oldSI
�� #
.
��# $
SaleId
��$ *
,
��* +
amount
�� 
:
�� 
request
�� %
.
��% &
Amount
��& ,
,
��, -
dueDate
�� 
:
�� 
oldSI
�� $
.
��$ %
DueDate
��% ,
,
��, -
status
�� 
:
�� 
request
�� %
.
��% &
Status
��& ,
,
��, -
tanentId
��. 6
:
��6 7
oldSI
��8 =
.
��= >
TanentId
��> F
,
��F G
createdById
�� !
:
��! "
oldSI
��# (
.
��( )
CreatedById
��) 4
,
��4 5
	createdAt
��6 ?
:
��? @
oldSI
��A F
.
��F G
	CreatedAt
��G P
,
��P Q
showOnWebsite
�� #
:
��# $
oldSI
��% *
.
��* +
ShowOnWebsite
��+ 8
,
��8 9
deleted
��: A
:
��A B
oldSI
��C H
.
��H I
Deleted
��I P
,
��P Q
oldSI
�� 
.
�� 
Type
��  
)
�� 
;
�� 
saleInstallment
�� 
.
�� 
AddDomainEvent
�� *
(
��* +
new
��+ ./
!SaleInstallmentStatusUpdatedEvent
��/ P
(
��P Q
id
�� 
:
�� 
saleInstallment
�� $
.
��$ %
Id
��% '
,
��' (
saleId
�� 
:
�� 
saleInstallment
�� '
.
��' (
SaleId
��( .
,
��. /
status
�� 
:
�� 
saleInstallment
�� '
.
��' (
Status
��( .
)
�� 
)
�� 
;
�� 
_repository
�� 
.
�� 
Update
�� 
(
�� 
saleInstallment
�� .
)
��. /
;
��/ 0
return
�� 
await
�� 
Commit
�� 
(
��  
_repository
��  +
.
��+ ,

UnitOfWork
��, 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ValidationResult
�� *
>
��* +
Handle
��, 2
(
��2 3*
RemoveSaleInstallmentCommand
��3 O
request
��P W
,
��W X
CancellationToken
��Y j
cancellationToken
��k |
)
��| }
{
�� 	
var
�� 
saleInstallment
�� 
=
��  !
await
��" '
_repository
��( 3
.
��3 4
GetById
��4 ;
(
��; <
request
��< C
.
��C D
Id
��D F
,
��F G
false
��H M
)
��M N
;
��N O
if
�� 
(
�� 
saleInstallment
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
var
�� 
sale
�� 
=
�� 
await
��  
_saleRepository
��! 0
.
��0 1
GetById
��1 8
(
��8 9
saleInstallment
��9 H
.
��H I
SaleId
��I O
,
��O P
false
��Q V
,
��V W
true
��X \
,
��\ ]
false
��^ c
)
��c d
;
��d e
sale
�� 
.
�� $
InstallmentMonthNumber
�� +
--
��+ -
;
��- .
sale
�� 
.
�� 
SaleInstallments
�� %
.
��% &
Remove
��& ,
(
��, -
saleInstallment
��- <
)
��< =
;
��= >
sale
�� 
=
�� (
UpdateSaleInstallmentValue
�� 1
(
��1 2
sale
��2 6
)
��6 7
;
��7 8
if
�� 
(
�� 
saleInstallment
�� #
.
��# $
Status
��$ *
==
��+ -#
SaleInstallmentStatus
��. C
.
��C D
Paid
��D H
)
��H I
{
�� 
sale
�� 
.
�� 
RemainingAmount
�� (
+=
��) +
saleInstallment
��, ;
.
��; <
Amount
��< B
;
��B C
}
�� $
UpdateSaleDomainEvents
�� &
(
��& '
sale
��' +
)
��+ ,
;
��, -
_saleRepository
�� 
.
��  
Update
��  &
(
��& '
sale
��' +
)
��+ ,
;
��, -
_repository
�� 
.
�� 
Remove
�� "
(
��" #
saleInstallment
��# 2
)
��2 3
;
��3 4
return
�� 
await
�� 
Commit
�� #
(
��# $
_repository
��$ /
.
��/ 0

UnitOfWork
��0 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
AddError
�� 
(
�� 
$"
�� 
$str
�� 3
{
��3 4
request
��4 ;
.
��; <
Id
��< >
}
��> ?
$str
��? N
"
��N O
)
��O P
;
��P Q
return
�� 
ValidationResult
�� '
;
��' (
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
	PagedList
�� #
<
��# $
SaleInstallment
��$ 3
>
��3 4
>
��4 5
Handle
��6 <
(
��< =(
GetAllSaleInstallmentQuery
��= W
request
��X _
,
��_ `
CancellationToken
��a r 
cancellationToken��s �
)��� �
{
�� 	
return
�� 
await
�� 
_repository
�� $
.
��$ %
GetAll
��% +
(
��+ ,
request
��, 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
SaleInstallment
�� )
>
��) *
Handle
��+ 1
(
��1 2%
GetSaleInstallmentQuery
��2 I
request
��J Q
,
��Q R
CancellationToken
��S d
cancellationToken
��e v
)
��v w
{
�� 	
return
�� 
await
�� 
_repository
�� $
.
��$ %
GetById
��% ,
(
��, -
request
��- 4
.
��4 5
Id
��5 7
,
��7 8
request
��9 @
.
��@ A
IncludeSale
��A L
)
��L M
;
��M N
}
�� 	
private
�� 
async
�� 
Task
�� 
UpdateSaleValue
�� *
(
��* +
string
��+ 1
status
��2 8
,
��8 9
SaleInstallment
��: I
oldSi
��J O
,
��O P
decimal
��Q X
amount
��Y _
)
��_ `
{
�� 	
if
�� 
(
�� 
status
�� 
==
�� #
SaleInstallmentStatus
�� /
.
��/ 0
Paid
��0 4
||
��5 7
status
��8 >
==
��? A#
SaleInstallmentStatus
��B W
.
��W X
UnPaid
��X ^
)
��^ _
{
�� 
var
�� 
sale
�� 
=
�� 
await
��  
_saleRepository
��! 0
.
��0 1
GetById
��1 8
(
��8 9
oldSi
��9 >
.
��> ?
SaleId
��? E
)
��E F
;
��F G
if
�� 
(
�� 
status
�� 
==
�� #
SaleInstallmentStatus
�� 3
.
��3 4
Paid
��4 8
)
��8 9
{
�� 
sale
�� 
.
�� 
RemainingAmount
�� (
-=
��) +
amount
��, 2
;
��2 3
if
�� 
(
�� 
sale
�� 
.
�� 
RemainingAmount
�� ,
<=
��- /
$num
��0 1
)
��1 2
{
�� 
sale
�� 
.
�� 
RemainingAmount
�� ,
=
��- .
$num
��/ 0
;
��0 1
sale
�� 
.
�� 
Status
�� #
=
��$ %

SaleStatus
��& 0
.
��0 1
Closed
��1 7
;
��7 8
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
status
�� 
==
��  "#
SaleInstallmentStatus
��# 8
.
��8 9
UnPaid
��9 ?
&&
��@ B
oldSi
��C H
.
��H I
Status
��I O
==
��P R#
SaleInstallmentStatus
��S h
.
��h i
Paid
��i m
)
��m n
{
�� 
sale
�� 
.
�� 
RemainingAmount
�� (
+=
��) +
amount
��, 2
;
��2 3
if
�� 
(
�� 
sale
�� 
.
�� 
Status
�� #
==
��$ &

SaleStatus
��' 1
.
��1 2
Closed
��2 8
)
��8 9
{
�� 
sale
�� 
.
�� 
Status
�� #
=
��$ %

SaleStatus
��& 0
.
��0 1
Open
��1 5
;
��5 6
}
�� 
}
�� $
UpdateSaleDomainEvents
�� &
(
��& '
sale
��' +
)
��+ ,
;
��, -
_saleRepository
�� 
.
��  
Update
��  &
(
��& '
sale
��' +
)
��+ ,
;
��, -
}
�� 
}
�� 	
private
�� 
Sale
�� (
UpdateSaleInstallmentValue
�� /
(
��/ 0
Sale
��0 4
sale
��5 9
)
��9 :
{
�� 	
sale
�� 
.
�� 
InstallmentValue
�� !
=
��" #
Sale
��$ (
.
��( )'
CalculateInstallmentValue
��) B
(
��B C
sale
��C G
.
��G H
RemainingAmount
��H W
,
��W X
sale
��Y ]
.
��] ^$
InstallmentMonthNumber
��^ t
)
��t u
;
��u v
foreach
�� 
(
�� 
var
�� 
si
�� 
in
�� 
sale
�� #
.
��# $
SaleInstallments
��$ 4
)
��4 5
{
�� 
si
�� 
.
�� 
Amount
�� 
=
�� 
sale
��  
.
��  !
InstallmentValue
��! 1
;
��1 2
}
�� 
return
�� 
sale
�� 
;
�� 
}
�� 	
private
�� 
void
�� $
UpdateSaleDomainEvents
�� +
(
��+ ,
Sale
��, 0
sale
��1 5
)
��5 6
{
�� 	
sale
�� 
.
�� 
AddDomainEvent
�� 
(
��  
new
��  #
SaleUpdateEvent
��$ 3
(
��3 4
id
�� 
:
�� 
sale
�� 
.
�� 
Id
�� 
,
�� 

customerId
�� "
:
��" #
sale
��$ (
.
��( )

CustomerId
��) 3
,
��3 4
	startDate
��5 >
:
��> ?
sale
��@ D
.
��D E
	StartDate
��E N
,
��N O
status
��
 
:
�� 
sale
�� 
.
�� 
Status
�� 
,
�� 
amount
�� %
:
��% &
sale
��' +
.
��+ ,
Amount
��, 2
,
��2 3

paidAmount
��4 >
:
��> ?
sale
��@ D
.
��D E

PaidAmount
��E O
,
��O P
remainingAmount
��
 
:
�� 
sale
�� 
.
��  
RemainingAmount
��  /
,
��/ 0$
installmentMonthNumber
��1 G
:
��G H
sale
��I M
.
��M N$
InstallmentMonthNumber
��N d
,
��d e
installmentValue
��f v
:
��v w
sale
��x |
.
��| }
InstallmentValue��} �
,��� �

percentage
��
 
:
�� 
sale
�� 
.
�� 

Percentage
�� %
,
��% &
sale
��' +
.
��+ ,
ShowOnWebsite
��, 9
,
��9 :
sale
��; ?
.
��? @
Deleted
��@ G
)
��
 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\SaleInstallment\SaleInstallmentEventsHandler.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Handlers		  
{

 
public 

class (
SaleInstallmentEventsHandler -
:. / 
INotificationHandler 
< %
SaleInstallmentAddedEvent 6
>6 7
,7 8 
INotificationHandler 
< '
SaleInstallmentUpdatedEvent 8
>8 9
,9 : 
INotificationHandler 
< '
SaleInstallmentRemovedEvent 8
>8 9
{ 
public 
Task 
Handle 
( '
SaleInstallmentRemovedEvent 6
notification7 C
,C D
CancellationTokenE V
cancellationTokenW h
)h i
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( '
SaleInstallmentUpdatedEvent 6
notification7 C
,C D
CancellationTokenE V
cancellationTokenW h
)h i
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( %
SaleInstallmentAddedEvent 4
notification5 A
,A B
CancellationTokenC T
cancellationTokenU f
)f g
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ��
cD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\Sale\SaleCommandHandler.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Handlers  
{ 
public 

class 
SaleCommandHandler #
:$ %
CommandHandler& 4
,4 5
IRequestHandler 
< 
GetAllSalesQuery (
,( )
	PagedList* 3
<3 4
Sale4 8
>8 9
>9 :
,: ;
IRequestHandler 
< 
GetSaleQuery $
,$ %
Sale& *
>* +
,+ ,
IRequestHandler 
<  
CreateNewSaleCommand ,
,, -
ValidationResult. >
>> ?
,? @
IRequestHandler 
< 
UpdateSaleCommand )
,) *
ValidationResult+ ;
>; <
,< =
IRequestHandler 
< 
RemoveSaleCommand )
,) *
ValidationResult+ ;
>; <
{ 
private 
readonly 
ISaleRepository (
_saleRepository) 8
;8 9
private 
readonly &
ISaleInstallmentRepository 3&
_saleInstallmentRepository4 N
;N O
private 
readonly $
ISalesProductsRepository 1$
_salesProductsRepository2 J
;J K
public 
SaleCommandHandler !
(! "
ISaleRepository" 1
saleRepository2 @
,@ A&
ISaleInstallmentRepositoryB \%
saleInstallmentRepository] v
,v w$
ISalesProductsRepository $#
salesProductsRepository% <
)< =
{   	
_saleRepository!! 
=!! 
saleRepository!! ,
;!!, -&
_saleInstallmentRepository"" &
=""' (%
saleInstallmentRepository"") B
;""B C$
_salesProductsRepository## $
=##% &#
salesProductsRepository##' >
;##> ?
}$$ 	
public++ 
async++ 
Task++ 
<++ 
ValidationResult++ *
>++* +
Handle++, 2
(++2 3 
CreateNewSaleCommand++3 G
request++H O
,++O P
CancellationToken++Q b
cancellationToken++c t
)++t u
{,, 	
if-- 
(-- 
!-- 
request-- 
.-- 
IsValid--  
(--  !
)--! "
)--" #
return--$ *
request--+ 2
.--2 3
ValidationResult--3 C
;--C D
var.. 
sale.. 
=.. 
new.. 
Sale.. 
(..  
id// 
:// 
request// 
.// 
Id// 
,// 

customerId//  *
://* +
request//, 3
.//3 4

CustomerId//4 >
,//> ?
	startDate//@ I
://I J
request//K R
.//R S
	StartDate//S \
,//\ ]
status00 
:00 
request00 
.00  
Status00  &
,00& '
amount00( .
:00. /
request000 7
.007 8
Amount008 >
,00> ?

paidAmount00@ J
:00J K
request00L S
.00S T

PaidAmount00T ^
,00^ _
remainingAmount11 
:11  
request11! (
.11( )
RemainingAmount11) 8
,118 9"
installmentMonthNumber11: P
:11P Q
request11R Y
.11Y Z"
InstallmentMonthNumber11Z p
,11p q
installmentValue	11r �
:
11� �
request
11� �
.
11� �
InstallmentValue
11� �
,
11� �

percentage22 
:22 
request22 #
.22# $

Perecntage22$ .
,22. /
request220 7
.227 8
SaleInstallments228 H
,22H I
request22J Q
.22Q R
CreatedById22R ]
,22] ^
request22_ f
.22f g
TanentId22g o
,22o p
request22q x
.22x y
	CreatedAt	22y �
,
22� �
request
22� �
.
22� �
ShowOnWebsite
22� �
,
22� �
request33 
.33 
Deleted33 
)44 
;44 
if66 
(66 
request66 
.66 
Products66  
!=66! #
null66$ (
&&66) +
request66, 3
.663 4
Products664 <
.66< =
Count66= B
>66C D
$num66E F
)66F G
{77 
var88 
salesProducts88 !
=88" #
new88$ '
List88( ,
<88, -
SalesProducts88- :
>88: ;
(88; <
)88< =
;88= >
foreach99 
(99 
var99 
prod99 !
in99" $
request99% ,
.99, -
Products99- 5
)995 6
{:: 
salesProducts;; !
.;;! "
Add;;" %
(;;% &
new;;& )
SalesProducts;;* 7
(;;7 8
);;8 9
{;;: ;
	ProductId;;< E
=;;F G
prod;;H L
.;;L M
Id;;M O
,;;O P
Sale;;Q U
=;;V W
sale;;X \
};;] ^
);;^ _
;;;_ `
}<< 
sale== 
.== 
SalesProducts== "
===# $
salesProducts==% 2
;==2 3
}>> 
sale?? 
.?? 
AddDomainEvent?? 
(??  
new??  #
SaleCreatedEvent??$ 4
(??4 5
id@@ 
:@@ 
sale@@ 
.@@ 
Id@@ 
,@@ 

customerId@@ (
:@@( )
sale@@* .
.@@. /

CustomerId@@/ 9
,@@9 :
	startDate@@; D
:@@D E
sale@@F J
.@@J K
	StartDate@@K T
,@@T U
statusAA 
:AA 
saleAA 
.AA 
StatusAA #
,AA# $
amountAA% +
:AA+ ,
saleAA- 1
.AA1 2
AmountAA2 8
,AA8 9

paidAmountAA: D
:AAD E
saleAAF J
.AAJ K

PaidAmountAAK U
,AAU V
remainingAmountBB 
:BB  
saleBB! %
.BB% &
RemainingAmountBB& 5
,BB5 6"
installmentMonthNumberBB7 M
:BBM N
saleBBO S
.BBS T"
InstallmentMonthNumberBBT j
,BBj k
installmentValueBBl |
:BB| }
sale	BB~ �
.
BB� �
InstallmentValue
BB� �
,
BB� �

percentageCC 
:CC 
saleCC  
.CC  !

PercentageCC! +
,CC+ ,
saleCC- 1
.CC1 2
CreatedByIdCC2 =
,CC= >
saleCC? C
.CCC D
TanentIdCCD L
,CCL M
saleCCN R
.CCR S
	CreatedAtCCS \
,CC\ ]
saleCC^ b
.CCb c
ShowOnWebsiteCCc p
,CCp q
saleDD 
.DD 
DeletedDD 
)EE 
)EE 
;EE 
_saleRepositoryGG 
.GG 
AddGG 
(GG  
saleGG  $
)GG$ %
;GG% &
returnHH 
awaitHH 
CommitHH 
(HH  
_saleRepositoryHH  /
.HH/ 0

UnitOfWorkHH0 :
)HH: ;
;HH; <
}II 	
publicPP 
asyncPP 
TaskPP 
<PP 
ValidationResultPP *
>PP* +
HandlePP, 2
(PP2 3
UpdateSaleCommandPP3 D
requestPPE L
,PPL M
CancellationTokenPPN _
cancellationTokenPP` q
)PPq r
{QQ 	
ifRR 
(RR 
!RR 
requestRR 
.RR 
IsValidRR  
(RR  !
)RR! "
)RR" #
returnRR$ *
requestRR+ 2
.RR2 3
ValidationResultRR3 C
;RRC D
varSS 
saleSS 
=SS 
awaitSS 
_saleRepositorySS ,
.SS, -
GetByIdSS- 4
(SS4 5
requestSS5 <
.SS< =
IdSS= ?
,SS? @
trueSSA E
,SSE F
trueSSG K
,SSK L
falseSSM R
)SSR S
;SSS T
ifTT 
(TT 
saleTT 
!=TT 
nullTT 
)TT 
{UU 
varWW 
newProductsWW 
=WW  !
requestWW" )
.WW) *
ProductsWW* 2
.WW2 3
WhereWW3 8
(WW8 9
pWW9 :
=>WW; =
saleWW> B
.WWB C
SalesProductsWWC P
.WWP Q
AnyWWQ T
(WWT U
spWWU W
=>WWX Z
spWW[ ]
.WW] ^
	ProductIdWW^ g
==WWh j
pWWk l
.WWl m
IdWWm o
)WWo p
==WWq s
falseWWt y
)WWy z
.WWz {
ToList	WW{ �
(
WW� �
)
WW� �
;
WW� �
varYY !
toRemoveSalesProductsYY )
=YY* +
saleYY, 0
.YY0 1
SalesProductsYY1 >
.YY> ?
WhereYY? D
(YYD E
spYYE G
=>YYH J
requestYYK R
.YYR S
ProductsYYS [
.YY[ \
AnyYY\ _
(YY_ `
pYY` a
=>YYb d
pYYe f
.YYf g
IdYYg i
==YYj l
spYYm o
.YYo p
	ProductIdYYp y
)YYy z
==YY{ }
false	YY~ �
)
YY� �
.
YY� �
ToList
YY� �
(
YY� �
)
YY� �
;
YY� �
ifZZ 
(ZZ 
newProductsZZ 
.ZZ  
CountZZ  %
(ZZ% &
)ZZ& '
>ZZ( )
$numZZ* +
)ZZ+ ,
{[[ 
foreach\\ 
(\\ 
var\\  
product\\! (
in\\) +
newProducts\\, 7
)\\7 8
{]] 
sale^^ 
.^^ 
SalesProducts^^ *
.^^* +
Add^^+ .
(^^. /
SalesProducts^^/ <
.^^< =
createSalesProducts^^= P
(^^P Q
product^^Q X
.^^X Y
Id^^Y [
,^^[ \
sale^^] a
)^^a b
)^^b c
;^^c d
}__ 
}`` 
ifaa 
(aa !
toRemoveSalesProductsaa )
.aa) *
Countaa* /
(aa/ 0
)aa0 1
>aa2 3
$numaa4 5
)aa5 6
{bb 
foreachcc 
(cc 
varcc  
spcc! #
incc$ &!
toRemoveSalesProductscc' <
)cc< =
{dd $
_salesProductsRepositoryee 0
.ee0 1
Removeee1 7
(ee7 8
spee8 :
)ee: ;
;ee; <
}ff 
}gg 
varii 
remainingAmountii #
=ii$ %
requestii& -
.ii- .
RemainingAmountii. =
;ii= >
varkk 
installmentValuekk $
=kk% &
requestkk' .
.kk. /
InstallmentValuekk/ ?
;kk? @
ifnn 
(nn 
salenn 
.nn 
Statusnn 
!=nn  "
requestnn# *
.nn* +
Statusnn+ 1
)nn1 2
{oo 
ifpp 
(pp 
requestpp 
.pp  
Statuspp  &
==pp' )

SaleStatuspp* 4
.pp4 5
Closedpp5 ;
)pp; <
{qq 
remainingAmountrr '
=rr( )
$numrr* +
;rr+ ,
}ss 
}tt 
varvv (
InstallmentMonthNumberChangevv 0
=vv1 2
salevv3 7
.vv7 8"
InstallmentMonthNumbervv8 N
-vvO P
requestvvQ X
.vvX Y"
InstallmentMonthNumbervvY o
;vvo p
ifxx 
(xx (
InstallmentMonthNumberChangexx 0
>xx1 2
$numxx3 4
)xx4 5
{yy 
for{{ 
({{ 
int{{ 
i{{ 
={{  
$num{{! "
;{{" #
i{{$ %
<{{& '(
InstallmentMonthNumberChange{{( D
;{{D E
i{{F G
++{{G I
){{I J
{|| 
var}} 
si}} 
=}}  
sale}}! %
.}}% &
SaleInstallments}}& 6
.}}6 7
LastOrDefault}}7 D
(}}D E
)}}E F
;}}F G&
_saleInstallmentRepository~~ 2
.~~2 3
Remove~~3 9
(~~9 :
si~~: <
)~~< =
;~~= >
sale 
. 
SaleInstallments -
.- .
Remove. 4
(4 5
si5 7
)7 8
;8 9
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
si
�� 
in
��  "
sale
��# '
.
��' (
SaleInstallments
��( 8
)
��8 9
{
�� 
si
�� 
.
�� 
Amount
�� 
=
�� 
installmentValue
��  0
;
��0 1
if
�� 
(
�� 
remainingAmount
�� '
==
��( *
$num
��+ ,
||
��- /
request
��0 7
.
��7 8
Status
��8 >
==
��? A

SaleStatus
��B L
.
��L M
Closed
��M S
)
��S T
si
��U W
.
��W X
Status
��X ^
=
��_ `#
SaleInstallmentStatus
��a v
.
��v w
Paid
��w {
;
��{ |
if
�� 
(
�� 
sale
�� 
.
�� 
	StartDate
�� &
!=
��' )
request
��* 1
.
��1 2
	StartDate
��2 ;
)
��; <
si
��= ?
.
��? @
DueDate
��@ G
=
��H I
request
��J Q
.
��Q R
	StartDate
��R [
;
��[ \(
_saleInstallmentRepository
�� .
.
��. /
Update
��/ 5
(
��5 6
si
��6 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� *
InstallmentMonthNumberChange
�� 0
<
��1 2
$num
��3 4
)
��4 5
{
�� *
InstallmentMonthNumberChange
�� 0
=
��1 2
Math
��3 7
.
��7 8
Abs
��8 ;
(
��; <*
InstallmentMonthNumberChange
��< X
)
��X Y
;
��Y Z
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '*
InstallmentMonthNumberChange
��( D
;
��D E
i
��F G
++
��G I
)
��I J
{
�� 
var
�� 
si
�� 
=
��  
SaleInstallment
��! 0
.
��0 1#
CreateSaleInstallment
��1 F
(
��F G
Guid
��  $
.
��$ %
NewGuid
��% ,
(
��, -
)
��- .
,
��. /
sale
��  $
.
��$ %
Id
��% '
,
��' (
installmentValue
��) 9
,
��9 :
sale
��; ?
.
��? @
	StartDate
��@ I
.
��I J
	AddMonths
��J S
(
��S T
sale
��T X
.
��X Y$
InstallmentMonthNumber
��Y o
+
��p q
i
��r s
)
��s t
,
��t u
sale
��  $
.
��$ %
Status
��% +
,
��+ ,
sale
��- 1
.
��1 2
TanentId
��2 :
,
��: ;
sale
��< @
.
��@ A
CreatedById
��A L
,
��L M
sale
��N R
.
��R S
	CreatedAt
��S \
,
��\ ]
sale
��^ b
.
��b c
ShowOnWebsite
��c p
,
��p q
sale
��r v
.
��v w
Deleted
��w ~
)
��~ 
;�� �
sale
�� 
.
�� 
SaleInstallments
�� -
.
��- .
Add
��. 1
(
��1 2
si
��2 4
)
��4 5
;
��5 6(
_saleInstallmentRepository
�� 2
.
��2 3
Add
��3 6
(
��6 7
si
��7 9
)
��9 :
;
��: ;
}
�� 
}
�� 
sale
�� 
.
�� 

UpdateSale
�� 
(
��  
id
�� 
:
�� 
request
�� 
.
�� 
Id
�� 
,
�� 

customerId
��  *
:
��* +
request
��, 3
.
��3 4

CustomerId
��4 >
,
��> ?
	startDate
��@ I
:
��I J
request
��K R
.
��R S
	StartDate
��S \
,
��\ ]
status
�� 
:
�� 
request
�� 
.
��  
Status
��  &
,
��& '
amount
��( .
:
��. /
request
��0 7
.
��7 8
Amount
��8 >
,
��> ?

paidAmount
��@ J
:
��J K
request
��L S
.
��S T

PaidAmount
��T ^
,
��^ _
remainingAmount
�� 
:
��  
remainingAmount
��! 0
,
��0 1$
installmentMonthNumber
��2 H
:
��H I
request
��J Q
.
��Q R$
InstallmentMonthNumber
��R h
,
��h i
installmentValue
��  
:
��  !
installmentValue
��" 2
,
��2 3

percentage
��4 >
:
��> ?
request
��@ G
.
��G H

Perecntage
��H R
,
��R S
request
��T [
.
��[ \
ShowOnWebsite
��\ i
,
��i j
request
�� 
.
�� 
Deleted
�� 
)
��  
;
��  !
sale
�� 
.
�� 
AddDomainEvent
�� #
(
��# $
new
��$ '
SaleUpdateEvent
��( 7
(
��7 8
id
�� 
:
�� 
sale
�� 
.
�� 
Id
�� 
,
��  

customerId
��! +
:
��+ ,
sale
��- 1
.
��1 2

CustomerId
��2 <
,
��< =
	startDate
��> G
:
��G H
sale
��I M
.
��M N
	StartDate
��N W
,
��W X
status
�� 
:
�� 
sale
��  
.
��  !
Status
��! '
,
��' (
amount
��) /
:
��/ 0
sale
��1 5
.
��5 6
Amount
��6 <
,
��< =

paidAmount
��> H
:
��H I
sale
��J N
.
��N O

PaidAmount
��O Y
,
��Y Z
remainingAmount
�� #
:
��# $
sale
��% )
.
��) *
RemainingAmount
��* 9
,
��9 :$
installmentMonthNumber
��; Q
:
��Q R
sale
��S W
.
��W X$
InstallmentMonthNumber
��X n
,
��n o
installmentValue
�� $
:
��$ %
sale
��& *
.
��* +
InstallmentValue
��+ ;
,
��; <

percentage
��= G
:
��G H
sale
��I M
.
��M N

Percentage
��N X
,
��X Y
request
��Z a
.
��a b
ShowOnWebsite
��b o
,
��o p
request
��q x
.
��x y
Deleted��y �
)��� �
)��� �
;��� �
_saleRepository
�� 
.
��  
Update
��  &
(
��& '
sale
��' +
)
��+ ,
;
��, -
return
�� 
await
�� 
Commit
�� #
(
��# $
_saleRepository
��$ 3
.
��3 4

UnitOfWork
��4 >
)
��> ?
;
��? @
}
�� 
else
�� 
{
�� 
AddError
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
return
�� 
ValidationResult
�� '
;
��' (
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ValidationResult
�� *
>
��* +
Handle
��, 2
(
��2 3
RemoveSaleCommand
��3 D
message
��E L
,
��L M
CancellationToken
��N _
cancellationToken
��` q
)
��q r
{
�� 	
if
�� 
(
�� 
!
�� 
message
�� 
.
�� 
IsValid
��  
(
��  !
)
��! "
)
��" #
return
��$ *
message
��+ 2
.
��2 3
ValidationResult
��3 C
;
��C D
var
�� 
customer
�� 
=
�� 
await
��  
_saleRepository
��! 0
.
��0 1
GetById
��1 8
(
��8 9
message
��9 @
.
��@ A
Id
��A C
)
��C D
;
��D E
if
�� 
(
�� 
customer
�� 
is
�� 
null
��  
)
��  !
{
�� 
AddError
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
return
�� 
ValidationResult
�� '
;
��' (
}
�� 
customer
�� 
.
�� 
AddDomainEvent
�� #
(
��# $
new
��$ '
SaleRemovedEvent
��( 8
(
��8 9
message
��9 @
.
��@ A
Id
��A C
)
��C D
)
��D E
;
��E F
_saleRepository
�� 
.
�� 
Remove
�� "
(
��" #
customer
��# +
)
��+ ,
;
��, -
return
�� 
await
�� 
Commit
�� 
(
��  
_saleRepository
��  /
.
��/ 0

UnitOfWork
��0 :
)
��: ;
;
��; <
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
_saleRepository
�� 
.
�� 
Dispose
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
	PagedList
�� #
<
��# $
Sale
��$ (
>
��( )
>
��) *
Handle
��+ 1
(
��1 2
GetAllSalesQuery
��2 B
request
��C J
,
��J K
CancellationToken
��L ]
cancellationToken
��^ o
)
��o p
{
�� 	
return
�� 
await
�� 
_saleRepository
�� (
.
��( )
GetAll
��) /
(
��/ 0
request
��0 7
)
��7 8
;
��8 9
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Sale
�� 
>
�� 
Handle
��  &
(
��& '
GetSaleQuery
��' 3
request
��4 ;
,
��; <
CancellationToken
��= N
cancellationToken
��O `
)
��` a
{
�� 	
return
�� 
await
�� 
_saleRepository
�� (
.
��( )
GetById
��) 0
(
��0 1
request
��1 8
.
��8 9
Id
��9 ;
,
��; <
request
��= D
.
��D E
IncludeProducts
��E T
,
��T U
request
��V ]
.
��] ^%
IncludeSaleInstallments
��^ u
,
��u v
request
��v }
.
��} ~
IncludeCustomers��~ �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
aD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Handlers\Sale\SaleEventHandler.cs
	namespace		 	
Aksaty		
 
.		 
Domain		 
.		 
Handlers		  
{

 
public 

class 
SaleEventHandler !
:" # 
INotificationHandler$ 8
<8 9
SaleCreatedEvent9 I
>I J
,J K 
INotificationHandler 
< 
SaleUpdateEvent ,
>, -
,- . 
INotificationHandler 
< 
SaleRemovedEvent -
>- .
{ 
public 
Task 
Handle 
( 
SaleUpdateEvent *
message+ 2
,2 3
CancellationToken4 E
cancellationTokenF W
)W X
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( 
SaleCreatedEvent +
message, 3
,3 4
CancellationToken5 F
cancellationTokenG X
)X Y
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
Handle 
( 
SaleRemovedEvent +
message, 3
,3 4
CancellationToken5 F
cancellationTokenG X
)X Y
{ 	
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}%% 
}&& �
hD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Interfaces\Product\IProductRepository.cs
	namespace 	
Aksaty
 
. 
Domain 
. 

Interfaces "
{		 
public

 

	interface

 
IProductRepository

 '
:

' (
IRepository

( 3
<

3 4
Product

4 ;
>

; <
{ 
Task 
< 
	PagedList 
< 
Product 
> 
>  
GetAll! '
(' (
GetAllProductsQuery( ;
query< A
)A B
;B C
Task 
< 
Product 
> 
GetById 
( 
Guid "
Id# %
)% &
;& '
Task 
< 
Product 
> 
GetById 
( 
GetProductQuery -
getProductQuery. =
)= >
;> ?
void 
Add 
( 
Product 
product  
)  !
;! "
void 
Update 
( 
Product 
product #
)# $
;$ %
void 
Remove 
( 
Product 
product #
)# $
;$ %
} 
} �
xD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Interfaces\SaleInstallment\ISaleInstallmentRepository.cs
	namespace

 	
Aksaty


 
.

 
Domain

 
.

 

Interfaces

 "
{ 
public 

	interface &
ISaleInstallmentRepository /
:0 1
IRepository2 =
<= >
SaleInstallment> M
>M N
{ 
Task 
< 
	PagedList 
< 
SaleInstallment &
>& '
>' (
GetAll) /
(/ 0&
GetAllSaleInstallmentQuery0 J
queryK P
)P Q
;Q R
Task 
< 
List 
< 
SaleInstallment !
>! "
>" #

GetAllList$ .
(. /&
GetAllSaleInstallmentQuery/ I
queryJ O
,O P

ExpressionQ [
<[ \
Func\ `
<` a
SaleInstallmenta p
,p q
boolr v
>v w
>w x
expy |
=| }
null	} �
)
� �
;
� �
Task 
< 
SaleInstallment 
> 
GetById %
(% &
Guid& *
Id+ -
,- .
bool. 2
?2 3
includeSale4 ?
)? @
;@ A
void 
Add 
( 
SaleInstallment  
saleInstallment! 0
)0 1
;1 2
void 
Update 
( 
SaleInstallment #
saleInstallment$ 3
)3 4
;4 5
void 
Remove 
( 
SaleInstallment #
saleInstallment$ 3
)3 4
;4 5
void 
DetachEntity 
( 
SaleInstallment )
saleInstallment* 9
)9 :
;: ;
} 
} �
tD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Interfaces\SalesProducts\ISalesProductsRepository.cs
	namespace 	
Aksaty
 
. 
Domain 
. 

Interfaces "
{ 
public		 

	interface		 $
ISalesProductsRepository		 -
:		. /
IRepository		0 ;
<		; <
SalesProducts		< I
>		I J
{

 
void 
Remove 
( 
SalesProducts !
salesProducts" /
)/ 0
;0 1
} 
} �
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Interfaces\Sale\ISaleRepository.cs
	namespace 	
Aksaty
 
. 
Domain 
. 

Interfaces "
{		 
public

 

	interface

 
ISaleRepository

 $
:

% &
IRepository

' 2
<

2 3
Sale

3 7
>

7 8
{ 
Task 
< 
Sale 
> 
GetById 
( 
Guid 
Id  "
," #
bool# '
includeProducts( 7
,7 8
bool8 <
includeInstallments= P
,P Q
boolQ U
includeCustomersV f
)f g
;g h
Task 
< 
Sale 
> 
GetById 
( 
Guid 
Id  "
)" #
;# $
Task 
< 
	PagedList 
< 
Sale 
> 
> 
GetAll $
($ %
GetAllSalesQuery% 5
queryParams6 A
)A B
;B C
void 
Add 
( 
Sale 
Sale 
) 
; 
void 
Update 
( 
Sale 
Sale 
) 
; 
void 
Remove 
( 
Sale 
Sale 
) 
; 
Sale 
Create 
( 
Sale 
sale 
) 
; 
} 
} �
YD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Models\Product\Product.cs
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
class 
Product 
: 

BaseEntity %
,% &
IAggregateRoot' 5
{ 
public 
Product 
( 
Guid 
id 
, 
Guid  $
?$ %
imageId& -
,- .
string/ 5
name6 :
,: ;
decimal< C
amountD J
,J K
stringL R
categoryS [
,[ \
string] c
tanentIdd l
,l m
stringn t
createdById	u �
,
� �
DateTime
� �
	createdAt
� �
,
� �
bool
� �
showOnWebsite
� �
,
� �
bool
� �
deleted
� �
)
� �
{ 	
Id 
= 
id 
; 
ImageId 
= 
imageId 
; 
Name 
= 
name 
; 
Amount 
= 
amount 
; 
Category 
= 
category 
;  
CreatedById 
= 
createdById %
;% &
TanentId 
= 
tanentId 
;  
	CreatedAt 
= 
	createdAt !
;! "
ShowOnWebsite 
= 
showOnWebsite )
;) *
Deleted 
= 
deleted 
; 
} 	
public 
Guid 
? 
ImageId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 

Attachment 
Image 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
[   	
Column  	 
(   
TypeName   
=   
$str   *
)  * +
]  + ,
public!! 
string!! 
Category!! 
{!!  
get!!! $
;!!$ %
set!!& )
;!!) *
}!!+ ,
public"" 
List"" 
<"" 
SalesProducts"" !
>""! "
SalesProducts""# 0
{""1 2
get""3 6
;""6 7
set""8 ;
;""; <
}""= >
}## 
}$$ �!
iD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Models\SaleInstallment\SaleInstallment.cs
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
public 	
class
 
SaleInstallment 
:  !

BaseEntity" ,
,, -
IAggregateRoot. <
{ 
public 
SaleInstallment 
( 
Guid 
id 
, 
Guid 
saleId 
, 
decimal 
amount #
,# $
DateTime$ ,
dueDate- 4
,4 5
string 
status 
, 
string 
tanentId &
,& '
string' -
createdById. 9
,9 :
DateTime 
	createdAt 
, 
bool 
showOnWebsite  -
,- .
bool. 2
deleted3 :
,: ;
string< B
typeC G
)G H
{ 	
Id 
= 
id 
; 
SaleId 
= 
saleId 
; 
Amount 
= 
amount 
; 
DueDate 
= 
dueDate 
; 
Status 
= 
status 
; 
TanentId 
= 
tanentId 
;  
CreatedById 
= 
createdById %
;% &
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
; 
Type 
= 
type 
; 
} 	
public 
Guid 
SaleId 
{ 
get  
;  !
set" %
;% &
}' (
[   	

ForeignKey  	 
(   
$str   
)   
]   
public!! 
Sale!! 
Sale!! 
{!! 
get!! 
;!! 
set!!  #
;!!# $
}!!% &
public"" 
decimal"" 
Amount"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public## 
DateTime## 
DueDate## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
string$$ 
Status$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public%% 
string%% 
Type%% 
{%% 
get%%  
;%%  !
set%%" %
;%%% &
}%%' (
public&& 
static&& 
SaleInstallment&& %!
CreateSaleInstallment&&& ;
(&&; <
Guid&&< @
id&&A C
,&&C D
Guid'' 
saleId'' 
,'' 
decimal'' 
amount'' #
,''# $
DateTime''% -
dueDate''. 5
,''5 6
string(( 
status(( 
,(( 
string(( 
tanentId(( &
,((& '
string((( .
createdById((/ :
,((: ;
DateTime)) 
	createdAt)) 
,)) 
bool))  
showOnWebsite))! .
,)). /
bool))0 4
deleted))5 <
,))< =
string))= C
type))D H
=))H I
$str))I K
)))K L
{** 	
return++ 
new++ 
SaleInstallment++ &
(++& '
id++' )
,++) *
saleId++* 0
,++0 1
amount++1 7
,++7 8
dueDate++8 ?
,++? @
status++@ F
,++F G
tanentId++G O
,++O P
createdById++P [
,++[ \
	createdAt++\ e
,++e f
showOnWebsite++f s
,++s t
deleted++t {
,++{ |
type	++} �
)
++� �
;
++� �
},, 	
}-- 
}.. �
eD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Models\SalesProducts\SalesProducts.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Models 
{		 
public

 

class

 
SalesProducts

 
:

 
IAggregateRoot

  .
{ 
public 
Guid 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
SaleId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Sale 
Sale 
{ 
get 
; 
set  #
;# $
}% &
public 
Product 
Product 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
SalesProducts 
( 
) 
{ 	
} 	
public 
SalesProducts 
( 
Guid !
	productId" +
,+ ,
Sale, 0
sale1 5
)5 6
{ 	
Sale 
= 
sale 
; 
	ProductId 
= 
	productId !
;! "
} 	
public 
static 
SalesProducts #
createSalesProducts$ 7
(7 8
Guid8 <
	productId= F
,F G
SaleH L
saleM Q
)Q R
{ 	
return 
new 
SalesProducts $
($ %
	productId% .
,. /
sale/ 3
)3 4
;4 5
} 	
} 
} �A
SD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Models\Sale\Sale.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Models 
{		 
public

 

class

 
Sale

 
:

 

BaseEntity

 "
,

" #
IAggregateRoot

$ 2
{ 
public 
Sale 
( 
Guid
 
id 
, 
Guid
 
? 

customerId 
, 
DateTime $
	startDate% .
,. /
string0 6
status7 =
,= >
decimal
 
amount 
, 
decimal !

paidAmount" ,
,, -
decimal. 5
remainingAmount6 E
,E F
int
 "
installmentMonthNumber $
,$ %
int& )
installmentValue* :
,: ;
decimal< C

percentageD N
,N O
List
 
< 
SaleInstallment 
> 
saleInstallments  0
,0 1
string1 7
createdById8 C
,C D
stringD J
tanentIdK S
,S T
DateTime
 
	createdAt 
, 
bool !
showOnWebsite" /
,/ 0
bool0 4
deleted5 <
)< =
{ 	
Id 
= 
id 
; 

CustomerId 
= 

customerId #
;# $
	StartDate 
= 
	startDate !
;! "
Status 
= 
status 
; 
Amount 
= 
amount 
; 

PaidAmount 
= 

paidAmount #
;# $
RemainingAmount 
= 
remainingAmount -
;- ."
InstallmentMonthNumber "
=# $"
installmentMonthNumber% ;
;; <
InstallmentValue 
= 
installmentValue /
;/ 0

Percentage 
= 

percentage #
;# $
SaleInstallments 
= 
saleInstallments /
;/ 0
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
;"") *
Deleted## 
=## 
deleted## 
;## 
}$$ 	
public%% 
Sale%% 
(%% 
)%% 
{&& 	
}(( 	
public)) 
Guid)) 
?)) 

CustomerId)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
[** 	

ForeignKey**	 
(** 
$str**  
)**  !
]**! "
public++ 
Aksaty++ 
.++ 
Domain++ 
.++ 
Models++ #
.++# $
Customer++$ ,
Customer++- 5
{++6 7
get++8 ;
;++; <
set++= @
;++@ A
}++B C
public,, 
DateTime,, 
	StartDate,, !
{,," #
get,,$ '
;,,' (
private,,) 0
set,,1 4
;,,4 5
},,6 7
public-- 
string-- 
Status-- 
{-- 
get-- "
;--" #
set--$ '
;--' (
}--) *
public.. 
decimal.. 
Amount.. 
{.. 
get..  #
;..# $
set..& )
;..) *
}..+ ,
public// 
decimal// 

PaidAmount// !
{//" #
get//$ '
;//' (
set//* -
;//- .
}/// 0
public00 
decimal00 
RemainingAmount00 &
{00' (
get00) ,
;00, -
set00/ 2
;002 3
}004 5
public11 
int11 "
InstallmentMonthNumber11 )
{11* +
get11, /
;11/ 0
set112 5
;115 6
}117 8
public22 
int22 
InstallmentValue22 #
{22$ %
get22& )
;22) *
set22, /
;22/ 0
}221 2
public33 
decimal33 

Percentage33 !
{33" #
get33$ '
;33' (
set33* -
;33- .
}33/ 0
public44 
List44 
<44 
SalesProducts44 !
>44! "
SalesProducts44# 0
{441 2
get443 6
;446 7
set448 ;
;44; <
}44= >
public55 
List55 
<55 
SaleInstallment55 #
>55# $
SaleInstallments55% 5
{556 7
get558 ;
;55; <
set55= @
;55@ A
}55B C
public88 
void88 

UpdateSale88 
(88 
Guid88 #
id88$ &
,88& '
Guid99
 
?99 

customerId99 
,99 
DateTime99 $
	startDate99% .
,99. /
string990 6
status997 =
,99= >
decimal::
 
amount:: 
,:: 
decimal:: !

paidAmount::" ,
,::, -
decimal::. 5
remainingAmount::6 E
,::E F
int;;
 "
installmentMonthNumber;; $
,;;$ %
int;;& )
installmentValue;;* :
,;;: ;
decimal;;< C

percentage;;D N
,;;N O
bool<<
 
showOnWebsite<< 
,<< 
bool<< "
deleted<<# *
)<<* +
{== 	
Id>> 
=>> 
id>> 
;>> 

CustomerId?? 
=?? 

customerId?? #
;??# $
	StartDate@@ 
=@@ 
	startDate@@ !
;@@! "
StatusAA 
=AA 
statusAA 
;AA 
AmountBB 
=BB 
amountBB 
;BB 

PaidAmountCC 
=CC 

paidAmountCC #
;CC# $
RemainingAmountDD 
=DD 
remainingAmountDD -
;DD- ."
InstallmentMonthNumberEE "
=EE# $"
installmentMonthNumberEE% ;
;EE; <
InstallmentValueFF 
=FF 
installmentValueFF /
;FF/ 0

PercentageGG 
=GG 

percentageGG #
;GG# $
ShowOnWebsiteHH 
=HH 
showOnWebsiteHH )
;HH) *
DeletedII 
=II 
deletedII 
;II 
}JJ 	
publicSS 
staticSS 
intSS %
CalculateInstallmentValueSS 3
(SS3 4
decimalSS4 ;
	remainingSS< E
,SSE F
intSSF I
monthNumberSSJ U
)SSU V
{TT 	
returnUU 
ConvertUU 
.UU 
ToInt32UU "
(UU" #
(UU# $
MathUU$ (
.UU( )
CeilingUU) 0
(UU0 1
	remainingUU1 :
/UU; <
monthNumberUU= H
)UUH I
)UUI J
)UUJ K
;UUK L
}VV 	
public]] 
static]] 
decimal]] *
CalculateRemainingWithInterest]] <
(]]< =
decimal]]= D
	remaining]]E N
,]]N O
decimal]]O V

percentage]]W a
)]]a b
{^^ 	
return__ 
(__ 
	remaining__ 
+__ 
	remaining__  )
*__* +
(__, -

percentage__- 7
/__7 8
$num__8 ;
)__; <
)__< =
;__= >
}`` 	
publicgg 
staticgg 
decimalgg 
CalculateInterestgg /
(gg/ 0
decimalgg0 7
	remaininggg8 A
,ggA B
decimalggC J

percentageggK U
)ggU V
{hh 	
returnii 
(ii 
	remainingii 
*ii 
(ii  !

percentageii! +
/ii+ ,
$numii, /
)ii/ 0
)ii0 1
;ii1 2
}jj 	
}kk 
}ll �
fD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\Product\GetAllProductsQuery.cs
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
GetAllProductsQuery

 $
:

$ %
	BaseQuery

% .
,

. /
IRequest

0 8
<

8 9
	PagedList

9 B
<

B C
Product

C J
>

J K
>

K L
{ 
public 
decimal 
? 
	MinAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
? 
	MaxAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
IncludeSales !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
GetAllProductsQuery "
(" #
decimal# *
?* +
	maxAmount, 5
,5 6
decimal6 =
?= >
	minAmount? H
,H I
boolI M
?M N
includeSalesO [
,[ \
DateTime\ d
?d e
createdAtFromf s
,s t
DateTimet |
?| }
createdAtTo	~ �
)
� �
{ 	
	MinAmount 
= 
	minAmount !
;! "
	MaxAmount 
= 
	maxAmount !
;! "
IncludeSales 
= 
includeSales '
;' (
CreatedAtFrom 
= 
createdAtFrom )
;) *
CreatedAtTo 
= 
createdAtTo %
;% &
} 	
} 
} �
bD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\Product\GetProductQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public		 

class		 
GetProductQuery		  
:		  !
IRequest		! )
<		) *
Product		* 1
>		1 2
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
bool 
IncludeSales  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
false1 6
;6 7
public 
GetProductQuery 
( 
Guid #
id$ &
,& '
bool' +
includeSales, 8
)8 9
{ 	
Id 
= 
id 
; 
IncludeSales 
= 
includeSales '
;' (
} 	
} 
} �(
uD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\SaleInstallment\GetAllSaleInstallmentQuery.cs
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
 &
GetAllSaleInstallmentQuery

 +
:

, -
	BaseQuery

. 7
,

7 8
IRequest

9 A
<

A B
	PagedList

B K
<

K L
SaleInstallment

L [
>

[ \
>

\ ]
{ 
public 
Guid 
SaleId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Guid 

CustomerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
? 

MinDueDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 

MaxDueDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 
? 
	MinAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
? 
	MaxAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
IncludeSale  
{! "
get# &
;& '
set( +
;+ ,
}- .
public &
GetAllSaleInstallmentQuery )
() *
string 
saleId 
, 
string 

customerId 
, 
DateTime 
? 

minDueDate  
,  !
DateTime" *
?* +

maxDueDate, 6
,6 7
decimal8 ?
?? @
	minAmountA J
,J K
decimal 
? 
	maxAmount 
, 
bool  $
?$ %
includeSale& 1
,1 2
string3 9
createdById: E
,E F
string 
tanentId 
, 
bool !
showOnWebsite" /
,/ 0
bool1 5
deleted6 =
,= >
DateTime? G
?G H
createdAtFromI V
,V W
DateTime 
? 
createdAtTo !
)! "
{ 	
SaleId 
= 
string 
. 
IsNullOrEmpty )
() *
saleId* 0
)0 1
?2 3
Guid4 8
.8 9
Empty9 >
:? @
GuidA E
.E F
ParseF K
(K L
saleIdL R
)R S
;S T

CustomerId 
= 
string 
.  
IsNullOrEmpty  -
(- .

customerId. 8
)8 9
?: ;
Guid< @
.@ A
EmptyA F
:G H
GuidI M
.M N
ParseN S
(S T

customerIdT ^
)^ _
;_ `

MinDueDate 
= 

minDueDate #
;# $

MaxDueDate 
= 

maxDueDate #
;# $
	MinAmount 
= 
	minAmount !
;! "
	MaxAmount   
=   
	maxAmount   !
;  ! "
IncludeSale!! 
=!! 
includeSale!! %
;!!% &
CreatedById"" 
="" 
createdById"" %
;""% &
TanentId## 
=## 
tanentId## 
;##  
ShowOnWebsite$$ 
=$$ 
showOnWebsite$$ )
;$$) *
Deleted%% 
=%% 
deleted%% 
;%% 
CreatedAtFrom&& 
=&& 
createdAtFrom&& )
;&&) *
CreatedAtTo'' 
='' 
createdAtTo'' %
;''% &
}(( 	
public)) &
GetAllSaleInstallmentQuery)) )
())) *
Guid** 
saleId** 
)** 
{++ 	
SaleId,, 
=,, 
saleId,, 
;,, 
}-- 	
public.. &
GetAllSaleInstallmentQuery.. )
(..) *
Guid// 
saleId// 
,// 
string00 
createdById00 
,00 
string11 
tanentId11 
,11 
string22 
orderBy22 
)33 
{44 	
SaleId55 
=55 
saleId55 
;55 
CreatedById66 
=66 
createdById66 %
;66% &
TanentId77 
=77 
tanentId77 
;77  
OrderBy88 
=88 
orderBy88 
;88 
}99 	
}:: 
}<< �	
rD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\SaleInstallment\GetSaleInstallmentQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public		 

class		 #
GetSaleInstallmentQuery		 (
:		( )
IRequest		) 1
<		1 2
SaleInstallment		2 A
>		A B
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
bool 
? 
IncludeSale  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
false1 6
;6 7
public #
GetSaleInstallmentQuery &
(& '
Guid' +
id, .
,. /
bool/ 3
?3 4
includeSale5 @
)@ A
{ 	
Id 
= 
id 
; 
IncludeSale 
= 
includeSale %
;% &
} 	
} 
} �
cD:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\Sale\CreateMockSaleQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public		 

class		 
CreateMockSaleQuery		 $
:		$ %
IRequest		% -
<		- .
Sale		. 2
>		2 3
{

 
} 
} �:
`D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\Sale\GetAllSalesQuery.cs
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
GetAllSalesQuery

 !
:

" #
	BaseQuery

$ -
,

- .
IRequest

/ 7
<

7 8
	PagedList

8 A
<

A B
Sale

B F
>

F G
>

G H
{ 
public 
Guid 

CustomerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
? 
MinStartDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
MaxStartDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
? 
	MinAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
? 
	MaxAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
? 
MinPaidAmount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
? 
MaxPaidAmount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
? 
MinRemainingAmount *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
decimal 
? 
MaxRemainingAmount *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
int 
? %
MinInstallmentMonthNumber -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
int 
? %
MaxInstallmentMonthNumber -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
int 
? 
MinInstallmentValue '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
? 
MaxInstallmentValue '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
? #
IncludeSaleInstallments ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
false= B
;B C
public 
bool 
? 
IncludeProducts $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
false5 :
;: ;
public 
bool 
? 
IncludeCustomers %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
false6 ;
;; <
public 
GetAllSalesQuery 
(  
string 

customerId 
, 
DateTime 
? 
minStartDate "
," #
DateTime$ ,
?, -
maxStartDate. :
,: ;
decimal 
? 
	minAmount 
, 
decimal  '
?' (
	maxAmount) 2
,2 3
decimal   
?   
minPaidAmount   "
,  " #
decimal  $ +
?  + ,
maxPaidAmount  - :
,  : ;
decimal!! 
?!! 
minRemainingAmount!! '
,!!' (
decimal!!) 0
?!!0 1
maxRemainingAmount!!2 D
,!!D E
int"" 
?"" %
minInstallmentMonthNumber"" *
,""* +
int"", /
?""/ 0%
maxInstallmentMonthNumber""1 J
,""J K
int## 
?## 
minInstallmentValue## $
,##$ %
int##& )
?##) *
maxInstallmentValue##+ >
,##> ?
bool##? C
?##C D#
includeSaleInstallments##E \
,##\ ]
bool##] a
?##a b
includeProducts##c r
,##r s
bool##s w
?##w x
includeCustomers	##y �
,
##� �
string$$ 
createdById$$ 
,$$ 
string$$ %
tanentId$$& .
,$$. /
bool$$/ 3
showOnWebsite$$4 A
,$$A B
bool$$B F
deleted$$G N
,$$N O
DateTime$$O W
?$$W X
createdAtFrom$$Y f
,$$f g
DateTime$$g o
?$$o p
createdAtTo$$p {
)$${ |
{%% 	

CustomerId&& 
=&& 
string&& 
.&& 
IsNullOrEmpty&& +
(&&+ ,

customerId&&, 6
)&&6 7
?&&8 9
Guid&&: >
.&&> ?
Empty&&? D
:&&E F
Guid&&G K
.&&K L
Parse&&L Q
(&&Q R

customerId&&R \
)&&\ ]
;&&] ^
MinStartDate'' 
='' 
minStartDate'' '
;''' (
MaxStartDate(( 
=(( 
maxStartDate(( '
;((' (
	MinAmount)) 
=)) 
	minAmount)) !
;))! "
	MaxAmount** 
=** 
	maxAmount** !
;**! "
MinPaidAmount++ 
=++ 
minPaidAmount++ )
;++) *
MaxPaidAmount,, 
=,, 
maxPaidAmount,, )
;,,) *
MinRemainingAmount-- 
=--  
minRemainingAmount--! 3
;--3 4
MaxRemainingAmount.. 
=..  
maxRemainingAmount..! 3
;..3 4%
MinInstallmentMonthNumber// %
=//& '%
minInstallmentMonthNumber//( A
;//A B%
MaxInstallmentMonthNumber00 %
=00& '%
maxInstallmentMonthNumber00( A
;00A B
MinInstallmentValue11 
=11  !
minInstallmentValue11" 5
;115 6
MaxInstallmentValue22 
=22  !
maxInstallmentValue22" 5
;225 6
IncludeProducts33 
=33 
includeProducts33 -
;33- .#
IncludeSaleInstallments44 #
=44$ %#
includeSaleInstallments44& =
;44= >
IncludeCustomers55 
=55 
includeCustomers55 /
;55/ 0
CreatedById66 
=66 
createdById66 %
;66% &
TanentId77 
=77 
tanentId77 
;77  
ShowOnWebsite88 
=88 
showOnWebsite88 )
;88) *
Deleted99 
=99 
deleted99 
;99 
CreatedAtFrom:: 
=:: 
createdAtFrom:: )
;::) *
CreatedAtTo;; 
=;; 
createdAtTo;; %
;;;% &
}<< 	
}== 
}>> �
\D:\Projects\aksaty-api-main\aksaty-api-main\Aksaty.Domain.Sales\Queries\Sale\GetSaleQuery.cs
	namespace 	
Aksaty
 
. 
Domain 
. 
Queries 
{ 
public		 

class		 
GetSaleQuery		 
:		 
IRequest		 &
<		& '
Sale		' +
>		+ ,
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
bool #
IncludeSaleInstallments +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
false< A
;A B
public 
bool 
IncludeProducts #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
false4 9
;9 :
public 
bool 
IncludeCustomers $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
false5 :
;: ;
public 
GetSaleQuery 
( 
Guid  
id! #
,# $
bool$ (#
includeSaleInstallments) @
,@ A
boolB F
inclueProductsG U
,U V
boolV Z
includeCustomers[ k
)k l
{ 	
Id 
= 
id 
; #
IncludeSaleInstallments #
=$ %#
includeSaleInstallments& =
;= >
IncludeProducts 
= 
inclueProducts ,
;, -
IncludeCustomers 
= 
includeCustomers /
;/ 0
} 	
} 
} 