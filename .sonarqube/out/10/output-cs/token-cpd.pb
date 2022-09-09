˘É
kD:\Projects\aksaty-api-main\aksaty-api-main\src\Aksaty.Infra.CrossCutting.IoC\NativeInjectorBootStrapper.cs
	namespace   	
Aksaty  
 
.   
Infra   
.   
CrossCutting   #
.  # $
IoC  $ '
{!! 
public"" 

static"" 
class"" &
NativeInjectorBootStrapper"" 2
{## 
public$$ 
static$$ 
void$$ 
RegisterServices$$ +
($$+ ,
IServiceCollection$$, >
services$$? G
)$$G H
{%% 	
services'' 
.'' 
	AddScoped'' 
<'' 
IMediatorHandler'' /
,''/ 0
InMemoryBus''1 <
>''< =
(''= >
)''> ?
;''? @
services** 
.** 
	AddScoped** 
<** 
ICustomerAppService** 2
,**2 3
CustomerAppService**4 F
>**F G
(**G H
)**H I
;**I J
services++ 
.++ 
	AddScoped++ 
<++ 
ITanentAppService++ 0
,++0 1
TanentAppService++2 B
>++B C
(++C D
)++D E
;++E F
services,, 
.,, 
	AddScoped,, 
<,, 
ISaleAppService,, .
,,,. /
SaleAppService,,0 >
>,,> ?
(,,? @
),,@ A
;,,A B
services-- 
.-- 
	AddScoped-- 
<-- 
IProductAppService-- 1
,--1 2
ProductAppService--3 D
>--D E
(--E F
)--F G
;--G H
services.. 
... 
	AddScoped.. 
<.. &
ISaleInstallmentAppService.. 9
,..9 :%
SaleInstallmentAppService..; T
>..T U
(..U V
)..V W
;..W X
services// 
.// 
	AddScoped// 
<// !
IAttachmentAppService// 4
,//4 5 
AttachmentAppService//6 J
>//J K
(//K L
)//L M
;//M N
services00 
.00 
	AddScoped00 
<00 
IUserService00 +
,00+ ,
UserService00- 8
>008 9
(009 :
)00: ;
;00; <
services11 
.11 
AddSingleton11 !
<11! " 
IHttpContextAccessor11" 6
,116 7
HttpContextAccessor118 K
>11K L
(11L M
)11M N
;11N O
services77 
.77 
	AddScoped77 
<77  
INotificationHandler77 3
<773 4#
CustomerRegisteredEvent774 K
>77K L
,77L M 
CustomerEventHandler77N b
>77b c
(77c d
)77d e
;77e f
services88 
.88 
	AddScoped88 
<88  
INotificationHandler88 3
<883 4 
CustomerUpdatedEvent884 H
>88H I
,88I J 
CustomerEventHandler88K _
>88_ `
(88` a
)88a b
;88b c
services99 
.99 
	AddScoped99 
<99  
INotificationHandler99 3
<993 4 
CustomerRemovedEvent994 H
>99H I
,99I J 
CustomerEventHandler99K _
>99_ `
(99` a
)99a b
;99b c
services<< 
.<< 
	AddScoped<< 
<<<  
INotificationHandler<< 3
<<<3 4
SaleCreatedEvent<<4 D
><<D E
,<<E F
SaleEventHandler<<G W
><<W X
(<<X Y
)<<Y Z
;<<Z [
services== 
.== 
	AddScoped== 
<==  
INotificationHandler== 3
<==3 4
SaleUpdateEvent==4 C
>==C D
,==D E
SaleEventHandler==F V
>==V W
(==W X
)==X Y
;==Y Z
services>> 
.>> 
	AddScoped>> 
<>>  
INotificationHandler>> 3
<>>3 4
SaleRemovedEvent>>4 D
>>>D E
,>>E F
SaleEventHandler>>G W
>>>W X
(>>X Y
)>>Y Z
;>>Z [
services@@ 
.@@ 
	AddScoped@@ 
<@@  
INotificationHandler@@ 3
<@@3 4!
TanentRegisteredEvent@@4 I
>@@I J
,@@J K
TanentEventHandler@@L ^
>@@^ _
(@@_ `
)@@` a
;@@a b
servicesAA 
.AA 
	AddScopedAA 
<AA  
INotificationHandlerAA 3
<AA3 4
TanentUpdatedEventAA4 F
>AAF G
,AAG H
TanentEventHandlerAAI [
>AA[ \
(AA\ ]
)AA] ^
;AA^ _
servicesBB 
.BB 
	AddScopedBB 
<BB  
INotificationHandlerBB 3
<BB3 4
TanentRemovedEventBB4 F
>BBF G
,BBG H
TanentEventHandlerBBI [
>BB[ \
(BB\ ]
)BB] ^
;BB^ _
servicesDD 
.DD 
	AddScopedDD 
<DD  
INotificationHandlerDD 3
<DD3 4 
AttachmentAddedEventDD4 H
>DDH I
,DDI J"
AttachmentEventHandlerDDK a
>DDa b
(DDb c
)DDc d
;DDd e
servicesEE 
.EE 
	AddScopedEE 
<EE  
INotificationHandlerEE 3
<EE3 4"
AttachmentRemovedEventEE4 J
>EEJ K
,EEK L"
AttachmentEventHandlerEEM c
>EEc d
(EEd e
)EEe f
;EEf g
servicesMM 
.MM 
	AddScopedMM 
<MM 
IRequestHandlerMM .
<MM. /&
RegisterNewCustomerCommandMM/ I
,MMI J
ValidationResultMMK [
>MM[ \
,MM\ ]"
CustomerCommandHandlerMM^ t
>MMt u
(MMu v
)MMv w
;MMw x
servicesNN 
.NN 
	AddScopedNN 
<NN 
IRequestHandlerNN .
<NN. /!
UpdateCustomerCommandNN/ D
,NND E
ValidationResultNNF V
>NNV W
,NNW X"
CustomerCommandHandlerNNY o
>NNo p
(NNp q
)NNq r
;NNr s
servicesOO 
.OO 
	AddScopedOO 
<OO 
IRequestHandlerOO .
<OO. /&
UpdateCustomerSalesCommandOO/ I
,OOI J
ValidationResultOOK [
>OO[ \
,OO\ ]"
CustomerCommandHandlerOO^ t
>OOt u
(OOu v
)OOv w
;OOw x
servicesPP 
.PP 
	AddScopedPP 
<PP 
IRequestHandlerPP .
<PP. /!
RemoveCustomerCommandPP/ D
,PPD E
ValidationResultPPF V
>PPV W
,PPW X"
CustomerCommandHandlerPPY o
>PPo p
(PPp q
)PPq r
;PPr s
servicesSS 
.SS 
	AddScopedSS 
<SS 
IRequestHandlerSS .
<SS. /
GetAllSalesQuerySS/ ?
,SS? @
	PagedListSSA J
<SSJ K
SaleSSK O
>SSO P
>SSP Q
,SSQ R
SaleCommandHandlerSSS e
>SSe f
(SSf g
)SSg h
;SSh i
servicesTT 
.TT 
	AddScopedTT 
<TT 
IRequestHandlerTT .
<TT. /
GetSaleQueryTT/ ;
,TT; <
SaleTT= A
>TTA B
,TTB C
SaleCommandHandlerTTD V
>TTV W
(TTW X
)TTX Y
;TTY Z
servicesUU 
.UU 
	AddScopedUU 
<UU 
IRequestHandlerUU .
<UU. / 
CreateNewSaleCommandUU/ C
,UUC D
ValidationResultUUE U
>UUU V
,UUV W
SaleCommandHandlerUUX j
>UUj k
(UUk l
)UUl m
;UUm n
servicesVV 
.VV 
	AddScopedVV 
<VV 
IRequestHandlerVV .
<VV. /
UpdateSaleCommandVV/ @
,VV@ A
ValidationResultVVB R
>VVR S
,VVS T
SaleCommandHandlerVVU g
>VVg h
(VVh i
)VVi j
;VVj k
servicesWW 
.WW 
	AddScopedWW 
<WW 
IRequestHandlerWW .
<WW. /
RemoveSaleCommandWW/ @
,WW@ A
ValidationResultWWB R
>WWR S
,WWS T
SaleCommandHandlerWWU g
>WWg h
(WWh i
)WWi j
;WWj k
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ 
IRequestHandlerZZ .
<ZZ. /&
GetAllSaleInstallmentQueryZZ/ I
,ZZI J
	PagedListZZK T
<ZZT U
SaleInstallmentZZU d
>ZZd e
>ZZe f
,ZZf g+
SaleInstallmentCommandsHandler	ZZh Ü
>
ZZÜ á
(
ZZá à
)
ZZà â
;
ZZâ ä
services[[ 
.[[ 
	AddScoped[[ 
<[[ 
IRequestHandler[[ .
<[[. /#
GetSaleInstallmentQuery[[/ F
,[[F G
SaleInstallment[[H W
>[[W X
,[[X Y*
SaleInstallmentCommandsHandler[[Z x
>[[x y
([[y z
)[[z {
;[[{ |
services\\ 
.\\ 
	AddScoped\\ 
<\\ 
IRequestHandler\\ .
<\\. /%
AddSaleInstallmentCommand\\/ H
,\\H I
ValidationResult\\J Z
>\\Z [
,\\[ \*
SaleInstallmentCommandsHandler\\] {
>\\{ |
(\\| }
)\\} ~
;\\~ 
services]] 
.]] 
	AddScoped]] 
<]] 
IRequestHandler]] .
<]]. /(
UpdateSaleInstallmentCommand]]/ K
,]]K L
ValidationResult]]M ]
>]]] ^
,]]^ _*
SaleInstallmentCommandsHandler]]` ~
>]]~ 
(	]] Ä
)
]]Ä Å
;
]]Å Ç
services^^ 
.^^ 
	AddScoped^^ 
<^^ 
IRequestHandler^^ .
<^^. /(
RemoveSaleInstallmentCommand^^/ K
,^^K L
ValidationResult^^M ]
>^^] ^
,^^^ _*
SaleInstallmentCommandsHandler^^` ~
>^^~ 
(	^^ Ä
)
^^Ä Å
;
^^Å Ç
services`` 
.`` 
	AddScoped`` 
<`` 
IRequestHandler`` .
<``. /
GetAllProductsQuery``/ B
,``B C
	PagedList``D M
<``M N
Product``N U
>``U V
>``V W
,``W X!
ProductCommandHandler``Y n
>``n o
(``o p
)``p q
;``q r
servicesaa 
.aa 
	AddScopedaa 
<aa 
IRequestHandleraa .
<aa. /
GetProductQueryaa/ >
,aa> ?
Productaa@ G
>aaG H
,aaH I!
ProductCommandHandleraaJ _
>aa_ `
(aa` a
)aaa b
;aab c
servicesbb 
.bb 
	AddScopedbb 
<bb 
IRequestHandlerbb .
<bb. /
AddProductCommandbb/ @
,bb@ A
ValidationResultbbB R
>bbR S
,bbS T!
ProductCommandHandlerbbU j
>bbj k
(bbk l
)bbl m
;bbm n
servicescc 
.cc 
	AddScopedcc 
<cc 
IRequestHandlercc .
<cc. / 
UpdateProductCommandcc/ C
,ccC D
ValidationResultccE U
>ccU V
,ccV W!
ProductCommandHandlerccX m
>ccm n
(ccn o
)cco p
;ccp q
servicesdd 
.dd 
	AddScopeddd 
<dd 
IRequestHandlerdd .
<dd. / 
RemoveProductCommanddd/ C
,ddC D
ValidationResultddE U
>ddU V
,ddV W!
ProductCommandHandlerddX m
>ddm n
(ddn o
)ddo p
;ddp q
servicesff 
.ff 
	AddScopedff 
<ff 
IRequestHandlerff .
<ff. /
GetTanentByIdQueryff/ A
,ffA B
TanentffC I
>ffI J
,ffJ K!
TanentCommandsHandlerffL a
>ffa b
(ffb c
)ffc d
;ffd e
servicesgg 
.gg 
	AddScopedgg 
<gg 
IRequestHandlergg .
<gg. /"
AddUpdateTanentCommandgg/ E
,ggE F
ValidationResultggG W
>ggW X
,ggX Y!
TanentCommandsHandlerggZ o
>ggo p
(ggp q
)ggq r
;ggr s
servicesjj 
.jj 
	AddScopedjj 
<jj 
IRequestHandlerjj .
<jj. /"
GetAllAttachmentsQueryjj/ E
,jjE F
	PagedListjjG P
<jjP Q

AttachmentjjQ [
>jj[ \
>jj\ ]
,jj] ^%
AttachmentCommandsHandlerjj_ x
>jjx y
(jjy z
)jjz {
;jj{ |
serviceskk 
.kk 
	AddScopedkk 
<kk 
IRequestHandlerkk .
<kk. /
GetAttachmentQuerykk/ A
,kkA B

AttachmentkkC M
>kkM N
,kkN O%
AttachmentCommandsHandlerkkP i
>kki j
(kkj k
)kkk l
;kkl m
servicesll 
.ll 
	AddScopedll 
<ll 
IRequestHandlerll .
<ll. / 
AddAttachmentCommandll/ C
,llC D
ValidationResultllE U
>llU V
,llV W%
AttachmentCommandsHandlerllX q
>llq r
(llr s
)lls t
;llt u
servicesmm 
.mm 
	AddScopedmm 
<mm 
IRequestHandlermm .
<mm. /*
RemoveRestoreAttachmentCommandmm/ M
,mmM N
ValidationResultmmO _
>mm_ `
,mm` a%
AttachmentCommandsHandlermmb {
>mm{ |
(mm| }
)mm} ~
;mm~ 
servicesnn 
.nn 
	AddScopednn 
<nn 
IRequestHandlernn .
<nn. //
#RemoveRestoreListAttachmentsCommandnn/ R
,nnR S
ValidationResultnnT d
>nnd e
,nne f&
AttachmentCommandsHandler	nng Ä
>
nnÄ Å
(
nnÅ Ç
)
nnÇ É
;
nnÉ Ñ
servicesoo 
.oo 
	AddScopedoo 
<oo 
IRequestHandleroo .
<oo. /%
SaveAllAttachmentsCommandoo/ H
,ooH I
ValidationResultooJ Z
>ooZ [
,oo[ \%
AttachmentCommandsHandleroo] v
>oov w
(oow x
)oox y
;ooy z
servicesrr 
.rr 
	AddScopedrr 
<rr 
ICustomerRepositoryrr 2
,rr2 3
CustomerRepositoryrr4 F
>rrF G
(rrG H
)rrH I
;rrI J
servicesss 
.ss 
	AddScopedss 
<ss 
ISaleRepositoryss .
,ss. /
SaleRepositoryss0 >
>ss> ?
(ss? @
)ss@ A
;ssA B
servicestt 
.tt 
	AddScopedtt 
<tt &
ISaleInstallmentRepositorytt 9
,tt9 :%
SaleInstallmentRepositorytt; T
>ttT U
(ttU V
)ttV W
;ttW X
servicesuu 
.uu 
	AddScopeduu 
<uu $
ISalesProductsRepositoryuu 7
,uu7 8#
SalesProductsRepositoryuu9 P
>uuP Q
(uuQ R
)uuR S
;uuS T
servicesvv 
.vv 
	AddScopedvv 
<vv 
IProductRepositoryvv 1
,vv1 2
ProductRepositoryvv3 D
>vvD E
(vvE F
)vvF G
;vvG H
servicesww 
.ww 
	AddScopedww 
<ww 
ITanentRepositoryww 0
,ww0 1
TanentRepositoryww2 B
>wwB C
(wwC D
)wwD E
;wwE F
servicesxx 
.xx 
	AddScopedxx 
<xx !
IAttachmentRepositoryxx 4
,xx4 5 
AttachmentRepositoryxx6 J
>xxJ K
(xxK L
)xxL M
;xxM N
servicesyy 
.yy 
	AddScopedyy 
<yy 
AksatyContextyy ,
>yy, -
(yy- .
)yy. /
;yy/ 0
services|| 
.|| 
	AddScoped|| 
<|| !
IEventStoreRepository|| 4
,||4 5#
EventStoreSqlRepository||6 M
>||M N
(||N O
)||O P
;||P Q
services}} 
.}} 
	AddScoped}} 
<}} 
IEventStore}} *
,}}* +
SqlEventStore}}, 9
>}}9 :
(}}: ;
)}}; <
;}}< =
services~~ 
.~~ 
	AddScoped~~ 
<~~  
EventStoreSqlContext~~ 3
>~~3 4
(~~4 5
)~~5 6
;~~6 7
} 	
}
ÄÄ 
}ÅÅ 