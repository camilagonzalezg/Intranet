�B
@D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\VerUsuarios.aspx.cs
	namespace		 	
IntranetWeb		
 
{

 
public 

partial 
class 
VerUsuarios $
:% &
System' -
.- .
Web. 1
.1 2
UI2 4
.4 5
Page5 9
{ 
UsuariosDAL 
usuariosDAL 
=  !
new" %
UsuariosDAL& 1
(1 2
)2 3
;3 4
private 
void 
CargarTabla  
(  !
List! %
<% &
Usuarios& .
>. /
usuarios0 8
)8 9
{ 	
UsuariosGrid 
. 

DataSource #
=$ %
usuarios& .
;. /
UsuariosGrid 
. 
DataBind !
(! "
)" #
;# $
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarTabla 
( 
usuariosDAL '
.' (
GetAll( .
(. /
)/ 0
)0 1
;1 2
string 
mensaje 
=  
Request! (
.( )
QueryString) 4
[4 5
$str5 >
]> ?
;? @
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
mensaje* 1
)1 2
)2 3
{ 
if   
(   
mensaje   
.    
Equals    &
(  & '
$str  ' =
)  = >
)  > ?
{!! 
MensajePanel## $
.##$ %
Visible##% ,
=##- .
true##/ 3
;##3 4
MensajeLabel$$ $
.$$$ %
Text$$% )
=$$* +
$str$$, K
;$$K L
}%% 
else&& 
if&& 
(&& 
mensaje&& $
.&&$ %
Equals&&% +
(&&+ ,
$str&&, E
)&&E F
)&&F G
{'' 
MensajePanel)) $
.))$ %
Visible))% ,
=))- .
true))/ 3
;))3 4
MensajeLabel** $
.**$ %
Text**% )
=*** +
$str**, N
;**N O
}++ 
else,, 
if,, 
(,, 
mensaje,, $
.,,$ %
Equals,,% +
(,,+ ,
$str,,, C
),,C D
),,D E
{-- 
MensajePanel// $
.//$ %
Visible//% ,
=//- .
true/// 3
;//3 4
MensajeLabel00 $
.00$ %
Text00% )
=00* +
$str00, L
;00L M
}11 
}22 
}33 
}44 	
	protected66 
void66 #
UsuariosGrid_RowCommand66 .
(66. /
object66/ 5
sender666 <
,66< =$
GridViewCommandEventArgs66> V
e66W X
)66X Y
{77 	
if88 
(88 
e88 
.88 
CommandName88 
==88  
$str88! )
)88) *
{99 
string;; 

rutAEditar;; !
=;;" #
e;;$ %
.;;% &
CommandArgument;;& 5
.;;5 6
ToString;;6 >
(;;> ?
);;? @
;;;@ A
Response>> 
.>> 
Redirect>> !
(>>! "
$str>>" ;
+>>< =

rutAEditar>>> H
)>>H I
;>>I J
}?? 
else@@ 
if@@ 
(@@ 
e@@ 
.@@ 
CommandName@@ "
==@@# %
$str@@& 0
)@@0 1
{AA 
stringBB 
rutAEliminarBB #
=BB$ %
eBB& '
.BB' (
CommandArgumentBB( 7
.BB7 8
ToStringBB8 @
(BB@ A
)BBA B
;BBB C
usuariosDALCC 
.CC 
RemoveCC "
(CC" #
rutAEliminarCC# /
)CC/ 0
;CC0 1
CargarTablaEE 
(EE 
usuariosDALEE '
.EE' (
GetAllEE( .
(EE. /
)EE/ 0
)EE0 1
;EE1 2
ResponseHH 
.HH 
RedirectHH !
(HH! "
$strHH" R
)HHR S
;HHS T
}II 
}JJ 	
	protectedLL 
voidLL 
SearchBtn_ClickLL &
(LL& '
objectLL' -
senderLL. 4
,LL4 5
	EventArgsLL6 ?
eLL@ A
)LLA B
{MM 	
stringNN 
searchParamNN 
=NN  
FilterByDdlNN! ,
.NN, -
SelectedValueNN- :
;NN: ;
stringOO 

searchTermOO 
=OO 
SearchTermTxtOO  -
.OO- .
TextOO. 2
.OO2 3
ToLowerOO3 :
(OO: ;
)OO; <
;OO< =
ListQQ 
<QQ 
UsuariosQQ 
>QQ 
usuariosQQ #
;QQ# $
ifSS 
(SS 
searchParamSS 
==SS 
$strSS $
)SS$ %
{TT 
usuariosUU 
=UU 
usuariosDALUU &
.UU& '
GetAllUU' -
(UU- .
)UU. /
.VV 
WhereVV 
(VV 
uVV 
=>VV 
uVV  !
.VV! "
nombreVV" (
.VV( )
ToLowerVV) 0
(VV0 1
)VV1 2
.VV2 3
ContainsVV3 ;
(VV; <

searchTermVV< F
)VVF G
||VVH J
uWW  !
.WW! "
apellidoWW" *
.WW* +
ToLowerWW+ 2
(WW2 3
)WW3 4
.WW4 5
ContainsWW5 =
(WW= >

searchTermWW> H
)WWH I
||WWJ L
uXX  !
.XX! "
GerenciaNombreXX" 0
.XX0 1
ToLowerXX1 8
(XX8 9
)XX9 :
.XX: ;
ContainsXX; C
(XXC D

searchTermXXD N
)XXN O
||XXP R
uYY  !
.YY! "
SubgerenciaNombreYY" 3
.YY3 4
ToLowerYY4 ;
(YY; <
)YY< =
.YY= >
ContainsYY> F
(YYF G

searchTermYYG Q
)YYQ R
||YYS U
uZZ  !
.ZZ! "
DepartamentoNombreZZ" 4
.ZZ4 5
ToLowerZZ5 <
(ZZ< =
)ZZ= >
.ZZ> ?
ContainsZZ? G
(ZZG H

searchTermZZH R
)ZZR S
||ZZT V
u[[  !
.[[! "
UbicacionNombre[[" 1
.[[1 2
ToLower[[2 9
([[9 :
)[[: ;
.[[; <
Contains[[< D
([[D E

searchTerm[[E O
)[[O P
||[[Q S
u\\  !
.\\! "
TipoContratoNombre\\" 4
.\\4 5
ToLower\\5 <
(\\< =
)\\= >
.\\> ?
Contains\\? G
(\\G H

searchTerm\\H R
)\\R S
||\\T V
u]]  !
.]]! "
RolUsuarioNombre]]" 2
.]]2 3
ToLower]]3 :
(]]: ;
)]]; <
.]]< =
Contains]]= E
(]]E F

searchTerm]]F P
)]]P Q
)]]Q R
.^^ 
ToList^^ 
(^^ 
)^^ 
;^^ 
}__ 
else`` 
{aa 
usuariosbb 
=bb 
usuariosDALbb &
.bb& '
GetAllbb' -
(bb- .
)bb. /
.cc 
Wherecc 
(cc 
ucc 
=>cc 
ucc  !
.cc! "
GetTypecc" )
(cc) *
)cc* +
.cc+ ,
GetPropertycc, 7
(cc7 8
searchParamcc8 C
)ccC D
.ccD E
GetValueccE M
(ccM N
uccN O
,ccO P
nullccQ U
)ccU V
.ccV W
ToStringccW _
(cc_ `
)cc` a
.cca b
ToLowerccb i
(cci j
)ccj k
.cck l
Containsccl t
(cct u

searchTermccu 
)	cc �
)
cc� �
.dd 
ToListdd 
(dd 
)dd 
;dd 
}ee 
CargarTablagg 
(gg 
usuariosgg  
)gg  !
;gg! "
}hh 	
}ii 
}jj �;
?D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\VerPaginas.aspx.cs
	namespace		 	
IntranetWeb		
 
{

 
public 

partial 
class 

VerPaginas #
:$ %
System& ,
., -
Web- 0
.0 1
UI1 3
.3 4
Page4 8
{ 

PaginasDAL 

paginasDAL 
= 
new  #

PaginasDAL$ .
(. /
)/ 0
;0 1
private 
void 
CargarTabla  
(  !
List! %
<% &
Paginas& -
>- .
paginas/ 6
)6 7
{ 	
PaginasGrid 
. 

DataSource "
=# $
paginas% ,
;, -
PaginasGrid 
. 
DataBind  
(  !
)! "
;" #
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarTabla 
( 

paginasDAL &
.& '
GetAll' -
(- .
). /
)/ 0
;0 1
string 
mensaje 
=  
Request! (
.( )
QueryString) 4
[4 5
$str5 >
]> ?
;? @
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
mensaje* 1
)1 2
)2 3
{ 
if   
(   
mensaje   
.    
Equals    &
(  & '
$str  ' =
)  = >
)  > ?
{!! 
MensajePanel## $
.##$ %
Visible##% ,
=##- .
true##/ 3
;##3 4
MensajeLabel$$ $
.$$$ %
Text$$% )
=$$* +
$str$$, J
;$$J K
}%% 
else&& 
if&& 
(&& 
mensaje&& $
.&&$ %
Equals&&% +
(&&+ ,
$str&&, E
)&&E F
)&&F G
{'' 
MensajePanel)) $
.))$ %
Visible))% ,
=))- .
true))/ 3
;))3 4
MensajeLabel** $
.**$ %
Text**% )
=*** +
$str**, M
;**M N
}++ 
else,, 
if,, 
(,, 
mensaje,, $
.,,$ %
Equals,,% +
(,,+ ,
$str,,, C
),,C D
),,D E
{-- 
MensajePanel// $
.//$ %
Visible//% ,
=//- .
true/// 3
;//3 4
MensajeLabel00 $
.00$ %
Text00% )
=00* +
$str00, K
;00K L
}11 
}22 
}33 
}44 	
	protected66 
void66 "
PaginasGrid_RowCommand66 -
(66- .
object66. 4
sender665 ;
,66; <$
GridViewCommandEventArgs66= U
e66V W
)66W X
{77 	
if88 
(88 
e88 
.88 
CommandName88 
==88  
$str88! )
)88) *
{99 
int;; 
	idAEditar;; 
=;; 
Convert;;  '
.;;' (
ToInt32;;( /
(;;/ 0
e;;0 1
.;;1 2
CommandArgument;;2 A
);;A B
;;;B C
Response>> 
.>> 
Redirect>> !
(>>! "
$str>>" 9
+>>: ;
	idAEditar>>< E
)>>E F
;>>F G
}?? 
else@@ 
if@@ 
(@@ 
e@@ 
.@@ 
CommandName@@ "
==@@# %
$str@@& 0
)@@0 1
{AA 
intBB 
idAEliminarBB 
=BB  !
ConvertBB" )
.BB) *
ToInt32BB* 1
(BB1 2
eBB2 3
.BB3 4
CommandArgumentBB4 C
)BBC D
;BBD E

paginasDALCC 
.CC 
RemoveCC !
(CC! "
idAEliminarCC" -
)CC- .
;CC. /
CargarTablaEE 
(EE 

paginasDALEE &
.EE& '
GetAllEE' -
(EE- .
)EE. /
)EE/ 0
;EE0 1
ResponseHH 
.HH 
RedirectHH !
(HH! "
$strHH" Q
)HHQ R
;HHR S
}II 
}JJ 	
	protectedLL 
voidLL 
SearchBtn_ClickLL &
(LL& '
objectLL' -
senderLL. 4
,LL4 5
	EventArgsLL6 ?
eLL@ A
)LLA B
{MM 	
stringNN 
searchParamNN 
=NN  
FilterByDdlNN! ,
.NN, -
SelectedValueNN- :
;NN: ;
stringOO 

searchTermOO 
=OO 
SearchTermTxtOO  -
.OO- .
TextOO. 2
.OO2 3
ToLowerOO3 :
(OO: ;
)OO; <
;OO< =
ListQQ 
<QQ 
PaginasQQ 
>QQ 
paginasQQ !
;QQ! "
ifSS 
(SS 
searchParamSS 
==SS 
$strSS $
)SS$ %
{TT 
paginasUU 
=UU 

paginasDALUU $
.UU$ %
GetAllUU% +
(UU+ ,
)UU, -
.VV 
WhereVV 
(VV 
pVV 
=>VV 
pVV  !
.VV! "
tituloVV" (
.VV( )
ToLowerVV) 0
(VV0 1
)VV1 2
.VV2 3
ContainsVV3 ;
(VV; <

searchTermVV< F
)VVF G
||VVH J
pWW  !
.WW! "
metaDescripcionWW" 1
.WW1 2
ToLowerWW2 9
(WW9 :
)WW: ;
.WW; <
ContainsWW< D
(WWD E

searchTermWWE O
)WWO P
||WWQ S
pXX  !
.XX! "
usuarioAutorXX" .
.XX. /
ToLowerXX/ 6
(XX6 7
)XX7 8
.XX8 9
ContainsXX9 A
(XXA B

searchTermXXB L
)XXL M
||XXN P
pYY  !
.YY! "
tagsYY" &
.YY& '
ToLowerYY' .
(YY. /
)YY/ 0
.YY0 1
ContainsYY1 9
(YY9 :

searchTermYY: D
)YYD E
)YYE F
.ZZ 
ToListZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
else\\ 
{]] 
paginas^^ 
=^^ 

paginasDAL^^ $
.^^$ %
GetAll^^% +
(^^+ ,
)^^, -
.__ 
Where__ 
(__ 
p__ 
=>__ 
p__  !
.__! "
GetType__" )
(__) *
)__* +
.__+ ,
GetProperty__, 7
(__7 8
searchParam__8 C
)__C D
.__D E
GetValue__E M
(__M N
p__N O
,__O P
null__Q U
)__U V
.__V W
ToString__W _
(___ `
)__` a
.__a b
ToLower__b i
(__i j
)__j k
.__k l
Contains__l t
(__t u

searchTerm__u 
)	__ �
)
__� �
.`` 
ToList`` 
(`` 
)`` 
;`` 
}aa 
CargarTablacc 
(cc 
paginascc 
)cc  
;cc  !
}dd 	
}ee 
}ff �H
@D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\VerNoticias.aspx.cs
	namespace		 	
IntranetWeb		
 
{

 
public 

partial 
class 
VerNoticias $
:% &
System' -
.- .
Web. 1
.1 2
UI2 4
.4 5
Page5 9
{ 
NoticiasDAL 
noticiasDAL 
=  !
new" %
NoticiasDAL& 1
(1 2
)2 3
;3 4
private 
void 
CargarTabla  
(  !
List! %
<% &
Noticias& .
>. /
noticias0 8
)8 9
{ 	
var 
noticiasOrdenadas !
=" #
noticias$ ,
., -
OrderByDescending- >
(> ?
n? @
=>A C
nD E
.E F
fechaPublicacionF V
)V W
.W X
ToListX ^
(^ _
)_ `
;` a
NoticiasGrid 
. 

DataSource #
=$ %
noticiasOrdenadas& 7
;7 8
NoticiasGrid 
. 
DataBind !
(! "
)" #
;# $
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
List 
< 
Noticias 
> 
noticias '
=( )
noticiasDAL* 5
.5 6
GetAll6 <
(< =
)= >
;> ?
CargarTabla 
( 
noticias $
)$ %
;% &
string"" 
mensaje"" 
=""  
Request""! (
.""( )
QueryString"") 4
[""4 5
$str""5 >
]""> ?
;""? @
if## 
(## 
!## 
string## 
.## 
IsNullOrEmpty## )
(##) *
mensaje##* 1
)##1 2
)##2 3
{$$ 
if&& 
(&& 
mensaje&& 
.&&  
Equals&&  &
(&&& '
$str&&' =
)&&= >
)&&> ?
{'' 
MensajePanel)) $
.))$ %
Visible))% ,
=))- .
true))/ 3
;))3 4
MensajeLabel** $
.**$ %
Text**% )
=*** +
$str**, K
;**K L
}++ 
else,, 
if,, 
(,, 
mensaje,, $
.,,$ %
Equals,,% +
(,,+ ,
$str,,, E
),,E F
),,F G
{-- 
MensajePanel// $
.//$ %
Visible//% ,
=//- .
true/// 3
;//3 4
MensajeLabel00 $
.00$ %
Text00% )
=00* +
$str00, N
;00N O
}11 
else22 
if22 
(22 
mensaje22 $
.22$ %
Equals22% +
(22+ ,
$str22, C
)22C D
)22D E
{33 
MensajePanel55 $
.55$ %
Visible55% ,
=55- .
true55/ 3
;553 4
MensajeLabel66 $
.66$ %
Text66% )
=66* +
$str66, L
;66L M
}77 
}88 
}99 
}:: 	
	protected<< 
void<< #
NoticiasGrid_RowCommand<< .
(<<. /
object<</ 5
sender<<6 <
,<<< =$
GridViewCommandEventArgs<<> V
e<<W X
)<<X Y
{== 	
if>> 
(>> 
e>> 
.>> 
CommandName>> 
==>>  
$str>>! )
)>>) *
{?? 
intAA 
	idAEditarAA 
=AA 
ConvertAA  '
.AA' (
ToInt32AA( /
(AA/ 0
eAA0 1
.AA1 2
CommandArgumentAA2 A
)AAA B
;AAB C
ResponseDD 
.DD 
RedirectDD !
(DD! "
$strDD" :
+DD; <
	idAEditarDD= F
)DDF G
;DDG H
}EE 
elseFF 
ifFF 
(FF 
eFF 
.FF 
CommandNameFF "
==FF# %
$strFF& 0
)FF0 1
{GG 
intHH 
idAEliminarHH 
=HH  !
ConvertHH" )
.HH) *
ToInt32HH* 1
(HH1 2
eHH2 3
.HH3 4
CommandArgumentHH4 C
)HHC D
;HHD E
noticiasDALII 
.II 
RemoveII "
(II" #
idAEliminarII# .
)II. /
;II/ 0
ListKK 
<KK 
NoticiasKK 
>KK 
noticiasKK '
=KK( )
noticiasDALKK* 5
.KK5 6
GetAllKK6 <
(KK< =
)KK= >
;KK> ?
SystemLL 
.LL 
DiagnosticsLL "
.LL" #
DebugLL# (
.LL( )
	WriteLineLL) 2
(LL2 3
$strLL3 S
+LLT U
noticiasLLV ^
.LL^ _
CountLL_ d
)LLd e
;LLe f
CargarTablaMM 
(MM 
noticiasMM $
)MM$ %
;MM% &
ResponsePP 
.PP 
RedirectPP !
(PP! "
$strPP" R
)PPR S
;PPS T
}QQ 
elseRR 
ifRR 
(RR 
eRR 
.RR 
CommandNameRR "
==RR# %
$strRR& 1
)RR1 2
{SS 
stringUU 
	urlSimpleUU  
=UU! "
eUU# $
.UU$ %
CommandArgumentUU% 4
.UU4 5
ToStringUU5 =
(UU= >
)UU> ?
;UU? @
ResponseXX 
.XX 
RedirectXX !
(XX! "
	urlSimpleXX" +
)XX+ ,
;XX, -
}YY 
}ZZ 	
	protected\\ 
void\\ 
SearchBtn_Click\\ &
(\\& '
object\\' -
sender\\. 4
,\\4 5
	EventArgs\\6 ?
e\\@ A
)\\A B
{]] 	
string^^ 
searchParam^^ 
=^^  
FilterByDdl^^! ,
.^^, -
SelectedValue^^- :
;^^: ;
string__ 

searchTerm__ 
=__ 
SearchTermTxt__  -
.__- .
Text__. 2
.__2 3
ToLower__3 :
(__: ;
)__; <
;__< =
Listaa 
<aa 
Noticiasaa 
>aa 
noticiasaa #
;aa# $
ifcc 
(cc 
searchParamcc 
==cc 
$strcc $
)cc$ %
{dd 
noticiasee 
=ee 
noticiasDALee &
.ee& '
GetAllee' -
(ee- .
)ee. /
.ff 
Whereff 
(ff 
nff 
=>ff 
nff  !
.ff! "
tituloff" (
.ff( )
ToLowerff) 0
(ff0 1
)ff1 2
.ff2 3
Containsff3 ;
(ff; <

searchTermff< F
)ffF G
||ffH J
ngg  !
.gg! "
metaDescripciongg" 1
.gg1 2
ToLowergg2 9
(gg9 :
)gg: ;
.gg; <
Containsgg< D
(ggD E

searchTermggE O
)ggO P
||ggQ S
nhh  !
.hh! "
usuarioAutorhh" .
.hh. /
ToLowerhh/ 6
(hh6 7
)hh7 8
.hh8 9
Containshh9 A
(hhA B

searchTermhhB L
)hhL M
||hhN P
nii  !
.ii! "
tagsii" &
.ii& '
ToLowerii' .
(ii. /
)ii/ 0
.ii0 1
Containsii1 9
(ii9 :

searchTermii: D
)iiD E
)iiE F
.jj 
ToListjj 
(jj 
)jj 
;jj 
}kk 
elsell 
{mm 
noticiasnn 
=nn 
noticiasDALnn &
.nn& '
GetAllnn' -
(nn- .
)nn. /
.oo 
Whereoo 
(oo 
noo 
=>oo 
noo  !
.oo! "
GetTypeoo" )
(oo) *
)oo* +
.oo+ ,
GetPropertyoo, 7
(oo7 8
searchParamoo8 C
)ooC D
.ooD E
GetValueooE M
(ooM N
nooN O
,ooO P
nullooQ U
)ooU V
.ooV W
ToStringooW _
(oo_ `
)oo` a
.ooa b
ToLoweroob i
(ooi j
)ooj k
.ook l
Containsool t
(oot u

searchTermoou 
)	oo �
)
oo� �
.pp 
ToListpp 
(pp 
)pp 
;pp 
}qq 
Systemss 
.ss 
Diagnosticsss 
.ss 
Debugss $
.ss$ %
	WriteLiness% .
(ss. /
$strss/ G
+ssH I
noticiasssJ R
.ssR S
CountssS X
)ssX Y
;ssY Z
CargarTablatt 
(tt 
noticiastt  
)tt  !
;tt! "
}uu 	
}vv 
}ww �E
HD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\VerCorrespondencias.aspx.cs
	namespace

 	
IntranetWeb


 
{ 
public 

partial 
class 
VerCorrespondencia +
:, -
System. 4
.4 5
Web5 8
.8 9
UI9 ;
.; <
Page< @
{ 
CorrespondenciasDAL 
correspondenciasDAL /
=0 1
new2 5
CorrespondenciasDAL6 I
(I J
)J K
;K L
private 
void 
CargarTabla  
(  !
List! %
<% &
Correspondencias& 6
>6 7
correspondencias8 H
)H I
{ 	
var %
correspondenciasOrdenadas )
=* +
correspondencias, <
.< =
OrderByDescending= N
(N O
cO P
=>Q S
cT U
.U V
fechaIngresoV b
)b c
.c d
ToListd j
(j k
)k l
;l m 
CorrespondenciasGrid  
.  !

DataSource! +
=, -%
correspondenciasOrdenadas. G
;G H 
CorrespondenciasGrid  
.  !
DataBind! )
() *
)* +
;+ ,
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
List 
< 
Correspondencias %
>% &
correspondencias' 7
=8 9
correspondenciasDAL: M
.M N"
GetAllCorrespondenciasN d
(d e
)e f
;f g
CargarTabla 
( 
correspondencias ,
), -
;- .
string   
mensaje   
=    
Request  ! (
.  ( )
QueryString  ) 4
[  4 5
$str  5 >
]  > ?
;  ? @
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! )
(!!) *
mensaje!!* 1
)!!1 2
)!!2 3
{"" 
if$$ 
($$ 
mensaje$$ 
.$$  
Equals$$  &
($$& '
$str$$' =
)$$= >
)$$> ?
{%% 
MensajePanel'' $
.''$ %
Visible''% ,
=''- .
true''/ 3
;''3 4
MensajeLabel(( $
.(($ %
Text((% )
=((* +
$str((, S
;((S T
})) 
else** 
if** 
(** 
mensaje** $
.**$ %
Equals**% +
(**+ ,
$str**, E
)**E F
)**F G
{++ 
MensajePanel-- $
.--$ %
Visible--% ,
=--- .
true--/ 3
;--3 4
MensajeLabel.. $
...$ %
Text..% )
=..* +
$str.., V
;..V W
}// 
else00 
if00 
(00 
mensaje00 $
.00$ %
Equals00% +
(00+ ,
$str00, C
)00C D
)00D E
{11 
MensajePanel33 $
.33$ %
Visible33% ,
=33- .
true33/ 3
;333 4
MensajeLabel44 $
.44$ %
Text44% )
=44* +
$str44, T
;44T U
}55 
}66 
}77 
}88 	
	protected:: 
void:: +
CorrespondenciasGrid_RowCommand:: 6
(::6 7
object::7 =
sender::> D
,::D E$
GridViewCommandEventArgs::F ^
e::_ `
)::` a
{;; 	
if<< 
(<< 
e<< 
.<< 
CommandName<< 
==<<  
$str<<! )
)<<) *
{== 
int?? 
	idAEditar?? 
=?? 
Convert??  '
.??' (
ToInt32??( /
(??/ 0
e??0 1
.??1 2
CommandArgument??2 A
)??A B
;??B C
ResponseBB 
.BB 
RedirectBB !
(BB! "
$strBB" B
+BBC D
	idAEditarBBE N
)BBN O
;BBO P
}CC 
elseDD 
ifDD 
(DD 
eDD 
.DD 
CommandNameDD "
==DD# %
$strDD& 0
)DD0 1
{EE 
intFF 
idAEliminarFF 
=FF  !
ConvertFF" )
.FF) *
ToInt32FF* 1
(FF1 2
eFF2 3
.FF3 4
CommandArgumentFF4 C
)FFC D
;FFD E
correspondenciasDALGG #
.GG# $!
DeleteCorrespondenciaGG$ 9
(GG9 :
idAEliminarGG: E
)GGE F
;GGF G
ListII 
<II 
CorrespondenciasII %
>II% &
correspondenciasII' 7
=II8 9
correspondenciasDALII: M
.IIM N"
GetAllCorrespondenciasIIN d
(IId e
)IIe f
;IIf g
CargarTablaJJ 
(JJ 
correspondenciasJJ ,
)JJ, -
;JJ- .
ResponseMM 
.MM 
RedirectMM !
(MM! "
$strMM" Z
)MMZ [
;MM[ \
}NN 
elseOO 
ifOO 
(OO 
eOO 
.OO 
CommandNameOO "
==OO# %
$strOO& 4
)OO4 5
{PP 
stringRR 
rutaArchivoRR "
=RR# $
eRR% &
.RR& '
CommandArgumentRR' 6
.RR6 7
ToStringRR7 ?
(RR? @
)RR@ A
;RRA B
ResponseUU 
.UU 
RedirectUU !
(UU! "
$strUU" &
+UU' (
rutaArchivoUU) 4
)UU4 5
;UU5 6
}VV 
}WW 	
	protectedYY 
voidYY 
SearchBtn_ClickYY &
(YY& '
objectYY' -
senderYY. 4
,YY4 5
	EventArgsYY6 ?
eYY@ A
)YYA B
{ZZ 	
string[[ 
searchParam[[ 
=[[  
FilterByDdl[[! ,
.[[, -
SelectedValue[[- :
;[[: ;
string\\ 

searchTerm\\ 
=\\ 
SearchTermTxt\\  -
.\\- .
Text\\. 2
.\\2 3
ToLower\\3 :
(\\: ;
)\\; <
;\\< =
List^^ 
<^^ 
Correspondencias^^ !
>^^! "
correspondencias^^# 3
;^^3 4
if`` 
(`` 
searchParam`` 
==`` 
$str`` $
)``$ %
{aa 
correspondenciasbb  
=bb! "
correspondenciasDALbb# 6
.bb6 7"
GetAllCorrespondenciasbb7 M
(bbM N
)bbN O
.cc 
Wherecc 
(cc 
ccc 
=>cc 
ccc  !
.cc! "
usuariocc" )
.cc) *
ToLowercc* 1
(cc1 2
)cc2 3
.cc3 4
Containscc4 <
(cc< =

searchTermcc= G
)ccG H
||ccI K
cdd  !
.dd! "
nombreArchivodd" /
.dd/ 0
ToLowerdd0 7
(dd7 8
)dd8 9
.dd9 :
Containsdd: B
(ddB C

searchTermddC M
)ddM N
||ddO Q
cee  !
.ee! "
descripcionArchivoee" 4
.ee4 5
ToLoweree5 <
(ee< =
)ee= >
.ee> ?
Containsee? G
(eeG H

searchTermeeH R
)eeR S
)eeS T
.ff 
ToListff 
(ff 
)ff 
;ff 
}gg 
elsehh 
{ii 
correspondenciasjj  
=jj! "
correspondenciasDALjj# 6
.jj6 7"
GetAllCorrespondenciasjj7 M
(jjM N
)jjN O
.kk 
Wherekk 
(kk 
ckk 
=>kk 
ckk  !
.kk! "
GetTypekk" )
(kk) *
)kk* +
.kk+ ,
GetPropertykk, 7
(kk7 8
searchParamkk8 C
)kkC D
.kkD E
GetValuekkE M
(kkM N
ckkN O
,kkO P
nullkkQ U
)kkU V
.kkV W
ToStringkkW _
(kk_ `
)kk` a
.kka b
ToLowerkkb i
(kki j
)kkj k
.kkk l
Containskkl t
(kkt u

searchTermkku 
)	kk �
)
kk� �
.ll 
ToListll 
(ll 
)ll 
;ll 
}mm 
CargarTablaoo 
(oo 
correspondenciasoo (
)oo( )
;oo) *
}pp 	
}qq 
}rr �E
9D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Validador.cs
	namespace 	
IntranetWeb
 
{ 
public 

class 
	Validador 
{		 
private

 
string

 

rutUsuario

 !
;

! "
private 
string 
estado 
; 
public 
	Validador 
( 
) 
{ 

rutUsuario 
= 
string 
.  
Empty  %
;% &
estado 
= 
string 
. 
Empty !
;! "
} 	
public 
string 
xEstado 
{ 
get 
{ 
return 
estado 
;  
}! "
} 	
public 
void 
ValidaVacio 
(  
string  &
RutTxt' -
)- .
{ 	
String 
rut 
= 
RutTxt 
;  
if 
( 
rut 
== 
string 
. 
Empty #
)# $
{ 
this 
. 

rutUsuario 
=  !
rut" %
;% &
this   
.   
estado   
=   
$str   J
;  J K
}!! 
else"" 
{## 
this$$ 
.$$ 

rutUsuario$$ 
=$$  !
rut$$" %
;$$% &
this%% 
.%% 
estado%% 
=%% 
$str%% (
;%%( )
}&& 
}'' 	
public** 
void** #
ValidaNumDigVerificador** +
(**+ ,
string**, 2
RutTxt**3 9
)**9 :
{++ 	
String,, 
rut,, 
=,, 
RutTxt,, 
;,,  
String-- 
[-- 
]-- 
rutArray-- 
=-- 
rut--  #
.--# $
Split--$ )
(--) *
$char--* -
)--- .
;--. /
if44 
(44 
rutArray44 
.44 
Length44 
==44  "
$num44# $
)44$ %
{55 
if66 
(66 
rutArray66 
[66 
$num66 
]66 
.66  
Length66  &
!=66' )
$num66* +
)66+ ,
{77 
this99 
.99 

rutUsuario99 #
=99$ %
rut99& )
;99) *
this:: 
.:: 
estado:: 
=::  !
$str::" U
;::U V
}<< 
else== 
{>> 
this?? 
.?? 

rutUsuario?? #
=??$ %
rut??& )
;??) *
this@@ 
.@@ 
estado@@ 
=@@  !
$str@@" ,
;@@, -
}AA 
}BB 
}CC 	
publicMM 
voidMM 
ValidaDigitoMM  
(MM  !
stringMM! '
RutTxtMM( .
)MM. /
{NN 	
StringPP 
rutPP 
=PP 
RutTxtPP 
;PP  
rutRR 
=RR 
rutRR 
.RR 
PadLeftRR 
(RR 
$numRR  
,RR  !
$charRR" %
)RR% &
;RR& '
intTT 
n0TT 
=TT 
intTT 
.TT 
ParseTT 
(TT 
rutTT "
[TT" #
$numTT# $
]TT$ %
.TT% &
ToStringTT& .
(TT. /
)TT/ 0
)TT0 1
*TT2 3
$numTT4 5
;TT5 6
intUU 
n1UU 
=UU  
intUU! $
.UU$ %
ParseUU% *
(UU* +
rutUU+ .
[UU. /
$numUU/ 0
]UU0 1
.UU1 2
ToStringUU2 :
(UU: ;
)UU; <
)UU< =
*UU> ?
$numUU@ A
;UUA B
intVV 
n2VV 
=VV 
intVV 
.VV 
ParseVV 
(VV 
rutVV "
[VV" #
$numVV# $
]VV$ %
.VV% &
ToStringVV& .
(VV. /
)VV/ 0
)VV0 1
*VV2 3
$numVV4 5
;VV5 6
intWW 
n3WW 
=WW 
intWW 
.WW 
ParseWW 
(WW 
rutWW "
[WW" #
$numWW# $
]WW$ %
.WW% &
ToStringWW& .
(WW. /
)WW/ 0
)WW0 1
*WW2 3
$numWW4 5
;WW5 6
intXX 
n4XX 
=XX 
intXX 
.XX 
ParseXX 
(XX 
rutXX "
[XX" #
$numXX# $
]XX$ %
.XX% &
ToStringXX& .
(XX. /
)XX/ 0
)XX0 1
*XX2 3
$numXX4 5
;XX5 6
intYY 
n5YY 
=YY 
intYY 
.YY 
ParseYY 
(YY 
rutYY "
[YY" #
$numYY# $
]YY$ %
.YY% &
ToStringYY& .
(YY. /
)YY/ 0
)YY0 1
*YY2 3
$numYY4 5
;YY5 6
intZZ 
n6ZZ 
=ZZ 
intZZ 
.ZZ 
ParseZZ 
(ZZ 
rutZZ "
[ZZ" #
$numZZ# $
]ZZ$ %
.ZZ% &
ToStringZZ& .
(ZZ. /
)ZZ/ 0
)ZZ0 1
*ZZ2 3
$numZZ4 5
;ZZ5 6
int[[ 
n7[[ 
=[[ 
int[[ 
.[[ 
Parse[[ 
([[ 
rut[[ "
[[[" #
$num[[# $
][[$ %
.[[% &
ToString[[& .
([[. /
)[[/ 0
)[[0 1
*[[2 3
$num[[4 5
;[[5 6
double]] 
suma]] 
=]] 
n0]] 
+]] 
n1]] !
+]]" #
n2]]$ &
+]]' (
n3]]) +
+]], -
n4]]. 0
+]]1 2
n5]]3 5
+]]6 7
n6]]8 :
+]]; <
n7]]= ?
;]]? @
double^^ 
div11^^ 
=^^ 
suma^^ 
/^^  !
$num^^" $
;^^$ %
int__ 
entero__ 
=__ 
(__ 
int__ 
)__ 
div11__ #
;__# $
double`` 
dec`` 
=`` 
div11`` 
-``  
entero``! '
;``' (
doubleaa 
digitoaa 
=aa 
$numaa 
-aa  
(aa! "
$numaa" $
*aa% &
(aa' (
decaa( +
)aa+ ,
)aa, -
;aa- .
digitobb 
=bb 
Mathbb 
.bb 
Roundbb 
(bb  
digitobb  &
)bb& '
;bb' (
ifdd 
(dd 
digitodd 
.dd 
ToStringdd 
(dd  
)dd  !
==dd" $
rutdd% (
[dd( )
$numdd) *
]dd* +
.dd+ ,
ToStringdd, 4
(dd4 5
)dd5 6
)dd6 7
{ee 
thisff 
.ff 

rutUsuarioff 
=ff  !
rutff" %
;ff% &
thisgg 
.gg 
estadogg 
=gg 
$strgg (
;gg( )
}hh 
elseii 
ifii 
(ii 
digitoii 
==ii 
$numii !
&&ii" $
rutii% (
[ii( )
$numii) *
]ii* +
.ii+ ,
ToStringii, 4
(ii4 5
)ii5 6
==ii7 9
$strii: =
)ii= >
{jj 
thiskk 
.kk 

rutUsuariokk 
=kk  !
rutkk" %
;kk% &
thisll 
.ll 
estadoll 
=ll 
$strll (
;ll( )
}mm 
elsenn 
ifnn 
(nn 
digitonn 
==nn 
$numnn !
&&nn" $
rutnn% (
[nn( )
$numnn) *
]nn* +
.nn+ ,
ToStringnn, 4
(nn4 5
)nn5 6
==nn7 9
$strnn: =
)nn= >
{oo 
thispp 
.pp 

rutUsuariopp 
=pp  !
rutpp" %
;pp% &
thisqq 
.qq 
estadoqq 
=qq 
$strqq (
;qq( )
}rr 
elsess 
{tt 
thisuu 
.uu 

rutUsuariouu 
=uu  !
rutuu" %
;uu% &
thisvv 
.vv 
estadovv 
=vv 
$strvv ;
;vv; <
}ww 
}yy 	
}{{ 
}|| �"
;D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Site.Master.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
Site 
: 

MasterPage  *
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{		 	
if

 
(

 
!

 

IsPostBack

 
)

 
{ 
string 

rolUsuario !
=" #
Session$ +
[+ ,
$str, 8
]8 9
as: <
string= C
;C D
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *

rolUsuario* 4
)4 5
)5 6
{ 
ConfigureMenu !
(! "

rolUsuario" ,
), -
;- .
} 
} '
AddDropdownActivationScript '
(' (
)( )
;) *
} 	
private 
void 
ConfigureMenu "
(" #
string# )
rol* -
)- .
{ 	
switch 
( 
rol 
) 
{ 
case 
$str $
:$ % 
SetMenuAdministrador (
(( )
)) *
;* +
break 
; 
case 
$str "
:" #
SetMenuColaborador &
(& '
)' (
;( )
break   
;   
case!! 
$str!! 
:!!  
SetMenuGerencia"" #
(""# $
)""$ %
;""% &
break## 
;## 
case$$ 
$str$$ 
:$$ 
SetMenuRRHH%% 
(%%  
)%%  !
;%%! "
break&& 
;&& 
default'' 
:'' 
SetMenuDefault(( "
(((" #
)((# $
;(($ %
break)) 
;)) 
}** 
}++ 	
private-- 
void--  
SetMenuAdministrador-- )
(--) *
)--* +
{.. 	
navMenu// 
.// 
	InnerHtml// 
=// 
$str	/U  �
;
UU� �
}VV 	
privateXX 
voidXX 
SetMenuColaboradorXX '
(XX' (
)XX( )
{YY 	
navMenuZZ 
.ZZ 
	InnerHtmlZZ 
=ZZ 
$str	Z_  �
;
__� �
}`` 	
privatebb 
voidbb 
SetMenuGerenciabb $
(bb$ %
)bb% &
{cc 	
navMenudd 
.dd 
	InnerHtmldd 
=dd 
$str	dj  �
;
jj� �
}kk 	
privatemm 
voidmm 
SetMenuRRHHmm  
(mm  !
)mm! "
{nn 	
navMenuoo 
.oo 
	InnerHtmloo 
=oo 
$str	or  �
;
rr� �
}ss 	
privateuu 
voiduu 
SetMenuDefaultuu #
(uu# $
)uu$ %
{vv 	
navMenuww 
.ww 
	InnerHtmlww 
=ww 
$strwy  |
;yy| }
}zz 	
	protected|| 
void|| 
Logout_Click|| #
(||# $
object||$ *
sender||+ 1
,||1 2
	EventArgs||3 <
e||= >
)||> ?
{}} 	
Session~~ 
.~~ 
Abandon~~ 
(~~ 
)~~ 
;~~ 
Response 
. 
Redirect 
( 
$str +
)+ ,
;, -
}
�� 	
private
�� 
void
�� )
AddDropdownActivationScript
�� 0
(
��0 1
)
��1 2
{
�� 	
string
�� 
script
�� 
=
�� 
$str
�� 
;
�� 
Page
�� 
.
�� 
ClientScript
�� 
.
�� #
RegisterStartupScript
�� 3
(
��3 4
this
��4 8
.
��8 9
GetType
��9 @
(
��@ A
)
��A B
,
��B C
$str
��D T
,
��T U
script
��V \
)
��\ ]
;
��] ^
}
�� 	
}
�� 
}�� ��
ED:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarUsuario.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public		 

partial		 
class		 
RegistrarUsuario		 )
:		* +
System		, 2
.		2 3
Web		3 6
.		6 7
UI		7 9
.		9 :
Page		: >
{

 
private 
IntranetEntities  
db! #
=$ %
new& )
IntranetEntities* :
(: ;
); <
;< =
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarDatos 
( 
) 
; 
} 
} 	
private 
void 
CargarDatos  
(  !
)! "
{ 	
var 
	gerencias 
= 
db 
. 
	Gerencias (
.( )
ToList) /
(/ 0
)0 1
;1 2
GerenciaDdl 
. 

DataSource "
=# $
	gerencias% .
;. /
GerenciaDdl 
. 
DataTextField %
=& '
$str( 0
;0 1
GerenciaDdl 
. 
DataValueField &
=' (
$str) -
;- .
GerenciaDdl 
. 
DataBind  
(  !
)! "
;" #
GerenciaDdl 
. 
Items 
. 
Insert $
($ %
$num% &
,& '
new( +
ListItem, 4
(4 5
$str5 I
,I J
$strK M
)M N
)N O
;O P
var"" 
tiposContrato"" 
="" 
db""  "
.""" #
TiposContrato""# 0
.""0 1
ToList""1 7
(""7 8
)""8 9
;""9 :
ContratoDdl## 
.## 

DataSource## "
=### $
tiposContrato##% 2
;##2 3
ContratoDdl$$ 
.$$ 
DataTextField$$ %
=$$& '
$str$$( 0
;$$0 1
ContratoDdl%% 
.%% 
DataValueField%% &
=%%' (
$str%%) -
;%%- .
ContratoDdl&& 
.&& 
DataBind&&  
(&&  !
)&&! "
;&&" #
ContratoDdl'' 
.'' 
Items'' 
.'' 
Insert'' $
(''$ %
$num''% &
,''& '
new''( +
ListItem'', 4
(''4 5
$str''5 P
,''P Q
$str''R T
)''T U
)''U V
;''V W
var** 
rolesUsuario** 
=** 
db** !
.**! "
RolesUsuario**" .
.**. /
ToList**/ 5
(**5 6
)**6 7
;**7 8
RolUsuarioDdl++ 
.++ 

DataSource++ $
=++% &
rolesUsuario++' 3
;++3 4
RolUsuarioDdl,, 
.,, 
DataTextField,, '
=,,( )
$str,,* 2
;,,2 3
RolUsuarioDdl-- 
.-- 
DataValueField-- (
=--) *
$str--+ /
;--/ 0
RolUsuarioDdl.. 
... 
DataBind.. "
(.." #
)..# $
;..$ %
RolUsuarioDdl// 
.// 
Items// 
.//  
Insert//  &
(//& '
$num//' (
,//( )
new//* -
ListItem//. 6
(//6 7
$str//7 P
,//P Q
$str//R T
)//T U
)//U V
;//V W
CargarSubgerencias22 
(22 
)22  
;22  !
CargarDepartamentos33 
(33  
)33  !
;33! "
CargarUbicaciones44 
(44 
)44 
;44  
}55 	
private77 
void77 
CargarSubgerencias77 '
(77' (
int77( +
?77+ ,

gerenciaId77- 7
=778 9
null77: >
)77> ?
{88 	
var99 
subgerencias99 
=99 

gerenciaId99 )
.99) *
HasValue99* 2
?:: 
db:: 
.:: 
Subgerencias:: !
.::! "
Where::" '
(::' (
s::( )
=>::* ,
s::- .
.::. /

idGerencia::/ 9
==::: <

gerenciaId::= G
)::G H
.::H I
ToList::I O
(::O P
)::P Q
:;; 
db;; 
.;; 
Subgerencias;; !
.;;! "
ToList;;" (
(;;( )
);;) *
;;;* +
SubgerenciaDdl<< 
.<< 

DataSource<< %
=<<& '
subgerencias<<( 4
;<<4 5
SubgerenciaDdl== 
.== 
DataTextField== (
===) *
$str==+ 3
;==3 4
SubgerenciaDdl>> 
.>> 
DataValueField>> )
=>>* +
$str>>, 0
;>>0 1
SubgerenciaDdl?? 
.?? 
DataBind?? #
(??# $
)??$ %
;??% &
SubgerenciaDdl@@ 
.@@ 
Items@@  
.@@  !
Insert@@! '
(@@' (
$num@@( )
,@@) *
new@@+ .
ListItem@@/ 7
(@@7 8
$str@@8 O
,@@O P
$str@@Q S
)@@S T
)@@T U
;@@U V
}AA 	
privateCC 
voidCC 
CargarDepartamentosCC (
(CC( )
intCC) ,
?CC, -
subgerenciaIdCC. ;
=CC< =
nullCC> B
)CCB C
{DD 	
varEE 
departamentosEE 
=EE 
subgerenciaIdEE  -
.EE- .
HasValueEE. 6
?FF 
dbFF 
.FF 
DepartamentosFF "
.FF" #
WhereFF# (
(FF( )
dFF) *
=>FF+ -
dFF. /
.FF/ 0
idSubgerenciaFF0 =
==FF> @
subgerenciaIdFFA N
)FFN O
.FFO P
ToListFFP V
(FFV W
)FFW X
:GG 
dbGG 
.GG 
DepartamentosGG "
.GG" #
ToListGG# )
(GG) *
)GG* +
;GG+ ,
DepartamentoDdlHH 
.HH 

DataSourceHH &
=HH' (
departamentosHH) 6
;HH6 7
DepartamentoDdlII 
.II 
DataTextFieldII )
=II* +
$strII, 4
;II4 5
DepartamentoDdlJJ 
.JJ 
DataValueFieldJJ *
=JJ+ ,
$strJJ- 1
;JJ1 2
DepartamentoDdlKK 
.KK 
DataBindKK $
(KK$ %
)KK% &
;KK& '
DepartamentoDdlLL 
.LL 
ItemsLL !
.LL! "
InsertLL" (
(LL( )
$numLL) *
,LL* +
newLL, /
ListItemLL0 8
(LL8 9
$strLL9 P
,LLP Q
$strLLR T
)LLT U
)LLU V
;LLV W
}MM 	
privateOO 
voidOO 
CargarUbicacionesOO &
(OO& '
intOO' *
?OO* +
departamentoIdOO, :
=OO; <
nullOO= A
)OOA B
{PP 	
varQQ 
ubicacionesQQ 
=QQ 
departamentoIdQQ ,
.QQ, -
HasValueQQ- 5
?RR 
dbRR 
.RR 
UbicacionesRR  
.RR  !
WhereRR! &
(RR& '
uRR' (
=>RR) +
uRR, -
.RR- .
idDepartamentoRR. <
==RR= ?
departamentoIdRR@ N
)RRN O
.RRO P
ToListRRP V
(RRV W
)RRW X
:SS 
dbSS 
.SS 
UbicacionesSS  
.SS  !
ToListSS! '
(SS' (
)SS( )
;SS) *
UbicaciónDdlTT 
.TT 

DataSourceTT #
=TT$ %
ubicacionesTT& 1
;TT1 2
UbicaciónDdlUU 
.UU 
DataTextFieldUU &
=UU' (
$strUU) 1
;UU1 2
UbicaciónDdlVV 
.VV 
DataValueFieldVV '
=VV( )
$strVV* .
;VV. /
UbicaciónDdlWW 
.WW 
DataBindWW !
(WW! "
)WW" #
;WW# $
UbicaciónDdlXX 
.XX 
ItemsXX 
.XX 
InsertXX %
(XX% &
$numXX& '
,XX' (
newXX) ,
ListItemXX- 5
(XX5 6
$strXX6 K
,XXK L
$strXXM O
)XXO P
)XXP Q
;XXQ R
}YY 	
	protected[[ 
void[[ #
GuardarUsuarioBtn_Click[[ .
([[. /
object[[/ 5
sender[[6 <
,[[< =
	EventArgs[[> G
e[[H I
)[[I J
{\\ 	
if]] 
(]] 
Page]] 
.]] 
IsValid]] 
)]] 
{^^ 
if__ 
(__ 
!__ 
UsuarioExiste__ "
(__" #
RutTxt__# )
.__) *
Text__* .
)__. /
)__/ 0
{`` 
Usuariosaa 
nuevoUsuarioaa )
=aa* +
newaa, /
Usuariosaa0 8
{bb 
nombrecc 
=cc  
	NombreTxtcc! *
.cc* +
Textcc+ /
,cc/ 0
apellidodd  
=dd! "
ApellidoTxtdd# .
.dd. /
Textdd/ 3
,dd3 4
fechaNacimientoee '
=ee( )
DateTimeee* 2
.ee2 3
Parseee3 8
(ee8 9
FechaNacimientoTxtee9 K
.eeK L
TexteeL P
)eeP Q
,eeQ R

rutUsuarioff "
=ff# $
RutTxtff% +
.ff+ ,
Textff, 0
,ff0 1
cargogg 
=gg 
CargoTxtgg  (
.gg( )
Textgg) -
,gg- .

idGerenciahh "
=hh# $
stringhh% +
.hh+ ,
IsNullOrEmptyhh, 9
(hh9 :
GerenciaDdlhh: E
.hhE F
SelectedValuehhF S
)hhS T
?hhU V
(hhW X
inthhX [
?hh[ \
)hh\ ]
nullhh] a
:hhb c
inthhd g
.hhg h
Parsehhh m
(hhm n
GerenciaDdlhhn y
.hhy z
SelectedValue	hhz �
)
hh� �
,
hh� �
idSubgerenciaii %
=ii& '
stringii( .
.ii. /
IsNullOrEmptyii/ <
(ii< =
SubgerenciaDdlii= K
.iiK L
SelectedValueiiL Y
)iiY Z
?ii[ \
(ii] ^
intii^ a
?iia b
)iib c
nulliic g
:iih i
intiij m
.iim n
Parseiin s
(iis t
SubgerenciaDdl	iit �
.
ii� �
SelectedValue
ii� �
)
ii� �
,
ii� �
idDepartamentojj &
=jj' (
stringjj) /
.jj/ 0
IsNullOrEmptyjj0 =
(jj= >
DepartamentoDdljj> M
.jjM N
SelectedValuejjN [
)jj[ \
?jj] ^
(jj_ `
intjj` c
?jjc d
)jjd e
nulljje i
:jjj k
intjjl o
.jjo p
Parsejjp u
(jju v
DepartamentoDdl	jjv �
.
jj� �
SelectedValue
jj� �
)
jj� �
,
jj� �
idUbicacionkk #
=kk$ %
stringkk& ,
.kk, -
IsNullOrEmptykk- :
(kk: ;
UbicaciónDdlkk; G
.kkG H
SelectedValuekkH U
)kkU V
?kkW X
(kkY Z
intkkZ ]
?kk] ^
)kk^ _
nullkk_ c
:kkd e
intkkf i
.kki j
Parsekkj o
(kko p
UbicaciónDdlkkp |
.kk| }
SelectedValue	kk} �
)
kk� �
,
kk� �
jefell 
=ll 
JefeTxtll &
.ll& '
Textll' +
,ll+ ,
idRolUsuariomm $
=mm% &
stringmm' -
.mm- .
IsNullOrEmptymm. ;
(mm; <
RolUsuarioDdlmm< I
.mmI J
SelectedValuemmJ W
)mmW X
?mmY Z
(mm[ \
intmm\ _
?mm_ `
)mm` a
nullmma e
:mmf g
intmmh k
.mmk l
Parsemml q
(mmq r
RolUsuarioDdlmmr 
.	mm �
SelectedValue
mm� �
)
mm� �
,
mm� �
idTipoContratonn &
=nn' (
stringnn) /
.nn/ 0
IsNullOrEmptynn0 =
(nn= >
ContratoDdlnn> I
.nnI J
SelectedValuennJ W
)nnW X
?nnY Z
(nn[ \
intnn\ _
?nn_ `
)nn` a
nullnna e
:nnf g
intnnh k
.nnk l
Parsennl q
(nnq r
ContratoDdlnnr }
.nn} ~
SelectedValue	nn~ �
)
nn� �
,
nn� �
fechaIngresooo $
=oo% &
DateTimeoo' /
.oo/ 0
Parseoo0 5
(oo5 6
FechaIngresoTxtoo6 E
.ooE F
TextooF J
)ooJ K
,ooK L
emailpp 
=pp 
EmailTxtpp  (
.pp( )
Textpp) -
,pp- .
celularqq 
=qq  !
stringqq" (
.qq( )
IsNullOrEmptyqq) 6
(qq6 7

CelularTxtqq7 A
.qqA B
TextqqB F
)qqF G
?qqH I
(qqJ K
intqqK N
?qqN O
)qqO P
nullqqP T
:qqU V
intqqW Z
.qqZ [
Parseqq[ `
(qq` a

CelularTxtqqa k
.qqk l
Textqql p
)qqp q
,qqq r
contraseñarr "
=rr# $
GenerarContraseñarr% 6
(rr6 7
)rr7 8
}ss 
;ss 
dbuu 
.uu 
Usuariosuu 
.uu  
Adduu  #
(uu# $
nuevoUsuariouu$ 0
)uu0 1
;uu1 2
dbvv 
.vv 
SaveChangesvv "
(vv" #
)vv# $
;vv$ %
Responsexx 
.xx 
Redirectxx %
(xx% &
$strxx& U
)xxU V
;xxV W
}yy 
elsezz 
{{{ 
RutCV|| 
.|| 
ErrorMessage|| &
=||' (
$str||) P
;||P Q
RutCV}} 
.}} 
IsValid}} !
=}}" #
false}}$ )
;}}) *
}~~ 
} 
}
�� 	
private
�� 
bool
�� 
UsuarioExiste
�� "
(
��" #
string
��# )

rutUsuario
��* 4
)
��4 5
{
�� 	
return
�� 
db
�� 
.
�� 
Usuarios
�� 
.
�� 
Any
�� "
(
��" #
u
��# $
=>
��% '
u
��( )
.
��) *

rutUsuario
��* 4
==
��5 7

rutUsuario
��8 B
)
��B C
;
��C D
}
�� 	
	protected
�� 
void
�� "
RutCV_ServerValidate
�� +
(
��+ ,
object
��, 2
source
��3 9
,
��9 :%
ServerValidateEventArgs
��; R
args
��S W
)
��W X
{
�� 	
	Validador
�� 
	objValida
�� 
=
��  !
new
��" %
	Validador
��& /
(
��/ 0
)
��0 1
;
��1 2
	objValida
�� 
.
�� 
ValidaVacio
�� !
(
��! "
RutTxt
��" (
.
��( )
Text
��) -
.
��- .
Trim
��. 2
(
��2 3
)
��3 4
)
��4 5
;
��5 6
	objValida
�� 
.
�� %
ValidaNumDigVerificador
�� -
(
��- .
RutTxt
��. 4
.
��4 5
Text
��5 9
.
��9 :
Trim
��: >
(
��> ?
)
��? @
)
��@ A
;
��A B
	objValida
�� 
.
�� 
ValidaDigito
�� "
(
��" #
RutTxt
��# )
.
��) *
Text
��* .
.
��. /
Trim
��/ 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
	objValida
�� 
.
�� 
xEstado
�� !
!=
��" $
$str
��% /
)
��/ 0
{
�� 
RutCV
�� 
.
�� 
ErrorMessage
�� "
=
��# $
$str
��% 6
;
��6 7
args
�� 
.
�� 
IsValid
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
}
�� 	
private
�� 
string
��  
GenerarContraseña
�� (
(
��( )
)
��) *
{
�� 	
const
�� 
string
�� "
caracteresPermitidos
�� -
=
��. /
$str
��0 p
;
��p q
Random
�� 
rnd
�� 
=
�� 
new
�� 
Random
�� #
(
��# $
)
��$ %
;
��% &
string
�� 
contraseña
�� 
=
�� 
new
��  #
string
��$ *
(
��* +

Enumerable
��+ 5
.
��5 6
Repeat
��6 <
(
��< ="
caracteresPermitidos
��= Q
,
��Q R
$num
��S T
)
��T U
.
�� 
Select
�� 
(
�� 
s
�� 
=>
�� 
s
�� 
[
�� 
rnd
�� "
.
��" #
Next
��# '
(
��' (
s
��( )
.
��) *
Length
��* 0
)
��0 1
]
��1 2
)
��2 3
.
��3 4
ToArray
��4 ;
(
��; <
)
��< =
)
��= >
;
��> ?
return
�� 
contraseña
�� 
;
�� 
}
�� 	
	protected
�� 
void
�� .
 GerenciaDdl_SelectedIndexChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	
int
�� 

gerenciaId
�� 
=
�� 
int
��  
.
��  !
Parse
��! &
(
��& '
GerenciaDdl
��' 2
.
��2 3
SelectedValue
��3 @
)
��@ A
;
��A B 
CargarSubgerencias
�� 
(
�� 

gerenciaId
�� )
)
��) *
;
��* +
}
�� 	
	protected
�� 
void
�� 1
#SubgerenciaDdl_SelectedIndexChanged
�� :
(
��: ;
object
��; A
sender
��B H
,
��H I
	EventArgs
��J S
e
��T U
)
��U V
{
�� 	
int
�� 
subgerenciaId
�� 
=
�� 
int
��  #
.
��# $
Parse
��$ )
(
��) *
SubgerenciaDdl
��* 8
.
��8 9
SelectedValue
��9 F
)
��F G
;
��G H!
CargarDepartamentos
�� 
(
��  
subgerenciaId
��  -
)
��- .
;
��. /
}
�� 	
	protected
�� 
void
�� 2
$DepartamentoDdl_SelectedIndexChanged
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J
	EventArgs
��K T
e
��U V
)
��V W
{
�� 	
int
�� 
departamentoId
�� 
=
��  
int
��! $
.
��$ %
Parse
��% *
(
��* +
DepartamentoDdl
��+ :
.
��: ;
SelectedValue
��; H
)
��H I
;
��I J
CargarUbicaciones
�� 
(
�� 
departamentoId
�� ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� �5
GD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarPromocion.aspx.cs
	namespace		 	
IntranetWeb		
 
{

 
public 

partial 
class 
RegistrarPromocion +
:, -
System. 4
.4 5
Web5 8
.8 9
UI9 ;
.; <
Page< @
{ 
UsuariosDAL 
usuariosDAL 
=  !
new" %
UsuariosDAL& 1
(1 2
)2 3
;3 4
PromocionesDAL 
promocionesDAL %
=& '
new( +
PromocionesDAL, :
(: ;
); <
;< =
private 
void 
CargarTabla  
(  !
List! %
<% &
Usuarios& .
>. /
usuarios0 8
)8 9
{ 	
UsuariosGrid 
. 

DataSource #
=$ %
usuarios& .
;. /
UsuariosGrid 
. 
DataBind !
(! "
)" #
;# $
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarTabla 
( 
usuariosDAL '
.' (
GetAllWithChildren( :
(: ;
); <
)< =
;= >
string 
mensaje 
=  
Request! (
.( )
QueryString) 4
[4 5
$str5 >
]> ?
;? @
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
mensaje* 1
)1 2
)2 3
{ 
if!! 
(!! 
mensaje!! 
.!!  
Equals!!  &
(!!& '
$str!!' <
)!!< =
)!!= >
{"" 
MensajePanel$$ $
.$$$ %
Visible$$% ,
=$$- .
true$$/ 3
;$$3 4
MensajeLabel%% $
.%%$ %
Text%%% )
=%%* +
$str%%, O
;%%O P
}&& 
}'' 
}(( 
})) 	
	protected++ 
void++ #
UsuariosGrid_RowCommand++ .
(++. /
object++/ 5
sender++6 <
,++< =$
GridViewCommandEventArgs++> V
e++W X
)++X Y
{,, 	
if-- 
(-- 
e-- 
.-- 
CommandName-- 
==--  
$str--! 5
)--5 6
{.. 
string00 

rutUsuario00 !
=00" #
e00$ %
.00% &
CommandArgument00& 5
.005 6
ToString006 >
(00> ?
)00? @
;00@ A
Response33 
.33 
Redirect33 !
(33! "
$str33" >
+33? @

rutUsuario33A K
)33K L
;33L M
}44 
}55 	
	protected77 
void77 
SearchBtn_Click77 &
(77& '
object77' -
sender77. 4
,774 5
	EventArgs776 ?
e77@ A
)77A B
{88 	
string99 
searchParam99 
=99  
FilterByDdl99! ,
.99, -
SelectedValue99- :
;99: ;
string:: 

searchTerm:: 
=:: 
SearchTermTxt::  -
.::- .
Text::. 2
.::2 3
ToLower::3 :
(::: ;
)::; <
;::< =
List<< 
<<< 
Usuarios<< 
><< 
usuarios<< #
;<<# $
if>> 
(>> 
searchParam>> 
==>> 
$str>> $
)>>$ %
{?? 
usuarios@@ 
=@@ 
usuariosDAL@@ &
.@@& '
GetAllWithChildren@@' 9
(@@9 :
)@@: ;
.AA 
WhereAA 
(AA 
uAA 
=>AA 
uAA  !
.AA! "
nombreAA" (
.AA( )
ToLowerAA) 0
(AA0 1
)AA1 2
.AA2 3
ContainsAA3 ;
(AA; <

searchTermAA< F
)AAF G
||AAH J
uBB  !
.BB! "
apellidoBB" *
.BB* +
ToLowerBB+ 2
(BB2 3
)BB3 4
.BB4 5
ContainsBB5 =
(BB= >

searchTermBB> H
)BBH I
||BBJ L
uCC  !
.CC! "
	GerenciasCC" +
.CC+ ,
nombreCC, 2
.CC2 3
ToLowerCC3 :
(CC: ;
)CC; <
.CC< =
ContainsCC= E
(CCE F

searchTermCCF P
)CCP Q
||CCR T
uDD  !
.DD! "
SubgerenciasDD" .
.DD. /
nombreDD/ 5
.DD5 6
ToLowerDD6 =
(DD= >
)DD> ?
.DD? @
ContainsDD@ H
(DDH I

searchTermDDI S
)DDS T
||DDU W
uEE  !
.EE! "
DepartamentosEE" /
.EE/ 0
nombreEE0 6
.EE6 7
ToLowerEE7 >
(EE> ?
)EE? @
.EE@ A
ContainsEEA I
(EEI J

searchTermEEJ T
)EET U
||EEV X
uFF  !
.FF! "
UbicacionesFF" -
.FF- .
nombreFF. 4
.FF4 5
ToLowerFF5 <
(FF< =
)FF= >
.FF> ?
ContainsFF? G
(FFG H

searchTermFFH R
)FFR S
)FFS T
.GG 
ToListGG 
(GG 
)GG 
;GG 
}HH 
elseII 
{JJ 
usuariosKK 
=KK 
usuariosDALKK &
.KK& '
GetAllWithChildrenKK' 9
(KK9 :
)KK: ;
.LL 
WhereLL 
(LL 
uLL 
=>LL 
uLL  !
.LL! "
GetTypeLL" )
(LL) *
)LL* +
.LL+ ,
GetPropertyLL, 7
(LL7 8
searchParamLL8 C
)LLC D
.LLD E
GetValueLLE M
(LLM N
uLLN O
,LLO P
nullLLQ U
)LLU V
.LLV W
ToStringLLW _
(LL_ `
)LL` a
.LLa b
ToLowerLLb i
(LLi j
)LLj k
.LLk l
ContainsLLl t
(LLt u

searchTermLLu 
)	LL �
)
LL� �
.MM 
ToListMM 
(MM 
)MM 
;MM 
}NN 
CargarTablaPP 
(PP 
usuariosPP  
)PP  !
;PP! "
}QQ 	
}RR 
}SS �#
DD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarPagina.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public		 

partial		 
class		 
RegistrarPagina		 (
:		) *
System		+ 1
.		1 2
Web		2 5
.		5 6
UI		6 8
.		8 9
Page		9 =
{

 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
	protected 
void "
GuardarPaginaBtn_Click -
(- .
object. 4
sender5 ;
,; <
	EventArgs= F
eG H
)H I
{ 	
string 
titulo 
= 
	TituloTxt %
.% &
Text& *
;* +
string 
metaDescripcion "
=# $
MetaDescripcionTxt% 7
.7 8
Text8 <
;< =
string 
fechaPublicacionStr &
=' (!
FechaPublicacionInput) >
.> ?
Text? C
;C D
string 
tags 
= 
TagsRadioList '
.' (
SelectedValue( 5
;5 6
string 
contenidoPagina "
=# $
ContenidoPaginaTxt% 7
.7 8
Text8 <
;< =
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
contenidoPagina* 9
)9 :
): ;
{ 
ErrorMessageLabel !
.! "
Text" &
=' (
$str) B
;B C
ErrorMessageLabel !
.! "
Visible" )
=* +
true, 0
;0 1
return 
; 
} 
var!! 
	sanitizer!! 
=!! 
new!! 
HtmlSanitizer!!  -
(!!- .
)!!. /
;!!/ 0
string"" 
sanitizedContent"" #
=""$ %
	sanitizer""& /
.""/ 0
Sanitize""0 8
(""8 9
contenidoPagina""9 H
)""H I
;""I J
DateTime$$ 
?$$ 
fechaPublicacion$$ &
=$$' (
null$$) -
;$$- .
if%% 
(%% 
DateTime%% 
.%% 
TryParse%% !
(%%! "
fechaPublicacionStr%%" 5
,%%5 6
out%%7 :
DateTime%%; C

parsedDate%%D N
)%%N O
)%%O P
{&& 
fechaPublicacion''  
=''! "

parsedDate''# -
;''- .
}(( 
var++ 
usuario++ 
=++ 
Session++ !
[++! "
$str++" +
]+++ ,
as++- /
Usuarios++0 8
;++8 9
if,, 
(,, 
usuario,, 
==,, 
null,, 
),,  
{-- 
Response// 
.// 
Redirect// !
(//! "
$str//" .
)//. /
;/// 0
return00 
;00 
}11 
using33 
(33 
var33 
context33 
=33  
new33! $
IntranetEntities33% 5
(335 6
)336 7
)337 8
{44 
Paginas55 
nuevaPagina55 #
=55$ %
new55& )
Paginas55* 1
{66 
titulo77 
=77 
titulo77 #
,77# $
metaDescripcion88 #
=88$ %
metaDescripcion88& 5
,885 6
fechaPublicacion99 $
=99% &
fechaPublicacion99' 7
,997 8
tags:: 
=:: 
tags:: 
,::  
contenidoTexto;; "
=;;# $
sanitizedContent;;% 5
,;;5 6
usuarioAutor<<  
=<<! "
usuario<<# *
.<<* +

rutUsuario<<+ 5
}== 
;== 
context?? 
.?? 
Paginas?? 
.??  
Add??  #
(??# $
nuevaPagina??$ /
)??/ 0
;??0 1
context@@ 
.@@ 
SaveChanges@@ #
(@@# $
)@@$ %
;@@% &
}AA 
ResponseDD 
.DD 
RedirectDD 
(DD 
$strDD /
)DD/ 0
;DD0 1
}EE 	
}FF 
}GG �q
ED:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarNoticia.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
RegistrarNoticia )
:* +
System, 2
.2 3
Web3 6
.6 7
UI7 9
.9 :
Page: >
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
	protected 
void #
GuardarNoticiaBtn_Click .
(. /
object/ 5
sender6 <
,< =
	EventArgs> G
eH I
)I J
{ 	
string 
titulo 
= 
	TituloTxt %
.% &
Text& *
;* +
string 
metaDescripcion "
=# $
MetaDescripcionTxt% 7
.7 8
Text8 <
;< =
string 
fechaPublicacionStr &
=' (!
FechaPublicacionInput) >
.> ?
Text? C
;C D
string 
tags 
= 
TagsRadioList '
.' (
SelectedValue( 5
;5 6
string 
contenidoNoticia #
=$ %
ContenidoNoticiaTxt& 9
.9 :
Text: >
;> ?
bool 
colocarEnSlider  
=! " 
ColocarEnSliderCheck# 7
.7 8
Checked8 ?
;? @
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
contenidoNoticia* :
): ;
); <
{ 
ErrorMessageLabel   !
.  ! "
Text  " &
=  ' (
$str  ) B
;  B C
ErrorMessageLabel!! !
.!!! "
Visible!!" )
=!!* +
true!!, 0
;!!0 1
return"" 
;"" 
}## 
var%% 
	sanitizer%% 
=%% 
new%% 
HtmlSanitizer%%  -
(%%- .
)%%. /
;%%/ 0
string&& 
sanitizedContent&& #
=&&$ %
	sanitizer&&& /
.&&/ 0
Sanitize&&0 8
(&&8 9
contenidoNoticia&&9 I
)&&I J
;&&J K
DateTime(( 
?(( 
fechaPublicacion(( &
=((' (
null(() -
;((- .
if)) 
()) 
DateTime)) 
.)) 
TryParse)) !
())! "
fechaPublicacionStr))" 5
,))5 6
out))7 :
DateTime)); C

parsedDate))D N
)))N O
)))O P
{** 
fechaPublicacion++  
=++! "

parsedDate++# -
;++- .
},, 
var.. 
usuario.. 
=.. 
Session.. !
[..! "
$str.." +
]..+ ,
as..- /
Usuarios..0 8
;..8 9
if// 
(// 
usuario// 
==// 
null// 
)//  
{00 
Response11 
.11 
Redirect11 !
(11! "
$str11" .
)11. /
;11/ 0
return22 
;22 
}33 
string55 
	urlSimple55 
=55 
GenerateUrlSimple55 0
(550 1
titulo551 7
)557 8
;558 9
int77 
?77 %
archivoMultimediaIdSlider77 *
=77+ ,
null77- 1
;771 2
int88 
?88 #
archivoMultimediaIdCard88 (
=88) *
null88+ /
;88/ 0
string:: 
basePath:: 
=:: 
Server:: $
.::$ %
MapPath::% ,
(::, -
$str::- M
)::M N
;::N O
string;; 
relativePath;; 
=;;  !
$";;" $
{;;$ %
DateTime;;% -
.;;- .
Now;;. 1
.;;1 2
Year;;2 6
};;6 7
$str;;7 8
{;;8 9
DateTime;;9 A
.;;A B
Now;;B E
.;;E F
Month;;F K
};;K L
$str;;L M
";;M N
;;;N O
string<< 
fullPath<< 
=<< 
Path<< "
.<<" #
Combine<<# *
(<<* +
basePath<<+ 3
,<<3 4
relativePath<<5 A
)<<A B
;<<B C
if>> 
(>> 
!>> 
	Directory>> 
.>> 
Exists>> !
(>>! "
fullPath>>" *
)>>* +
)>>+ ,
{?? 
	Directory@@ 
.@@ 
CreateDirectory@@ )
(@@) *
fullPath@@* 2
)@@2 3
;@@3 4
}AA 
ifCC 
(CC 
ImagenPortadaSliderCC #
.CC# $
HasFileCC$ +
)CC+ ,
{DD 
stringEE 
fileNameSliderEE %
=EE& '
PathEE( ,
.EE, -
GetFileNameEE- 8
(EE8 9
ImagenPortadaSliderEE9 L
.EEL M
FileNameEEM U
)EEU V
;EEV W
stringFF 
filePathSliderFF %
=FF& '
PathFF( ,
.FF, -
CombineFF- 4
(FF4 5
fullPathFF5 =
,FF= >
fileNameSliderFF? M
)FFM N
;FFN O
ImagenPortadaSliderGG #
.GG# $
SaveAsGG$ *
(GG* +
filePathSliderGG+ 9
)GG9 :
;GG: ;
stringII "
imagenPortadaSliderUrlII -
=II. /
PathII0 4
.II4 5
CombineII5 <
(II< =
relativePathII= I
,III J
fileNameSliderIIK Y
)IIY Z
.IIZ [
ReplaceII[ b
(IIb c
$strIIc g
,IIg h
$strIIi l
)IIl m
;IIm n%
archivoMultimediaIdSliderJJ )
=JJ* +$
GuardarArchivoMultimediaJJ, D
(JJD E
usuarioJJE L
.JJL M

rutUsuarioJJM W
,JJW X
$strJJY a
,JJa b"
imagenPortadaSliderUrlJJc y
)JJy z
;JJz {
}KK 
ifMM 
(MM 
ImagenPortadaCardMM !
.MM! "
HasFileMM" )
)MM) *
{NN 
stringOO 
fileNameCardOO #
=OO$ %
PathOO& *
.OO* +
GetFileNameOO+ 6
(OO6 7
ImagenPortadaCardOO7 H
.OOH I
FileNameOOI Q
)OOQ R
;OOR S
stringPP 
filePathCardPP #
=PP$ %
PathPP& *
.PP* +
CombinePP+ 2
(PP2 3
fullPathPP3 ;
,PP; <
fileNameCardPP= I
)PPI J
;PPJ K
ImagenPortadaCardQQ !
.QQ! "
SaveAsQQ" (
(QQ( )
filePathCardQQ) 5
)QQ5 6
;QQ6 7
stringSS  
imagenPortadaCardUrlSS +
=SS, -
PathSS. 2
.SS2 3
CombineSS3 :
(SS: ;
relativePathSS; G
,SSG H
fileNameCardSSI U
)SSU V
.SSV W
ReplaceSSW ^
(SS^ _
$strSS_ c
,SSc d
$strSSe h
)SSh i
;SSi j#
archivoMultimediaIdCardTT '
=TT( )$
GuardarArchivoMultimediaTT* B
(TTB C
usuarioTTC J
.TTJ K

rutUsuarioTTK U
,TTU V
$strTTW _
,TT_ ` 
imagenPortadaCardUrlTTa u
)TTu v
;TTv w
}UU 
NoticiasWW 
nuevaNoticiaWW !
=WW" #
newWW$ '
NoticiasWW( 0
{XX 
tituloYY 
=YY 
tituloYY 
,YY  
metaDescripcionZZ 
=ZZ  !
metaDescripcionZZ" 1
,ZZ1 2
fechaPublicacion[[  
=[[! "
fechaPublicacion[[# 3
,[[3 4
tags\\ 
=\\ 
tags\\ 
,\\ 
contenidoTexto]] 
=]]  
sanitizedContent]]! 1
,]]1 2
usuarioAutor^^ 
=^^ 
usuario^^ &
.^^& '

rutUsuario^^' 1
,^^1 2
likes__ 
=__ 
$num__ 
,__ 
	urlSimple`` 
=`` 
	urlSimple`` %
,``% &%
ArchivoMultimediaIdSlideraa )
=aa* +%
archivoMultimediaIdSlideraa, E
,aaE F#
ArchivoMultimediaIdCardbb '
=bb( )#
archivoMultimediaIdCardbb* A
,bbA B
ColocarEnSlidercc 
=cc  !
colocarEnSlidercc" 1
}dd 
;dd 
NoticiasDALff 
noticiasDALff #
=ff$ %
newff& )
NoticiasDALff* 5
(ff5 6
)ff6 7
;ff7 8
noticiasDALgg 
.gg 
Addgg 
(gg 
nuevaNoticiagg (
)gg( )
;gg) *
Responseii 
.ii 
Redirectii 
(ii 
$strii )
+ii* +
	urlSimpleii, 5
.ii5 6
	Substringii6 ?
(ii? @
	urlSimpleii@ I
.iiI J
LastIndexOfiiJ U
(iiU V
$chariiV Y
)iiY Z
+ii[ \
$numii] ^
)ii^ _
,ii_ `
falseiia f
)iif g
;iig h
Contextjj 
.jj 
ApplicationInstancejj '
.jj' (
CompleteRequestjj( 7
(jj7 8
)jj8 9
;jj9 :
}kk 	
privatemm 
stringmm 
GenerateUrlSimplemm (
(mm( )
stringmm) /
titulomm0 6
)mm6 7
{nn 	
stringpp 
	urlSimplepp 
=pp 
titulopp %
.pp% &
ToLowerInvariantpp& 6
(pp6 7
)pp7 8
;pp8 9
stringss 
normalizedStringss #
=ss$ %
	urlSimpless& /
.ss/ 0
	Normalizess0 9
(ss9 :
NormalizationFormss: K
.ssK L
FormDssL Q
)ssQ R
;ssR S
StringBuildervv 
stringBuildervv '
=vv( )
newvv* -
StringBuildervv. ;
(vv; <
)vv< =
;vv= >
foreachww 
(ww 
charww 
cww 
inww 
normalizedStringww /
)ww/ 0
{xx 
UnicodeCategoryyy 
unicodeCategoryyy  /
=yy0 1
CharUnicodeInfoyy2 A
.yyA B
GetUnicodeCategoryyyB T
(yyT U
cyyU V
)yyV W
;yyW X
ifzz 
(zz 
unicodeCategoryzz #
!=zz$ &
UnicodeCategoryzz' 6
.zz6 7
NonSpacingMarkzz7 E
)zzE F
{{{ 
stringBuilder|| !
.||! "
Append||" (
(||( )
c||) *
)||* +
;||+ ,
}}} 
}~~ 
	urlSimple
�� 
=
�� 
stringBuilder
�� %
.
��% &
ToString
��& .
(
��. /
)
��/ 0
.
��0 1
	Normalize
��1 :
(
��: ;
NormalizationForm
��; L
.
��L M
FormC
��M R
)
��R S
;
��S T
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 @
,
��@ A
$str
��B D
)
��D E
;
��E F
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 7
,
��7 8
$str
��9 <
)
��< =
.
��= >
Trim
��> B
(
��B C
)
��C D
;
��D E
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 6
,
��6 7
$str
��8 ;
)
��; <
;
��< =
	urlSimple
�� 
=
�� 
$str
�� #
+
��$ %
	urlSimple
��& /
;
��/ 0
return
�� 
	urlSimple
�� 
;
�� 
}
�� 	
private
�� 
int
�� &
GuardarArchivoMultimedia
�� ,
(
��, -
string
��- 3
usuarioAutor
��4 @
,
��@ A
string
��B H
tipoArchivo
��I T
,
��T U
string
��V \

urlArchivo
��] g
)
��g h
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
��  
ArchivosMultimedia
�� "
archivoMultimedia
��# 4
=
��5 6
new
��7 : 
ArchivosMultimedia
��; M
{
�� 
fechaPublicacion
�� $
=
��% &
DateTime
��' /
.
��/ 0
Now
��0 3
,
��3 4
tipoArchivo
�� 
=
��  !
tipoArchivo
��" -
,
��- .

urlArchivo
�� 
=
��  

urlArchivo
��! +
,
��+ ,
usuarioAutor
��  
=
��! "
usuarioAutor
��# /
}
�� 
;
�� 
context
�� 
.
��  
ArchivosMultimedia
�� *
.
��* +
Add
��+ .
(
��. /
archivoMultimedia
��/ @
)
��@ A
;
��A B
context
�� 
.
�� 
SaveChanges
�� #
(
��# $
)
��$ %
;
��% &
System
�� 
.
�� 
Diagnostics
�� "
.
��" #
Debug
��# (
.
��( )
	WriteLine
��) 2
(
��2 3
$str
��3 U
+
��V W
archivoMultimedia
��X i
.
��i j
id
��j l
)
��l m
;
��m n
System
�� 
.
�� 
Diagnostics
�� "
.
��" #
Debug
��# (
.
��( )
	WriteLine
��) 2
(
��2 3
$str
��3 B
+
��C D
archivoMultimedia
��E V
.
��V W

urlArchivo
��W a
)
��a b
;
��b c
return
�� 
archivoMultimedia
�� (
.
��( )
id
��) +
;
��+ ,
}
�� 
}
�� 	
}
�� 
}�� �7
HD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarNacimiento.aspx.cs
	namespace		 	
IntranetWeb		
 
{

 
public 

partial 
class 
RegistrarNacimiento ,
:- .
System/ 5
.5 6
Web6 9
.9 :
UI: <
.< =
Page= A
{ 
UsuariosDAL 
usuariosDAL 
=  !
new" %
UsuariosDAL& 1
(1 2
)2 3
;3 4
private 
void 
CargarTabla  
(  !
List! %
<% &
Usuarios& .
>. /
usuarios0 8
)8 9
{ 	
UsuariosGrid 
. 

DataSource #
=$ %
usuarios& .
;. /
UsuariosGrid 
. 
DataBind !
(! "
)" #
;# $
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarTabla 
( 
usuariosDAL '
.' (
GetAllWithChildren( :
(: ;
); <
)< =
;= >
string 
mensaje 
=  
Request! (
.( )
QueryString) 4
[4 5
$str5 >
]> ?
;? @
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
mensaje* 1
)1 2
)2 3
{ 
if   
(   
mensaje   
.    
Equals    &
(  & '
$str  ' ;
)  ; <
)  < =
{!! 
MensajePanel## $
.##$ %
Visible##% ,
=##- .
true##/ 3
;##3 4
MensajeLabel$$ $
.$$$ %
Text$$% )
=$$* +
$str$$, N
;$$N O
}%% 
}&& 
}'' 
}(( 	
	protected** 
void** #
UsuariosGrid_RowCommand** .
(**. /
object**/ 5
sender**6 <
,**< =$
GridViewCommandEventArgs**> V
e**W X
)**X Y
{++ 	
if,, 
(,, 
e,, 
.,, 
CommandName,, 
==,,  
$str,,! 4
),,4 5
{-- 
string// 

rutUsuario// !
=//" #
e//$ %
.//% &
CommandArgument//& 5
.//5 6
ToString//6 >
(//> ?
)//? @
;//@ A
Response22 
.22 
Redirect22 !
(22! "
$str22" ?
+22@ A

rutUsuario22B L
)22L M
;22M N
}33 
}44 	
	protected66 
void66 
SearchBtn_Click66 &
(66& '
object66' -
sender66. 4
,664 5
	EventArgs666 ?
e66@ A
)66A B
{77 	
string88 
searchParam88 
=88  
FilterByDdl88! ,
.88, -
SelectedValue88- :
;88: ;
string99 

searchTerm99 
=99 
SearchTermTxt99  -
.99- .
Text99. 2
.992 3
ToLower993 :
(99: ;
)99; <
;99< =
List;; 
<;; 
Usuarios;; 
>;; 
usuarios;; #
;;;# $
if== 
(== 
searchParam== 
==== 
$str== $
)==$ %
{>> 
usuarios?? 
=?? 
usuariosDAL?? &
.??& '
GetAllWithChildren??' 9
(??9 :
)??: ;
.@@ 
Where@@ 
(@@ 
u@@ 
=>@@ 
u@@  !
.@@! "
nombre@@" (
.@@( )
ToLower@@) 0
(@@0 1
)@@1 2
.@@2 3
Contains@@3 ;
(@@; <

searchTerm@@< F
)@@F G
||@@H J
uAA  !
.AA! "
apellidoAA" *
.AA* +
ToLowerAA+ 2
(AA2 3
)AA3 4
.AA4 5
ContainsAA5 =
(AA= >

searchTermAA> H
)AAH I
||AAJ L
uBB  !
.BB! "
	GerenciasBB" +
.BB+ ,
nombreBB, 2
.BB2 3
ToLowerBB3 :
(BB: ;
)BB; <
.BB< =
ContainsBB= E
(BBE F

searchTermBBF P
)BBP Q
||BBR T
uCC  !
.CC! "
SubgerenciasCC" .
.CC. /
nombreCC/ 5
.CC5 6
ToLowerCC6 =
(CC= >
)CC> ?
.CC? @
ContainsCC@ H
(CCH I

searchTermCCI S
)CCS T
||CCU W
uDD  !
.DD! "
DepartamentosDD" /
.DD/ 0
nombreDD0 6
.DD6 7
ToLowerDD7 >
(DD> ?
)DD? @
.DD@ A
ContainsDDA I
(DDI J

searchTermDDJ T
)DDT U
||DDV X
uEE  !
.EE! "
UbicacionesEE" -
.EE- .
nombreEE. 4
.EE4 5
ToLowerEE5 <
(EE< =
)EE= >
.EE> ?
ContainsEE? G
(EEG H

searchTermEEH R
)EER S
||EET V
uFF  !
.FF! "
TiposContratoFF" /
.FF/ 0
nombreFF0 6
.FF6 7
ToLowerFF7 >
(FF> ?
)FF? @
.FF@ A
ContainsFFA I
(FFI J

searchTermFFJ T
)FFT U
||FFV X
uGG  !
.GG! "
RolesUsuarioGG" .
.GG. /
nombreGG/ 5
.GG5 6
ToLowerGG6 =
(GG= >
)GG> ?
.GG? @
ContainsGG@ H
(GGH I

searchTermGGI S
)GGS T
)GGT U
.HH 
ToListHH 
(HH 
)HH 
;HH 
}II 
elseJJ 
{KK 
usuariosLL 
=LL 
usuariosDALLL &
.LL& '
GetAllWithChildrenLL' 9
(LL9 :
)LL: ;
.MM 
WhereMM 
(MM 
uMM 
=>MM 
uMM  !
.MM! "
GetTypeMM" )
(MM) *
)MM* +
.MM+ ,
GetPropertyMM, 7
(MM7 8
searchParamMM8 C
)MMC D
.MMD E
GetValueMME M
(MMM N
uMMN O
,MMO P
nullMMQ U
)MMU V
.MMV W
ToStringMMW _
(MM_ `
)MM` a
.MMa b
ToLowerMMb i
(MMi j
)MMj k
.MMk l
ContainsMMl t
(MMt u

searchTermMMu 
)	MM �
)
MM� �
.NN 
ToListNN 
(NN 
)NN 
;NN 
}OO 
CargarTablaQQ 
(QQ 
usuariosQQ  
)QQ  !
;QQ! "
}RR 	
}SS 
}TT �5
MD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\RegistrarCorrespondencia.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public		 

partial		 
class		 $
RegistrarCorrespondencia		 1
:		2 3
System		4 :
.		: ;
Web		; >
.		> ?
UI		? A
.		A B
Page		B F
{

 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
	protected 
void +
GuardarCorrespondenciaBtn_Click 6
(6 7
object7 =
sender> D
,D E
	EventArgsF O
eP Q
)Q R
{ 	
string 
nombreArchivo  
=! "
NombreArchivoTxt# 3
.3 4
Text4 8
;8 9
string 
descripcionArchivo %
=& '!
DescripcionArchivoTxt( =
.= >
Text> B
;B C
string 
fechaIngresoStr "
=# $
FechaIngresoInput% 6
.6 7
Text7 ;
;; <
string 
fechaCierreStr !
=" #
FechaCierreInput$ 4
.4 5
Text5 9
;9 :
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
nombreArchivo* 7
)7 8
||9 ;
string< B
.B C
IsNullOrWhiteSpaceC U
(U V
descripcionArchivoV h
)h i
)i j
{ 
ErrorMessageLabel !
.! "
Text" &
=' (
$str) _
;_ `
ErrorMessageLabel !
.! "
Visible" )
=* +
true, 0
;0 1
return 
; 
} 
DateTime 
? 
fechaIngreso "
=# $
null% )
;) *
if 
( 
DateTime 
. 
TryParse !
(! "
fechaIngresoStr" 1
,1 2
out3 6
DateTime7 ?
parsedFechaIngreso@ R
)R S
)S T
{ 
fechaIngreso   
=   
parsedFechaIngreso   1
;  1 2
}!! 
DateTime## 
?## 
fechaCierre## !
=##" #
null##$ (
;##( )
if$$ 
($$ 
DateTime$$ 
.$$ 
TryParse$$ !
($$! "
fechaCierreStr$$" 0
,$$0 1
out$$2 5
DateTime$$6 >
parsedFechaCierre$$? P
)$$P Q
)$$Q R
{%% 
fechaCierre&& 
=&& 
parsedFechaCierre&& /
;&&/ 0
}'' 
var)) 
usuario)) 
=)) 
Session)) !
[))! "
$str))" +
]))+ ,
as))- /
Usuarios))0 8
;))8 9
if** 
(** 
usuario** 
==** 
null** 
)**  
{++ 
Response,, 
.,, 
Redirect,, !
(,,! "
$str,," .
),,. /
;,,/ 0
return-- 
;-- 
}.. 
string00 
filePath00 
=00 
null00 "
;00" #
if11 
(11 
FileUploadControl11 !
.11! "
HasFile11" )
)11) *
{22 
string33 
basePath33 
=33  !
Server33" (
.33( )
MapPath33) 0
(330 1
$str331 F
)33F G
;33G H
string44 
relativePath44 #
=44$ %
$"44& (
{44( )
DateTime44) 1
.441 2
Now442 5
.445 6
Year446 :
}44: ;
$str44; <
{44< =
DateTime44= E
.44E F
Now44F I
.44I J
Month44J O
}44O P
$str44P Q
"44Q R
;44R S
string55 
fullPath55 
=55  !
Path55" &
.55& '
Combine55' .
(55. /
basePath55/ 7
,557 8
relativePath559 E
)55E F
;55F G
if77 
(77 
!77 
	Directory77 
.77 
Exists77 %
(77% &
fullPath77& .
)77. /
)77/ 0
{88 
	Directory99 
.99 
CreateDirectory99 -
(99- .
fullPath99. 6
)996 7
;997 8
}:: 
string<< 
fileName<< 
=<<  !
Path<<" &
.<<& '
GetFileName<<' 2
(<<2 3
FileUploadControl<<3 D
.<<D E
FileName<<E M
)<<M N
;<<N O
filePath== 
=== 
Path== 
.==  
Combine==  '
(==' (
fullPath==( 0
,==0 1
fileName==2 :
)==: ;
;==; <
FileUploadControl>> !
.>>! "
SaveAs>>" (
(>>( )
filePath>>) 1
)>>1 2
;>>2 3
filePath@@ 
=@@ 
Path@@ 
.@@  
Combine@@  '
(@@' (
$str@@( :
,@@: ;
relativePath@@< H
,@@H I
fileName@@J R
)@@R S
.@@S T
Replace@@T [
(@@[ \
$str@@\ `
,@@` a
$str@@b e
)@@e f
;@@f g
}AA 
CorrespondenciasCC  
nuevaCorrespondenciaCC 1
=CC2 3
newCC4 7
CorrespondenciasCC8 H
{DD 
usuarioEE 
=EE 
usuarioEE !
.EE! "

rutUsuarioEE" ,
,EE, -
nombreArchivoFF 
=FF 
nombreArchivoFF  -
,FF- .
descripcionArchivoGG "
=GG# $
descripcionArchivoGG% 7
,GG7 8
fechaIngresoHH 
=HH 
fechaIngresoHH +
,HH+ ,
fechaCierreII 
=II 
fechaCierreII )
,II) *
rutaArchivoJJ 
=JJ 
filePathJJ &
}KK 
;KK 
CorrespondenciasDALMM 
correspondenciasDALMM  3
=MM4 5
newMM6 9
CorrespondenciasDALMM: M
(MMM N
)MMN O
;MMO P
correspondenciasDALNN 
.NN  
AddCorrespondenciaNN  2
(NN2 3 
nuevaCorrespondenciaNN3 G
)NNG H
;NNH I
ResponsePP 
.PP 
RedirectPP 
(PP 
$strPP U
)PPU V
;PPV W
}QQ 	
}RR 
}SS �
GD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *�	
CD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\NuestraEmpresa.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
NuestraEmpresa '
:( )
Page* .
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{		 	
if

 
(

 
!

 

IsPostBack

 
)

 
{ 
} '
AddDropdownActivationScript '
(' (
)( )
;) *
} 	
private 
void '
AddDropdownActivationScript 0
(0 1
)1 2
{ 	
string 
script 
= 
$str 
; 
Page 
. 
ClientScript 
. !
RegisterStartupScript 3
(3 4
this4 8
.8 9
GetType9 @
(@ A
)A B
,B C
$strD T
,T U
scriptV \
)\ ]
;] ^
} 	
}   
}!! �%
>D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Novedades.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
	Novedades "
:# $
System% +
.+ ,
Web, /
./ 0
UI0 2
.2 3
Page3 7
{		 
	protected

 
void

 
	Page_Load

  
(

  !
object

! '
sender

( .
,

. /
	EventArgs

0 9
e

: ;
)

; <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
LoadLatestNews 
( 
)  
;  !
LoadOtherNews 
( 
) 
;  
} 
} 	
private 
void 
LoadLatestNews #
(# $
)$ %
{ 	
using 
( 
var 
context 
=  
new! $
IntranetEntities% 5
(5 6
)6 7
)7 8
{ 
var 

latestNews 
=  
context! (
.( )
Noticias) 1
. 
OrderByDescending &
(& '
n' (
=>) +
n, -
.- .
fechaPublicacion. >
)> ?
. 
Take 
( 
$num 
) 
. 
Select 
( 
n 
=>  
new! $
{ 
n 
. 
titulo  
,  !
n 
. 
metaDescripcion )
,) *
AutorNombre #
=$ %
n& '
.' (
Usuarios( 0
.0 1
nombre1 7
+8 9
$str: =
+> ?
n@ A
.A B
UsuariosB J
.J K
apellidoK S
,S T
n 
. 
fechaPublicacion *
,* +
ImagenUrlCard   %
=  & '
n  ( )
.  ) *
ArchivosMultimedia  * <
.  < =

urlArchivo  = G
,  G H
n!! 
.!! 
	urlSimple!! #
,!!# $
tags"" 
="" 
n""  
.""  !
tags""! %
}## 
)## 
.$$ 
ToList$$ 
($$ 
)$$ 
;$$ 
RepeaterLatestNews&& "
.&&" #

DataSource&&# -
=&&. /

latestNews&&0 :
;&&: ;
RepeaterLatestNews'' "
.''" #
DataBind''# +
(''+ ,
)'', -
;''- .
}(( 
})) 	
private++ 
void++ 
LoadOtherNews++ "
(++" #
)++# $
{,, 	
using-- 
(-- 
var-- 
context-- 
=--  
new--! $
IntranetEntities--% 5
(--5 6
)--6 7
)--7 8
{.. 
var// 
	otherNews// 
=// 
context//  '
.//' (
Noticias//( 0
.00 
OrderByDescending00 &
(00& '
n00' (
=>00) +
n00, -
.00- .
fechaPublicacion00. >
)00> ?
.11 
Skip11 
(11 
$num11 
)11 
.22 
Select22 
(22 
n22 
=>22  
new22! $
{33 
n44 
.44 
titulo44  
,44  !
n55 
.55 
metaDescripcion55 )
,55) *
AutorNombre66 #
=66$ %
n66& '
.66' (
Usuarios66( 0
.660 1
nombre661 7
+668 9
$str66: =
+66> ?
n66@ A
.66A B
Usuarios66B J
.66J K
apellido66K S
,66S T
n77 
.77 
fechaPublicacion77 *
,77* +
ImagenUrlCard88 %
=88& '
n88( )
.88) *
ArchivosMultimedia88* <
.88< =

urlArchivo88= G
,88G H
n99 
.99 
	urlSimple99 #
,99# $
tags:: 
=:: 
n::  
.::  !
tags::! %
};; 
);; 
.<< 
ToList<< 
(<< 
)<< 
;<< 
RepeaterOtherNews>> !
.>>! "

DataSource>>" ,
=>>- .
	otherNews>>/ 8
;>>8 9
RepeaterOtherNews?? !
.??! "
DataBind??" *
(??* +
)??+ ,
;??, -
}@@ 
}AA 	
}BB 
}CC �#
<D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Noticia.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
Noticia  
:! "
System# )
.) *
Web* -
.- .
UI. 0
.0 1
Page1 5
{ 
	protected		 
void		 
	Page_Load		  
(		  !
object		! '
sender		( .
,		. /
	EventArgs		0 9
e		: ;
)		; <
{

 	
if 
( 
! 

IsPostBack 
) 
{ 
string 
	urlSimple  
=! "
Request# *
.* +
QueryString+ 6
[6 7
$str7 <
]< =
;= >
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
	urlSimple* 3
)3 4
)4 5
{ 
MostrarNoticia "
(" #
	urlSimple# ,
), -
;- .
} 
else 
{ 
Response 
. 
Redirect %
(% &
$str& 2
)2 3
;3 4
} 
} 
} 	
private 
void 
MostrarNoticia #
(# $
string$ *
	urlSimple+ 4
)4 5
{ 	
using 
( 
var 
context 
=  
new! $
IntranetEntities% 5
(5 6
)6 7
)7 8
{ 
var 
noticia 
= 
context %
.% &
Noticias& .
. 
Include 
( 
$str '
)' (
.   
FirstOrDefault   #
(  # $
n  $ %
=>  & (
n  ) *
.  * +
	urlSimple  + 4
==  5 7
	urlSimple  8 A
)  A B
;  B C
if"" 
("" 
noticia"" 
!="" 
null"" #
)""# $
{## 
tituloNoticia$$ !
.$$! "
	InnerText$$" +
=$$, -
noticia$$. 5
.$$5 6
titulo$$6 <
;$$< =
fechaPublicacion%% $
.%%$ %
	InnerText%%% .
=%%/ 0
noticia%%1 8
.%%8 9
fechaPublicacion%%9 I
?%%I J
.%%J K
ToString%%K S
(%%S T
$str%%T b
)%%b c
??%%d f
$str%%g r
;%%r s

tagNoticia&& 
.&& 
	InnerText&& (
=&&) *
noticia&&+ 2
.&&2 3
tags&&3 7
;&&7 8
tagLink'' 
.'' 
	InnerText'' %
=''& '
noticia''( /
.''/ 0
tags''0 4
;''4 5
contenidoNoticia(( $
.(($ %
	InnerHtml((% .
=((/ 0
noticia((1 8
.((8 9
contenidoTexto((9 G
;((G H
autorNombre++ 
.++  
	InnerText++  )
=++* +
noticia++, 3
.++3 4
Usuarios++4 <
.++< =
nombre++= C
+++D E
$str++F I
+++J K
noticia++L S
.++S T
Usuarios++T \
.++\ ]
apellido++] e
;++e f
var.. 
imagenPortadaSlider.. +
=.., -
context... 5
...5 6
ArchivosMultimedia..6 H
.// 
FirstOrDefault// '
(//' (
a//( )
=>//* ,
a//- .
.//. /
id/// 1
==//2 4
noticia//5 <
.//< =%
ArchivoMultimediaIdSlider//= V
&&//W Y
a//Z [
.//[ \
tipoArchivo//\ g
==//h j
$str//k s
)//s t
;//t u
if00 
(00 
imagenPortadaSlider00 +
!=00, .
null00/ 3
)003 4
{11 
portadaSlider22 %
.22% &
Src22& )
=22* +
$str22, K
+22L M
imagenPortadaSlider22N a
.22a b

urlArchivo22b l
;22l m
}33 
}44 
else55 
{66 
Response88 
.88 
Redirect88 %
(88% &
$str88& 2
)882 3
;883 4
}99 
}:: 
};; 	
}<< 
}== �
:D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Login.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
Login 
:  
System! '
.' (
Web( +
.+ ,
UI, .
.. /
Page/ 3
{ 
	protected		 
void		 
	Page_Load		  
(		  !
object		! '
sender		( .
,		. /
	EventArgs		0 9
e		: ;
)		; <
{

 	
} 	
	protected 
void 
BtnLogin_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
string 
rut 
= 
form2Example17 '
.' (
Text( ,
;, -
string 
contraseña 
= 
form2Example27  .
.. /
Text/ 3
;3 4
using 
( 
var 
context 
=  
new! $
IntranetEntities% 5
(5 6
)6 7
)7 8
{ 
var 
usuario 
= 
context %
.% &
Usuarios& .
.. /
Include/ 6
(6 7
$str7 E
)E F
.F G
FirstOrDefaultG U
(U V
uV W
=>X Z
u[ \
.\ ]

rutUsuario] g
==h j
rutk n
&&o q
ur s
.s t
contraseñat ~
==	 �
contraseña
� �
)
� �
;
� �
if 
( 
usuario 
!= 
null #
)# $
{ 
Session 
[ 
$str %
]% &
=' (
usuario) 0
;0 1
Session 
[ 
$str (
]( )
=* +
usuario, 3
.3 4
RolesUsuario4 @
.@ A
nombreA G
;G H
switch 
( 
usuario #
.# $
RolesUsuario$ 0
.0 1
nombre1 7
)7 8
{ 
case 
$str ,
:, -
Response   $
.  $ %
Redirect  % -
(  - .
$str  . <
)  < =
;  = >
break!! !
;!!! "
case"" 
$str"" *
:""* +
case## 
$str## '
:##' (
case$$ 
$str$$ #
:$$# $
default%% 
:%%  
Response&& $
.&&$ %
Redirect&&% -
(&&- .
$str&&. 9
)&&9 :
;&&: ;
break'' !
;''! "
}(( 
})) 
else** 
{++ 
lblError-- 
.-- 
Text-- !
=--" #
$str--$ B
;--B C
lblError.. 
... 
Visible.. $
=..% &
true..' +
;..+ ,
}// 
}00 
}11 	
}22 
}33 �%
9D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Home.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
Home 
: 
System  &
.& '
Web' *
.* +
UI+ -
.- .
Page. 2
{		 
	protected

 
void

 
	Page_Load

  
(

  !
object

! '
sender

( .
,

. /
	EventArgs

0 9
e

: ;
)

; <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
LoadSliderNews 
( 
)  
;  !
LoadLatestNews 
( 
)  
;  !
} 
} 	
private 
void 
LoadSliderNews #
(# $
)$ %
{ 	
using 
( 
var 
context 
=  
new! $
IntranetEntities% 5
(5 6
)6 7
)7 8
{ 
var 

sliderNews 
=  
context! (
.( )
Noticias) 1
. 
Where 
( 
n 
=> 
n  !
.! "
ColocarEnSlider" 1
==2 4
true5 9
)9 :
. 
OrderByDescending &
(& '
n' (
=>) +
n, -
.- .
fechaPublicacion. >
)> ?
. 
Take 
( 
$num 
) 
. 
Select 
( 
n 
=>  
new! $
{ 
n 
. 
titulo  
,  !
n 
. 
metaDescripcion )
,) *
	ImagenUrl !
=" #
n$ %
.% &
ArchivosMultimedia1& 9
.9 :

urlArchivo: D
,D E
n   
.   
	urlSimple   #
}!! 
)!! 
."" 
ToList"" 
("" 
)"" 
;"" 
RepeaterSlider$$ 
.$$ 

DataSource$$ )
=$$* +

sliderNews$$, 6
;$$6 7
RepeaterSlider%% 
.%% 
DataBind%% '
(%%' (
)%%( )
;%%) *$
RepeaterSliderIndicators'' (
.''( )

DataSource'') 3
=''4 5

sliderNews''6 @
;''@ A$
RepeaterSliderIndicators(( (
.((( )
DataBind(() 1
(((1 2
)((2 3
;((3 4
})) 
}** 	
private,, 
void,, 
LoadLatestNews,, #
(,,# $
),,$ %
{-- 	
using.. 
(.. 
var.. 
context.. 
=..  
new..! $
IntranetEntities..% 5
(..5 6
)..6 7
)..7 8
{// 
var00 

latestNews00 
=00  
context00! (
.00( )
Noticias00) 1
.11 
OrderByDescending11 &
(11& '
n11' (
=>11) +
n11, -
.11- .
fechaPublicacion11. >
)11> ?
.22 
Take22 
(22 
$num22 
)22 
.33 
Select33 
(33 
n33 
=>33  
new33! $
{44 
n55 
.55 
titulo55  
,55  !
n66 
.66 
metaDescripcion66 )
,66) *
AutorNombre77 #
=77$ %
n77& '
.77' (
Usuarios77( 0
.770 1
nombre771 7
+778 9
$str77: =
+77> ?
n77@ A
.77A B
Usuarios77B J
.77J K
apellido77K S
,77S T
n88 
.88 
fechaPublicacion88 *
,88* +
ImagenUrlCard99 %
=99& '
n99( )
.99) *
ArchivosMultimedia199* =
.99= >

urlArchivo99> H
,99H I
n:: 
.:: 
	urlSimple:: #
,::# $
tags;; 
=;; 
n;;  
.;;  !
tags;;! %
}<< 
)<< 
.== 
ToList== 
(== 
)== 
;== 
RepeaterLatestNews?? "
.??" #

DataSource??# -
=??. /

latestNews??0 :
;??: ;
RepeaterLatestNews@@ "
.@@" #
DataBind@@# +
(@@+ ,
)@@, -
;@@- .
}AA 
}BB 	
}CC 
}DD �
:D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Error.aspx.cs
	namespace 	
IntranetWeb
 
{		 
public

 

partial

 
class

 
Error

 
:

  
System

! '
.

' (
Web

( +
.

+ ,
UI

, .
.

. /
Page

/ 3
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ��
BD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarUsuario.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public		 

partial		 
class		 
EditarUsuario		 &
:		' (
System		) /
.		/ 0
Web		0 3
.		3 4
UI		4 6
.		6 7
Page		7 ;
{

 
private 
IntranetEntities  
db! #
=$ %
new& )
IntranetEntities* :
(: ;
); <
;< =
private 
string 
rutUsuarioEditar '
;' (
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarDatos 
( 
) 
; 
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
Request* 1
.1 2
QueryString2 =
[= >
$str> C
]C D
)D E
)E F
{ 
rutUsuarioEditar $
=% &
Request' .
.. /
QueryString/ :
[: ;
$str; @
]@ A
;A B
CargarDatosUsuario &
(& '
rutUsuarioEditar' 7
)7 8
;8 9
} 
else 
{ 
Response 
. 
Redirect %
(% &
$str& 2
)2 3
;3 4
} 
} 
} 	
private   
void   
CargarDatos    
(    !
)  ! "
{!! 	
var## 
	gerencias## 
=## 
db## 
.## 
	Gerencias## (
.##( )
ToList##) /
(##/ 0
)##0 1
;##1 2
GerenciaDdl$$ 
.$$ 

DataSource$$ "
=$$# $
	gerencias$$% .
;$$. /
GerenciaDdl%% 
.%% 
DataTextField%% %
=%%& '
$str%%( 0
;%%0 1
GerenciaDdl&& 
.&& 
DataValueField&& &
=&&' (
$str&&) -
;&&- .
GerenciaDdl'' 
.'' 
DataBind''  
(''  !
)''! "
;''" #
GerenciaDdl(( 
.(( 
Items(( 
.(( 
Insert(( $
((($ %
$num((% &
,((& '
new((( +
ListItem((, 4
(((4 5
$str((5 I
,((I J
$str((K M
)((M N
)((N O
;((O P
var++ 
tiposContrato++ 
=++ 
db++  "
.++" #
TiposContrato++# 0
.++0 1
ToList++1 7
(++7 8
)++8 9
;++9 :
ContratoDdl,, 
.,, 

DataSource,, "
=,,# $
tiposContrato,,% 2
;,,2 3
ContratoDdl-- 
.-- 
DataTextField-- %
=--& '
$str--( 0
;--0 1
ContratoDdl.. 
... 
DataValueField.. &
=..' (
$str..) -
;..- .
ContratoDdl// 
.// 
DataBind//  
(//  !
)//! "
;//" #
ContratoDdl00 
.00 
Items00 
.00 
Insert00 $
(00$ %
$num00% &
,00& '
new00( +
ListItem00, 4
(004 5
$str005 P
,00P Q
$str00R T
)00T U
)00U V
;00V W
var33 
rolesUsuario33 
=33 
db33 !
.33! "
RolesUsuario33" .
.33. /
ToList33/ 5
(335 6
)336 7
;337 8
RolUsuarioDdl44 
.44 

DataSource44 $
=44% &
rolesUsuario44' 3
;443 4
RolUsuarioDdl55 
.55 
DataTextField55 '
=55( )
$str55* 2
;552 3
RolUsuarioDdl66 
.66 
DataValueField66 (
=66) *
$str66+ /
;66/ 0
RolUsuarioDdl77 
.77 
DataBind77 "
(77" #
)77# $
;77$ %
RolUsuarioDdl88 
.88 
Items88 
.88  
Insert88  &
(88& '
$num88' (
,88( )
new88* -
ListItem88. 6
(886 7
$str887 P
,88P Q
$str88R T
)88T U
)88U V
;88V W
CargarSubgerencias;; 
(;; 
);;  
;;;  !
CargarDepartamentos<< 
(<<  
)<<  !
;<<! "
CargarUbicaciones== 
(== 
)== 
;==  
}>> 	
private@@ 
void@@ 
CargarSubgerencias@@ '
(@@' (
int@@( +
?@@+ ,

gerenciaId@@- 7
=@@8 9
null@@: >
)@@> ?
{AA 	
varBB 
subgerenciasBB 
=BB 

gerenciaIdBB )
.BB) *
HasValueBB* 2
?CC 
dbCC 
.CC 
SubgerenciasCC !
.CC! "
WhereCC" '
(CC' (
sCC( )
=>CC* ,
sCC- .
.CC. /

idGerenciaCC/ 9
==CC: <

gerenciaIdCC= G
)CCG H
.CCH I
ToListCCI O
(CCO P
)CCP Q
:DD 
dbDD 
.DD 
SubgerenciasDD !
.DD! "
ToListDD" (
(DD( )
)DD) *
;DD* +
SubgerenciaDdlEE 
.EE 

DataSourceEE %
=EE& '
subgerenciasEE( 4
;EE4 5
SubgerenciaDdlFF 
.FF 
DataTextFieldFF (
=FF) *
$strFF+ 3
;FF3 4
SubgerenciaDdlGG 
.GG 
DataValueFieldGG )
=GG* +
$strGG, 0
;GG0 1
SubgerenciaDdlHH 
.HH 
DataBindHH #
(HH# $
)HH$ %
;HH% &
SubgerenciaDdlII 
.II 
ItemsII  
.II  !
InsertII! '
(II' (
$numII( )
,II) *
newII+ .
ListItemII/ 7
(II7 8
$strII8 O
,IIO P
$strIIQ S
)IIS T
)IIT U
;IIU V
}JJ 	
privateLL 
voidLL 
CargarDepartamentosLL (
(LL( )
intLL) ,
?LL, -
subgerenciaIdLL. ;
=LL< =
nullLL> B
)LLB C
{MM 	
varNN 
departamentosNN 
=NN 
subgerenciaIdNN  -
.NN- .
HasValueNN. 6
?OO 
dbOO 
.OO 
DepartamentosOO "
.OO" #
WhereOO# (
(OO( )
dOO) *
=>OO+ -
dOO. /
.OO/ 0
idSubgerenciaOO0 =
==OO> @
subgerenciaIdOOA N
)OON O
.OOO P
ToListOOP V
(OOV W
)OOW X
:PP 
dbPP 
.PP 
DepartamentosPP "
.PP" #
ToListPP# )
(PP) *
)PP* +
;PP+ ,
DepartamentoDdlQQ 
.QQ 

DataSourceQQ &
=QQ' (
departamentosQQ) 6
;QQ6 7
DepartamentoDdlRR 
.RR 
DataTextFieldRR )
=RR* +
$strRR, 4
;RR4 5
DepartamentoDdlSS 
.SS 
DataValueFieldSS *
=SS+ ,
$strSS- 1
;SS1 2
DepartamentoDdlTT 
.TT 
DataBindTT $
(TT$ %
)TT% &
;TT& '
DepartamentoDdlUU 
.UU 
ItemsUU !
.UU! "
InsertUU" (
(UU( )
$numUU) *
,UU* +
newUU, /
ListItemUU0 8
(UU8 9
$strUU9 P
,UUP Q
$strUUR T
)UUT U
)UUU V
;UUV W
}VV 	
privateXX 
voidXX 
CargarUbicacionesXX &
(XX& '
intXX' *
?XX* +
departamentoIdXX, :
=XX; <
nullXX= A
)XXA B
{YY 	
varZZ 
ubicacionesZZ 
=ZZ 
departamentoIdZZ ,
.ZZ, -
HasValueZZ- 5
?[[ 
db[[ 
.[[ 
Ubicaciones[[  
.[[  !
Where[[! &
([[& '
u[[' (
=>[[) +
u[[, -
.[[- .
idDepartamento[[. <
==[[= ?
departamentoId[[@ N
)[[N O
.[[O P
ToList[[P V
([[V W
)[[W X
:\\ 
db\\ 
.\\ 
Ubicaciones\\  
.\\  !
ToList\\! '
(\\' (
)\\( )
;\\) *
UbicaciónDdl]] 
.]] 

DataSource]] #
=]]$ %
ubicaciones]]& 1
;]]1 2
UbicaciónDdl^^ 
.^^ 
DataTextField^^ &
=^^' (
$str^^) 1
;^^1 2
UbicaciónDdl__ 
.__ 
DataValueField__ '
=__( )
$str__* .
;__. /
UbicaciónDdl`` 
.`` 
DataBind`` !
(``! "
)``" #
;``# $
UbicaciónDdlaa 
.aa 
Itemsaa 
.aa 
Insertaa %
(aa% &
$numaa& '
,aa' (
newaa) ,
ListItemaa- 5
(aa5 6
$straa6 K
,aaK L
$straaM O
)aaO P
)aaP Q
;aaQ R
}bb 	
privatedd 
voiddd 
CargarDatosUsuariodd '
(dd' (
stringdd( .
rutdd/ 2
)dd2 3
{ee 	
Usuariosff 
usuarioff 
=ff 
dbff !
.ff! "
Usuariosff" *
.ff* +
SingleOrDefaultff+ :
(ff: ;
uff; <
=>ff= ?
uff@ A
.ffA B

rutUsuarioffB L
==ffM O
rutffP S
)ffS T
;ffT U
ifhh 
(hh 
usuariohh 
!=hh 
nullhh 
)hh  
{ii 
	NombreTxtjj 
.jj 
Textjj 
=jj  
usuariojj! (
.jj( )
nombrejj) /
;jj/ 0
ApellidoTxtkk 
.kk 
Textkk  
=kk! "
usuariokk# *
.kk* +
apellidokk+ 3
;kk3 4
RutTxtll 
.ll 
Textll 
=ll 
usuarioll %
.ll% &

rutUsuarioll& 0
;ll0 1
FechaNacimientoTxtmm "
.mm" #
Textmm# '
=mm( )
usuariomm* 1
.mm1 2
fechaNacimientomm2 A
?mmA B
.mmB C
ToStringmmC K
(mmK L
$strmmL X
)mmX Y
;mmY Z
CargoTxtnn 
.nn 
Textnn 
=nn 
usuarionn  '
.nn' (
cargonn( -
;nn- .
GerenciaDdloo 
.oo 
SelectedValueoo )
=oo* +
usuariooo, 3
.oo3 4

idGerenciaoo4 >
.oo> ?
HasValueoo? G
?ooH I
usuarioooJ Q
.ooQ R

idGerenciaooR \
.oo\ ]
Valueoo] b
.oob c
ToStringooc k
(ook l
)ool m
:oon o
$stroop r
;oor s
CargarSubgerenciaspp "
(pp" #
usuariopp# *
.pp* +

idGerenciapp+ 5
)pp5 6
;pp6 7
SubgerenciaDdlqq 
.qq 
SelectedValueqq ,
=qq- .
usuarioqq/ 6
.qq6 7
idSubgerenciaqq7 D
.qqD E
HasValueqqE M
?qqN O
usuarioqqP W
.qqW X
idSubgerenciaqqX e
.qqe f
Valueqqf k
.qqk l
ToStringqql t
(qqt u
)qqu v
:qqw x
$strqqy {
;qq{ |
CargarDepartamentosrr #
(rr# $
usuariorr$ +
.rr+ ,
idSubgerenciarr, 9
)rr9 :
;rr: ;
DepartamentoDdlss 
.ss  
SelectedValuess  -
=ss. /
usuarioss0 7
.ss7 8
idDepartamentoss8 F
.ssF G
HasValuessG O
?ssP Q
usuariossR Y
.ssY Z
idDepartamentossZ h
.ssh i
Valuessi n
.ssn o
ToStringsso w
(ssw x
)ssx y
:ssz {
$strss| ~
;ss~ 
CargarUbicacionestt !
(tt! "
usuariott" )
.tt) *
idDepartamentott* 8
)tt8 9
;tt9 :
UbicaciónDdluu 
.uu 
SelectedValueuu *
=uu+ ,
usuariouu- 4
.uu4 5
idUbicacionuu5 @
.uu@ A
HasValueuuA I
?uuJ K
usuariouuL S
.uuS T
idUbicacionuuT _
.uu_ `
Valueuu` e
.uue f
ToStringuuf n
(uun o
)uuo p
:uuq r
$struus u
;uuu v
JefeTxtvv 
.vv 
Textvv 
=vv 
usuariovv &
.vv& '
jefevv' +
;vv+ ,
FechaIngresoTxtww 
.ww  
Textww  $
=ww% &
usuarioww' .
.ww. /
fechaIngresoww/ ;
?ww; <
.ww< =
ToStringww= E
(wwE F
$strwwF R
)wwR S
;wwS T
ContratoDdlxx 
.xx 
SelectedValuexx )
=xx* +
usuarioxx, 3
.xx3 4
idTipoContratoxx4 B
.xxB C
HasValuexxC K
?xxL M
usuarioxxN U
.xxU V
idTipoContratoxxV d
.xxd e
Valuexxe j
.xxj k
ToStringxxk s
(xxs t
)xxt u
:xxv w
$strxxx z
;xxz {
RolUsuarioDdlyy 
.yy 
SelectedValueyy +
=yy, -
usuarioyy. 5
.yy5 6
idRolUsuarioyy6 B
.yyB C
HasValueyyC K
?yyL M
usuarioyyN U
.yyU V
idRolUsuarioyyV b
.yyb c
Valueyyc h
.yyh i
ToStringyyi q
(yyq r
)yyr s
:yyt u
$stryyv x
;yyx y
EmailTxtzz 
.zz 
Textzz 
=zz 
usuariozz  '
.zz' (
emailzz( -
;zz- .

CelularTxt{{ 
.{{ 
Text{{ 
={{  !
usuario{{" )
.{{) *
celular{{* 1
?{{1 2
.{{2 3
ToString{{3 ;
({{; <
){{< =
??{{> @
$str{{A C
;{{C D
ContraseñaTxt|| 
.|| 
Text|| "
=||# $
usuario||% ,
.||, -
contraseña||- 7
;||7 8
}}} 
else~~ 
{ 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$str
��" .
)
��. /
;
��/ 0
}
�� 
}
�� 	
	protected
�� 
void
�� %
GuardarUsuarioBtn_Click
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
	EventArgs
��> G
e
��H I
)
��I J
{
�� 	
if
�� 
(
�� 
Page
�� 
.
�� 
IsValid
�� 
)
�� 
{
�� 
string
�� 
nombre
�� 
=
�� 
	NombreTxt
��  )
.
��) *
Text
��* .
;
��. /
string
�� 
apellido
�� 
=
��  !
ApellidoTxt
��" -
.
��- .
Text
��. 2
;
��2 3
string
�� 
rut
�� 
=
�� 
RutTxt
�� #
.
��# $
Text
��$ (
;
��( )
DateTime
�� 
fechaNacimiento
�� (
=
��) *
Convert
��+ 2
.
��2 3

ToDateTime
��3 =
(
��= > 
FechaNacimientoTxt
��> P
.
��P Q
Text
��Q U
)
��U V
;
��V W
string
�� 
cargo
�� 
=
�� 
CargoTxt
�� '
.
��' (
Text
��( ,
;
��, -
int
�� 
?
�� 

idGerencia
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
GerenciaDdl
��7 B
.
��B C
SelectedValue
��C P
)
��P Q
?
��R S
(
��T U
int
��U X
?
��X Y
)
��Y Z
null
��Z ^
:
��_ `
int
��a d
.
��d e
Parse
��e j
(
��j k
GerenciaDdl
��k v
.
��v w
SelectedValue��w �
)��� �
;��� �
int
�� 
?
�� 
idSubgerencia
�� "
=
��# $
string
��% +
.
��+ ,
IsNullOrEmpty
��, 9
(
��9 :
SubgerenciaDdl
��: H
.
��H I
SelectedValue
��I V
)
��V W
?
��X Y
(
��Z [
int
��[ ^
?
��^ _
)
��_ `
null
��` d
:
��e f
int
��g j
.
��j k
Parse
��k p
(
��p q
SubgerenciaDdl
��q 
.�� �
SelectedValue��� �
)��� �
;��� �
int
�� 
?
�� 
idDepartamento
�� #
=
��$ %
string
��& ,
.
��, -
IsNullOrEmpty
��- :
(
��: ;
DepartamentoDdl
��; J
.
��J K
SelectedValue
��K X
)
��X Y
?
��Z [
(
��\ ]
int
��] `
?
��` a
)
��a b
null
��b f
:
��g h
int
��i l
.
��l m
Parse
��m r
(
��r s
DepartamentoDdl��s �
.��� �
SelectedValue��� �
)��� �
;��� �
int
�� 
?
�� 
idUbicacion
��  
=
��! "
string
��# )
.
��) *
IsNullOrEmpty
��* 7
(
��7 8
UbicaciónDdl
��8 D
.
��D E
SelectedValue
��E R
)
��R S
?
��T U
(
��V W
int
��W Z
?
��Z [
)
��[ \
null
��\ `
:
��a b
int
��c f
.
��f g
Parse
��g l
(
��l m
UbicaciónDdl
��m y
.
��y z
SelectedValue��z �
)��� �
;��� �
string
�� 
jefe
�� 
=
�� 
JefeTxt
�� %
.
��% &
Text
��& *
;
��* +
DateTime
�� 
fechaIngreso
�� %
=
��& '
Convert
��( /
.
��/ 0

ToDateTime
��0 :
(
��: ;
FechaIngresoTxt
��; J
.
��J K
Text
��K O
)
��O P
;
��P Q
int
�� 
?
�� 
idTipoContrato
�� #
=
��$ %
string
��& ,
.
��, -
IsNullOrEmpty
��- :
(
��: ;
ContratoDdl
��; F
.
��F G
SelectedValue
��G T
)
��T U
?
��V W
(
��X Y
int
��Y \
?
��\ ]
)
��] ^
null
��^ b
:
��c d
int
��e h
.
��h i
Parse
��i n
(
��n o
ContratoDdl
��o z
.
��z {
SelectedValue��{ �
)��� �
;��� �
int
�� 
?
�� 
idRolUsuario
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9
RolUsuarioDdl
��9 F
.
��F G
SelectedValue
��G T
)
��T U
?
��V W
(
��X Y
int
��Y \
?
��\ ]
)
��] ^
null
��^ b
:
��c d
int
��e h
.
��h i
Parse
��i n
(
��n o
RolUsuarioDdl
��o |
.
��| }
SelectedValue��} �
)��� �
;��� �
string
�� 
email
�� 
=
�� 
EmailTxt
�� '
.
��' (
Text
��( ,
;
��, -
int
�� 
?
�� 
celular
�� 
=
�� 
string
�� %
.
��% &
IsNullOrEmpty
��& 3
(
��3 4

CelularTxt
��4 >
.
��> ?
Text
��? C
)
��C D
?
��E F
(
��G H
int
��H K
?
��K L
)
��L M
null
��M Q
:
��R S
int
��T W
.
��W X
Parse
��X ]
(
��] ^

CelularTxt
��^ h
.
��h i
Text
��i m
)
��m n
;
��n o
string
�� 
contraseña
�� !
=
��" #
ContraseñaTxt
��$ 1
.
��1 2
Text
��2 6
;
��6 7
Usuarios
�� 
usuario
��  
=
��! "
db
��# %
.
��% &
Usuarios
��& .
.
��. /
SingleOrDefault
��/ >
(
��> ?
u
��? @
=>
��A C
u
��D E
.
��E F

rutUsuario
��F P
==
��Q S
rut
��T W
)
��W X
;
��X Y
if
�� 
(
�� 
usuario
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
usuario
�� 
.
�� 
nombre
�� "
=
��# $
nombre
��% +
;
��+ ,
usuario
�� 
.
�� 
apellido
�� $
=
��% &
apellido
��' /
;
��/ 0
usuario
�� 
.
�� 
fechaNacimiento
�� +
=
��, -
fechaNacimiento
��. =
;
��= >
usuario
�� 
.
�� 
cargo
�� !
=
��" #
cargo
��$ )
;
��) *
usuario
�� 
.
�� 

idGerencia
�� &
=
��' (

idGerencia
��) 3
;
��3 4
usuario
�� 
.
�� 
idSubgerencia
�� )
=
��* +
idSubgerencia
��, 9
;
��9 :
usuario
�� 
.
�� 
idDepartamento
�� *
=
��+ ,
idDepartamento
��- ;
;
��; <
usuario
�� 
.
�� 
idUbicacion
�� '
=
��( )
idUbicacion
��* 5
;
��5 6
usuario
�� 
.
�� 
jefe
��  
=
��! "
jefe
��# '
;
��' (
usuario
�� 
.
�� 
fechaIngreso
�� (
=
��) *
fechaIngreso
��+ 7
;
��7 8
usuario
�� 
.
�� 
idTipoContrato
�� *
=
��+ ,
idTipoContrato
��- ;
;
��; <
usuario
�� 
.
�� 
idRolUsuario
�� (
=
��) *
idRolUsuario
��+ 7
;
��7 8
usuario
�� 
.
�� 
email
�� !
=
��" #
email
��$ )
;
��) *
usuario
�� 
.
�� 
celular
�� #
=
��$ %
celular
��& -
;
��- .
usuario
�� 
.
�� 
contraseña
�� &
=
��' (
contraseña
��) 3
;
��3 4
db
�� 
.
�� 
SaveChanges
�� "
(
��" #
)
��# $
;
��$ %
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& X
)
��X Y
;
��Y Z
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 	
	protected
�� 
void
�� .
 GerenciaDdl_SelectedIndexChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	
int
�� 

gerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
GerenciaDdl
�� (
.
��( )
SelectedValue
��) 6
,
��6 7
out
��8 ;

gerenciaId
��< F
)
��F G
)
��G H
{
��  
CargarSubgerencias
�� "
(
��" #

gerenciaId
��# -
)
��- .
;
��. /
}
�� 
else
�� 
{
�� 
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Insert
��% +
(
��+ ,
$num
��, -
,
��- .
new
��/ 2
ListItem
��3 ;
(
��; <
$str
��< S
,
��S T
$str
��U W
)
��W X
)
��X Y
;
��Y Z
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 1
#SubgerenciaDdl_SelectedIndexChanged
�� :
(
��: ;
object
��; A
sender
��B H
,
��H I
	EventArgs
��J S
e
��T U
)
��U V
{
�� 	
int
�� 
subgerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
SubgerenciaDdl
�� +
.
��+ ,
SelectedValue
��, 9
,
��9 :
out
��; >
subgerenciaId
��? L
)
��L M
)
��M N
{
�� !
CargarDepartamentos
�� #
(
��# $
subgerenciaId
��$ 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 2
$DepartamentoDdl_SelectedIndexChanged
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J
	EventArgs
��K T
e
��U V
)
��V W
{
�� 	
int
�� 
departamentoId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
DepartamentoDdl
�� ,
.
��, -
SelectedValue
��- :
,
��: ;
out
��< ?
departamentoId
��@ N
)
��N O
)
��O P
{
�� 
CargarUbicaciones
�� !
(
��! "
departamentoId
��" 0
)
��0 1
;
��1 2
}
�� 
else
�� 
{
�� 
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicaciónDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� "
RutCV_ServerValidate
�� +
(
��+ ,
object
��, 2
source
��3 9
,
��9 :%
ServerValidateEventArgs
��; R
args
��S W
)
��W X
{
�� 	
	Validador
�� 
	objValida
�� 
=
��  !
new
��" %
	Validador
��& /
(
��/ 0
)
��0 1
;
��1 2
	objValida
�� 
.
�� 
ValidaVacio
�� !
(
��! "
RutTxt
��" (
.
��( )
Text
��) -
.
��- .
Trim
��. 2
(
��2 3
)
��3 4
)
��4 5
;
��5 6
	objValida
�� 
.
�� %
ValidaNumDigVerificador
�� -
(
��- .
RutTxt
��. 4
.
��4 5
Text
��5 9
.
��9 :
Trim
��: >
(
��> ?
)
��? @
)
��@ A
;
��A B
	objValida
�� 
.
�� 
ValidaDigito
�� "
(
��" #
RutTxt
��# )
.
��) *
Text
��* .
.
��. /
Trim
��/ 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
	objValida
�� 
.
�� 
xEstado
�� !
!=
��" $
$str
��% /
)
��/ 0
{
�� 
RutCV
�� 
.
�� 
ErrorMessage
�� "
=
��# $
$str
��% 6
;
��6 7
args
�� 
.
�� 
IsValid
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
}
�� 	
}
�� 
}�� ��
DD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarPromocion.aspx.cs
	namespace�� 	
IntranetWeb
��
 
{�� 
public
�� 

partial
�� 
class
�� 
EditarPromocion
�� (
:
��) *
System
��+ 1
.
��1 2
Web
��2 5
.
��5 6
UI
��6 8
.
��8 9
Page
��9 =
{
�� 
private
�� 
IntranetEntities
��  
db
��! #
=
��$ %
new
��& )
IntranetEntities
��* :
(
��: ;
)
��; <
;
��< =
private
�� 
string
�� 
rutUsuarioEditar
�� '
;
��' (
	protected
�� 
void
�� 
	Page_Load
��  
(
��  !
object
��! '
sender
��( .
,
��. /
	EventArgs
��0 9
e
��: ;
)
��; <
{
�� 	
if
�� 
(
�� 
!
�� 

IsPostBack
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Request
��* 1
.
��1 2
QueryString
��2 =
[
��= >
$str
��> C
]
��C D
)
��D E
)
��E F
{
�� 
rutUsuarioEditar
�� $
=
��% &
Request
��' .
.
��. /
QueryString
��/ :
[
��: ;
$str
��; @
]
��@ A
;
��A B
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
rutUsuarioEditar
��. >
)
��> ?
)
��? @
{
��  
CargarDatosUsuario
�� *
(
��* +
rutUsuarioEditar
��+ ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
Response
��  
.
��  !
Redirect
��! )
(
��) *
$str
��* Z
)
��Z [
;
��[ \
}
�� 
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& V
)
��V W
;
��W X
}
�� 
CargarDatos
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CargarDatos
��  
(
��  !
)
��! "
{
�� 	
try
�� 
{
�� 
var
�� 
	gerencias
�� 
=
�� 
db
��  "
.
��" #
	Gerencias
��# ,
.
��, -
ToList
��- 3
(
��3 4
)
��4 5
;
��5 6
GerenciaDdl
�� 
.
�� 

DataSource
�� &
=
��' (
	gerencias
��) 2
;
��2 3
GerenciaDdl
�� 
.
�� 
DataTextField
�� )
=
��* +
$str
��, 4
;
��4 5
GerenciaDdl
�� 
.
�� 
DataValueField
�� *
=
��+ ,
$str
��- 1
;
��1 2
GerenciaDdl
�� 
.
�� 
DataBind
�� $
(
��$ %
)
��% &
;
��& '
GerenciaDdl
�� 
.
�� 
Items
�� !
.
��! "
Insert
��" (
(
��( )
$num
��) *
,
��* +
new
��, /
ListItem
��0 8
(
��8 9
$str
��9 M
,
��M N
$str
��O Q
)
��Q R
)
��R S
;
��S T
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ S
{
��S T
ex
��T V
.
��V W
Message
��W ^
}
��^ _
"
��_ `
)
��` a
;
��a b
}
�� 
try
�� 
{
��  
CargarSubgerencias
�� "
(
��" #
)
��# $
;
��$ %!
CargarDepartamentos
�� #
(
��# $
)
��$ %
;
��% &
CargarUbicaciones
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ Y
{
��Y Z
ex
��Z \
.
��\ ]
Message
��] d
}
��d e
"
��e f
)
��f g
;
��g h
}
�� 
}
�� 	
private
�� 
void
��  
CargarSubgerencias
�� '
(
��' (
int
��( +
?
��+ ,

gerenciaId
��- 7
=
��8 9
null
��: >
)
��> ?
{
�� 	
try
�� 
{
�� 
var
�� 
subgerencias
��  
=
��! "

gerenciaId
��# -
.
��- .
HasValue
��. 6
?
�� 
db
�� 
.
�� 
Subgerencias
�� %
.
��% &
Where
��& +
(
��+ ,
s
��, -
=>
��. 0
s
��1 2
.
��2 3

idGerencia
��3 =
==
��> @

gerenciaId
��A K
)
��K L
.
��L M
ToList
��M S
(
��S T
)
��T U
:
�� 
db
�� 
.
�� 
Subgerencias
�� %
.
��% &
ToList
��& ,
(
��, -
)
��- .
;
��. /
SubgerenciaDdl
�� 
.
�� 

DataSource
�� )
=
��* +
subgerencias
��, 8
;
��8 9
SubgerenciaDdl
�� 
.
�� 
DataTextField
�� ,
=
��- .
$str
��/ 7
;
��7 8
SubgerenciaDdl
�� 
.
�� 
DataValueField
�� -
=
��. /
$str
��0 4
;
��4 5
SubgerenciaDdl
�� 
.
�� 
DataBind
�� '
(
��' (
)
��( )
;
��) *
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Insert
��% +
(
��+ ,
$num
��, -
,
��- .
new
��/ 2
ListItem
��3 ;
(
��; <
$str
��< S
,
��S T
$str
��U W
)
��W X
)
��X Y
;
��Y Z
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ V
{
��V W
ex
��W Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
)
��c d
;
��d e
}
�� 
}
�� 	
private
�� 
void
�� !
CargarDepartamentos
�� (
(
��( )
int
��) ,
?
��, -
subgerenciaId
��. ;
=
��< =
null
��> B
)
��B C
{
�� 	
try
�� 
{
�� 
var
�� 
departamentos
�� !
=
��" #
subgerenciaId
��$ 1
.
��1 2
HasValue
��2 :
?
�� 
db
�� 
.
�� 
Departamentos
�� &
.
��& '
Where
��' ,
(
��, -
d
��- .
=>
��/ 1
d
��2 3
.
��3 4
idSubgerencia
��4 A
==
��B D
subgerenciaId
��E R
)
��R S
.
��S T
ToList
��T Z
(
��Z [
)
��[ \
:
�� 
db
�� 
.
�� 
Departamentos
�� &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
DepartamentoDdl
�� 
.
��  

DataSource
��  *
=
��+ ,
departamentos
��- :
;
��: ;
DepartamentoDdl
�� 
.
��  
DataTextField
��  -
=
��. /
$str
��0 8
;
��8 9
DepartamentoDdl
�� 
.
��  
DataValueField
��  .
=
��/ 0
$str
��1 5
;
��5 6
DepartamentoDdl
�� 
.
��  
DataBind
��  (
(
��( )
)
��) *
;
��* +
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ W
{
��W X
ex
��X Z
.
��Z [
Message
��[ b
}
��b c
"
��c d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
CargarUbicaciones
�� &
(
��& '
int
��' *
?
��* +
departamentoId
��, :
=
��; <
null
��= A
)
��A B
{
�� 	
try
�� 
{
�� 
var
�� 
ubicaciones
�� 
=
��  !
departamentoId
��" 0
.
��0 1
HasValue
��1 9
?
�� 
db
�� 
.
�� 
Ubicaciones
�� $
.
��$ %
Where
��% *
(
��* +
u
��+ ,
=>
��- /
u
��0 1
.
��1 2
idDepartamento
��2 @
==
��A C
departamentoId
��D R
)
��R S
.
��S T
ToList
��T Z
(
��Z [
)
��[ \
:
�� 
db
�� 
.
�� 
Ubicaciones
�� $
.
��$ %
ToList
��% +
(
��+ ,
)
��, -
;
��- .
UbicacionDdl
�� 
.
�� 

DataSource
�� '
=
��( )
ubicaciones
��* 5
;
��5 6
UbicacionDdl
�� 
.
�� 
DataTextField
�� *
=
��+ ,
$str
��- 5
;
��5 6
UbicacionDdl
�� 
.
�� 
DataValueField
�� +
=
��, -
$str
��. 2
;
��2 3
UbicacionDdl
�� 
.
�� 
DataBind
�� %
(
��% &
)
��& '
;
��' (
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ U
{
��U V
ex
��V X
.
��X Y
Message
��Y `
}
��` a
"
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
private
�� 
void
��  
CargarDatosUsuario
�� '
(
��' (
string
��( .
rut
��/ 2
)
��2 3
{
�� 	
try
�� 
{
�� 
Response
�� 
.
�� 
Write
�� 
(
�� 
$"
�� !
$str
��! /
{
��/ 0
rut
��0 3
}
��3 4
$str
��4 9
"
��9 :
)
��: ;
;
��; <
Usuarios
�� 
usuario
��  
=
��! "
db
��# %
.
��% &
Usuarios
��& .
.
��. /
SingleOrDefault
��/ >
(
��> ?
u
��? @
=>
��A C
u
��D E
.
��E F

rutUsuario
��F P
==
��Q S
rut
��T W
)
��W X
;
��X Y
if
�� 
(
�� 
usuario
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
Response
�� 
.
�� 
Write
�� "
(
��" #
$"
��# %
$str
��% 9
{
��9 :
usuario
��: A
.
��A B
nombre
��B H
}
��H I
$str
��I J
{
��J K
usuario
��K R
.
��R S
apellido
��S [
}
��[ \
$str
��\ a
"
��a b
)
��b c
;
��c d
	NombreTxt
�� 
.
�� 
Text
�� "
=
��# $
usuario
��% ,
.
��, -
nombre
��- 3
;
��3 4
ApellidoTxt
�� 
.
��  
Text
��  $
=
��% &
usuario
��' .
.
��. /
apellido
��/ 7
;
��7 8
CargoTxt
�� 
.
�� 
Text
�� !
=
��" #
usuario
��$ +
.
��+ ,
cargo
��, 1
;
��1 2
GerenciaDdl
�� 
.
��  
SelectedValue
��  -
=
��. /
usuario
��0 7
.
��7 8

idGerencia
��8 B
.
��B C
HasValue
��C K
?
��L M
usuario
��N U
.
��U V

idGerencia
��V `
.
��` a
Value
��a f
.
��f g
ToString
��g o
(
��o p
)
��p q
:
��r s
$str
��t v
;
��v w 
CargarSubgerencias
�� &
(
��& '
usuario
��' .
.
��. /

idGerencia
��/ 9
)
��9 :
;
��: ;
SubgerenciaDdl
�� "
.
��" #
SelectedValue
��# 0
=
��1 2
usuario
��3 :
.
��: ;
idSubgerencia
��; H
.
��H I
HasValue
��I Q
?
��R S
usuario
��T [
.
��[ \
idSubgerencia
��\ i
.
��i j
Value
��j o
.
��o p
ToString
��p x
(
��x y
)
��y z
:
��{ |
$str
��} 
;�� �!
CargarDepartamentos
�� '
(
��' (
usuario
��( /
.
��/ 0
idSubgerencia
��0 =
)
��= >
;
��> ?
DepartamentoDdl
�� #
.
��# $
SelectedValue
��$ 1
=
��2 3
usuario
��4 ;
.
��; <
idDepartamento
��< J
.
��J K
HasValue
��K S
?
��T U
usuario
��V ]
.
��] ^
idDepartamento
��^ l
.
��l m
Value
��m r
.
��r s
ToString
��s {
(
��{ |
)
��| }
:
��~ 
$str��� �
;��� �
CargarUbicaciones
�� %
(
��% &
usuario
��& -
.
��- .
idDepartamento
��. <
)
��< =
;
��= >
UbicacionDdl
��  
.
��  !
SelectedValue
��! .
=
��/ 0
usuario
��1 8
.
��8 9
idUbicacion
��9 D
.
��D E
HasValue
��E M
?
��N O
usuario
��P W
.
��W X
idUbicacion
��X c
.
��c d
Value
��d i
.
��i j
ToString
��j r
(
��r s
)
��s t
:
��u v
$str
��w y
;
��y z
JefeTxt
�� 
.
�� 
Text
��  
=
��! "
usuario
��# *
.
��* +
jefe
��+ /
;
��/ 0
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& R
)
��R S
;
��S T
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$"
��" $
$str
��$ [
{
��[ \
ex
��\ ^
.
��^ _
Message
��_ f
}
��f g
"
��g h
)
��h i
;
��i j
}
�� 
}
�� 	
	protected
�� 
void
�� '
GuardarPromocionBtn_Click
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
	EventArgs
��@ I
e
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
Page
�� 
.
�� 
IsValid
�� 
)
�� 
{
�� 
bool
�� 
success
�� 
=
�� 
false
�� $
;
��$ %
string
�� 
redirectUrl
�� "
=
��# $
string
��% +
.
��+ ,
Empty
��, 1
;
��1 2
try
�� 
{
�� 
string
�� 
cargo
��  
=
��! "
CargoTxt
��# +
.
��+ ,
Text
��, 0
;
��0 1
int
�� 

idGerencia
�� "
=
��# $
int
��% (
.
��( )
Parse
��) .
(
��. /
GerenciaDdl
��/ :
.
��: ;
SelectedValue
��; H
)
��H I
;
��I J
int
�� 
idSubgerencia
�� %
=
��& '
int
��( +
.
��+ ,
Parse
��, 1
(
��1 2
SubgerenciaDdl
��2 @
.
��@ A
SelectedValue
��A N
)
��N O
;
��O P
int
�� 
idDepartamento
�� &
=
��' (
int
��) ,
.
��, -
Parse
��- 2
(
��2 3
DepartamentoDdl
��3 B
.
��B C
SelectedValue
��C P
)
��P Q
;
��Q R
int
�� 
idUbicacion
�� #
=
��$ %
int
��& )
.
��) *
Parse
��* /
(
��/ 0
UbicacionDdl
��0 <
.
��< =
SelectedValue
��= J
)
��J K
;
��K L
string
�� 
jefe
�� 
=
��  !
JefeTxt
��" )
.
��) *
Text
��* .
;
��. /
DateTime
�� 
fechaPromocion
�� +
=
��, -
Convert
��. 5
.
��5 6

ToDateTime
��6 @
(
��@ A
FechaPromocionTxt
��A R
.
��R S
Text
��S W
)
��W X
;
��X Y
Usuarios
�� 
usuario
�� $
=
��% &
db
��' )
.
��) *
Usuarios
��* 2
.
��2 3
SingleOrDefault
��3 B
(
��B C
u
��C D
=>
��E G
u
��H I
.
��I J

rutUsuario
��J T
==
��U W
rutUsuarioEditar
��X h
)
��h i
;
��i j
if
�� 
(
�� 
usuario
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
usuario
�� 
.
��  
cargo
��  %
=
��& '
cargo
��( -
;
��- .
usuario
�� 
.
��  

idGerencia
��  *
=
��+ ,

idGerencia
��- 7
;
��7 8
usuario
�� 
.
��  
idSubgerencia
��  -
=
��. /
idSubgerencia
��0 =
;
��= >
usuario
�� 
.
��  
idDepartamento
��  .
=
��/ 0
idDepartamento
��1 ?
;
��? @
usuario
�� 
.
��  
idUbicacion
��  +
=
��, -
idUbicacion
��. 9
;
��9 :
usuario
�� 
.
��  
jefe
��  $
=
��% &
jefe
��' +
;
��+ ,
Promociones
�� #
nuevaPromocion
��$ 2
=
��3 4
new
��5 8
Promociones
��9 D
{
�� 

RutUsuario
�� &
=
��' (
usuario
��) 0
.
��0 1

rutUsuario
��1 ;
,
��; <
FechaPromocion
�� *
=
��+ ,
fechaPromocion
��- ;
}
�� 
;
�� 
db
�� 
.
�� 
Promociones
�� &
.
��& '
Add
��' *
(
��* +
nuevaPromocion
��+ 9
)
��9 :
;
��: ;
db
�� 
.
�� 
SaveChanges
�� &
(
��& '
)
��' (
;
��( )
success
�� 
=
��  !
true
��" &
;
��& '
redirectUrl
�� #
=
��$ %
$str
��& e
;
��e f
}
�� 
else
�� 
{
�� 
redirectUrl
�� #
=
��$ %
$str
��& R
;
��R S
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
redirectUrl
�� 
=
��  !
$"
��" $
$str
��$ _
{
��_ `
ex
��` b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
}
�� 
if
�� 
(
�� 
success
�� 
)
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
redirectUrl
��& 1
,
��1 2
false
��3 8
)
��8 9
;
��9 :
Context
�� 
.
�� !
ApplicationInstance
�� /
.
��/ 0
CompleteRequest
��0 ?
(
��? @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
redirectUrl
��& 1
,
��1 2
false
��3 8
)
��8 9
;
��9 :
Context
�� 
.
�� !
ApplicationInstance
�� /
.
��/ 0
CompleteRequest
��0 ?
(
��? @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 	
	protected
�� 
void
�� .
 GerenciaDdl_SelectedIndexChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	
int
�� 

gerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
GerenciaDdl
�� (
.
��( )
SelectedValue
��) 6
,
��6 7
out
��8 ;

gerenciaId
��< F
)
��F G
)
��G H
{
��  
CargarSubgerencias
�� "
(
��" #

gerenciaId
��# -
)
��- .
;
��. /
}
�� 
else
�� 
{
�� 
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Insert
��% +
(
��+ ,
$num
��, -
,
��- .
new
��/ 2
ListItem
��3 ;
(
��; <
$str
��< S
,
��S T
$str
��U W
)
��W X
)
��X Y
;
��Y Z
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 1
#SubgerenciaDdl_SelectedIndexChanged
�� :
(
��: ;
object
��; A
sender
��B H
,
��H I
	EventArgs
��J S
e
��T U
)
��U V
{
�� 	
int
�� 
subgerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
SubgerenciaDdl
�� +
.
��+ ,
SelectedValue
��, 9
,
��9 :
out
��; >
subgerenciaId
��? L
)
��L M
)
��M N
{
�� !
CargarDepartamentos
�� #
(
��# $
subgerenciaId
��$ 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 2
$DepartamentoDdl_SelectedIndexChanged
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J
	EventArgs
��K T
e
��U V
)
��V W
{
�� 	
int
�� 
departamentoId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
DepartamentoDdl
�� ,
.
��, -
SelectedValue
��- :
,
��: ;
out
��< ?
departamentoId
��@ N
)
��N O
)
��O P
{
�� 
CargarUbicaciones
�� !
(
��! "
departamentoId
��" 0
)
��0 1
;
��1 2
}
�� 
else
�� 
{
�� 
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
}
�� 
}�� �:
AD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarPagina.aspx.cs
	namespace 	
IntranetWeb
 
{		 
public

 

partial

 
class

 
EditarPagina

 %
:

& '
System

( .
.

. /
Web

/ 2
.

2 3
UI

3 5
.

5 6
Page

6 :
{ 
private 

PaginasDAL 

paginasDAL %
=& '
new( +

PaginasDAL, 6
(6 7
)7 8
;8 9
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
string 
idStr 
= 
Request &
.& '
QueryString' 2
[2 3
$str3 7
]7 8
;8 9
if 
( 
int 
. 
TryParse  
(  !
idStr! &
,& '
out( +
int, /
id0 2
)2 3
)3 4
{ 
CargarPagina  
(  !
id! #
)# $
;$ %
} 
else 
{ 
Response 
. 
Redirect %
(% &
$str& G
)G H
;H I
} 
} 
} 	
private 
void 
CargarPagina !
(! "
int" %
id& (
)( )
{   	
Paginas!! 
pagina!! 
=!! 

paginasDAL!! '
.!!' (
GetById!!( /
(!!/ 0
id!!0 2
)!!2 3
;!!3 4
if"" 
("" 
pagina"" 
!="" 
null"" 
)"" 
{## 
	TituloTxt$$ 
.$$ 
Text$$ 
=$$  
pagina$$! '
.$$' (
titulo$$( .
;$$. /
MetaDescripcionTxt%% "
.%%" #
Text%%# '
=%%( )
pagina%%* 0
.%%0 1
metaDescripcion%%1 @
;%%@ A
FechaCreacionInput&& "
.&&" #
Text&&# '
=&&( )
pagina&&* 0
.&&0 1
fechaPublicacion&&1 A
.&&A B
HasValue&&B J
?&&K L
pagina&&M S
.&&S T
fechaPublicacion&&T d
.&&d e
Value&&e j
.&&j k
ToString&&k s
(&&s t
$str	&&t �
)
&&� �
:
&&� �
$str
&&� �
;
&&� �
CategoriasRadioList'' #
.''# $
SelectedValue''$ 1
=''2 3
pagina''4 :
.'': ;
tags''; ?
;''? @
ContenidoPaginaTxt(( "
.((" #
Text((# '
=((( )
pagina((* 0
.((0 1
contenidoTexto((1 ?
;((? @
})) 
else** 
{++ 
Response-- 
.-- 
Redirect-- !
(--! "
$str--" N
)--N O
;--O P
}.. 
}// 	
	protected11 
void11 "
GuardarPaginaBtn_Click11 -
(11- .
object11. 4
sender115 ;
,11; <
	EventArgs11= F
e11G H
)11H I
{22 	
string33 
idStr33 
=33 
Request33 "
.33" #
QueryString33# .
[33. /
$str33/ 3
]333 4
;334 5
if44 
(44 
int44 
.44 
TryParse44 
(44 
idStr44 "
,44" #
out44$ '
int44( +
id44, .
)44. /
)44/ 0
{55 
string66 
titulo66 
=66 
	TituloTxt66  )
.66) *
Text66* .
;66. /
string77 
metaDescripcion77 &
=77' (
MetaDescripcionTxt77) ;
.77; <
Text77< @
;77@ A
string88 
fechaCreacionStr88 '
=88( )
FechaCreacionInput88* <
.88< =
Text88= A
;88A B
string99 
	categoria99  
=99! "
CategoriasRadioList99# 6
.996 7
SelectedValue997 D
;99D E
string:: 
contenidoPagina:: &
=::' (
ContenidoPaginaTxt::) ;
.::; <
Text::< @
;::@ A
if<< 
(<< 
string<< 
.<< 
IsNullOrWhiteSpace<< -
(<<- .
contenidoPagina<<. =
)<<= >
)<<> ?
{== 
ErrorMessageLabel?? %
.??% &
Text??& *
=??+ ,
$str??- F
;??F G
ErrorMessageLabel@@ %
.@@% &
Visible@@& -
=@@. /
true@@0 4
;@@4 5
returnAA 
;AA 
}BB 
varEE 
	sanitizerEE 
=EE 
newEE  #
HtmlSanitizerEE$ 1
(EE1 2
)EE2 3
;EE3 4
stringFF 
sanitizedContentFF '
=FF( )
	sanitizerFF* 3
.FF3 4
SanitizeFF4 <
(FF< =
contenidoPaginaFF= L
)FFL M
;FFM N
DateTimeHH 
?HH 
fechaCreacionHH '
=HH( )
nullHH* .
;HH. /
ifII 
(II 
DateTimeII 
.II 
TryParseII %
(II% &
fechaCreacionStrII& 6
,II6 7
outII8 ;
DateTimeII< D

parsedDateIIE O
)IIO P
)IIP Q
{JJ 
fechaCreacionKK !
=KK" #

parsedDateKK$ .
;KK. /
}LL 
usingNN 
(NN 
varNN 
contextNN "
=NN# $
newNN% (
IntranetEntitiesNN) 9
(NN9 :
)NN: ;
)NN; <
{OO 
PaginasPP 
paginaPP "
=PP# $
contextPP% ,
.PP, -
PaginasPP- 4
.PP4 5
FirstOrDefaultPP5 C
(PPC D
pPPD E
=>PPF H
pPPI J
.PPJ K
idPPK M
==PPN P
idPPQ S
)PPS T
;PPT U
ifQQ 
(QQ 
paginaQQ 
!=QQ !
nullQQ" &
)QQ& '
{RR 
paginaSS 
.SS 
tituloSS %
=SS& '
tituloSS( .
;SS. /
paginaTT 
.TT 
metaDescripcionTT .
=TT/ 0
metaDescripcionTT1 @
;TT@ A
paginaUU 
.UU 
fechaPublicacionUU /
=UU0 1
fechaCreacionUU2 ?
;UU? @
paginaVV 
.VV 
tagsVV #
=VV$ %
	categoriaVV& /
;VV/ 0
paginaWW 
.WW 
contenidoTextoWW -
=WW. /
sanitizedContentWW0 @
;WW@ A
contextYY 
.YY  
SaveChangesYY  +
(YY+ ,
)YY, -
;YY- .
}ZZ 
else[[ 
{\\ 
Response^^  
.^^  !
Redirect^^! )
(^^) *
$str^^* V
)^^V W
;^^W X
return__ 
;__ 
}`` 
}aa 
Responsedd 
.dd 
Redirectdd !
(dd! "
$strdd" S
)ddS T
;ddT U
}ee 
}ff 	
}gg 
}hh ��
BD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarNoticia.aspx.cs
	namespaceuu 	
IntranetWebuu
 
{vv 
publicww 

partialww 
classww 
EditarNoticiaww &
:ww' (
Systemww) /
.ww/ 0
Webww0 3
.ww3 4
UIww4 6
.ww6 7
Pageww7 ;
{xx 
privateyy 
NoticiasDALyy 
noticiasDALyy '
=yy( )
newyy* -
NoticiasDALyy. 9
(yy9 :
)yy: ;
;yy; <
	protected{{ 
void{{ 
	Page_Load{{  
({{  !
object{{! '
sender{{( .
,{{. /
	EventArgs{{0 9
e{{: ;
){{; <
{|| 	
if}} 
(}} 
!}} 

IsPostBack}} 
)}} 
{~~ 
string 
idStr 
= 
Request &
.& '
QueryString' 2
[2 3
$str3 7
]7 8
;8 9
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
��  
(
��  !
idStr
��! &
,
��& '
out
��( +
int
��, /
id
��0 2
)
��2 3
)
��3 4
{
�� 
CargarNoticia
�� !
(
��! "
id
��" $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& H
)
��H I
;
��I J
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CargarNoticia
�� "
(
��" #
int
��# &
id
��' )
)
��) *
{
�� 	
Noticias
�� 
noticia
�� 
=
�� 
noticiasDAL
�� *
.
��* +
GetById
��+ 2
(
��2 3
id
��3 5
)
��5 6
;
��6 7
if
�� 
(
�� 
noticia
�� 
!=
�� 
null
�� 
)
��  
{
�� 
	TituloTxt
�� 
.
�� 
Text
�� 
=
��  
noticia
��! (
.
��( )
titulo
��) /
;
��/ 0 
MetaDescripcionTxt
�� "
.
��" #
Text
��# '
=
��( )
noticia
��* 1
.
��1 2
metaDescripcion
��2 A
;
��A B#
FechaPublicacionInput
�� %
.
��% &
Text
��& *
=
��+ ,
noticia
��- 4
.
��4 5
fechaPublicacion
��5 E
.
��E F
HasValue
��F N
?
��O P
noticia
��Q X
.
��X Y
fechaPublicacion
��Y i
.
��i j
Value
��j o
.
��o p
ToString
��p x
(
��x y
$str��y �
)��� �
:��� �
$str��� �
;��� �
TagsRadioList
�� 
.
�� 
SelectedValue
�� +
=
��, -
noticia
��. 5
.
��5 6
tags
��6 :
;
��: ;!
ContenidoNoticiaTxt
�� #
.
��# $
Text
��$ (
=
��) *
noticia
��+ 2
.
��2 3
contenidoTexto
��3 A
;
��A B
}
�� 
else
�� 
{
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$str
��" P
)
��P Q
;
��Q R
}
�� 
}
�� 	
	protected
�� 
void
�� %
GuardarNoticiaBtn_Click
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
	EventArgs
��> G
e
��H I
)
��I J
{
�� 	
string
�� 
idStr
�� 
=
�� 
Request
�� "
.
��" #
QueryString
��# .
[
��. /
$str
��/ 3
]
��3 4
;
��4 5
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
idStr
�� "
,
��" #
out
��$ '
int
��( +
id
��, .
)
��. /
)
��/ 0
{
�� 
string
�� 
titulo
�� 
=
�� 
	TituloTxt
��  )
.
��) *
Text
��* .
;
��. /
string
�� 
metaDescripcion
�� &
=
��' ( 
MetaDescripcionTxt
��) ;
.
��; <
Text
��< @
;
��@ A
string
�� !
fechaPublicacionStr
�� *
=
��+ ,#
FechaPublicacionInput
��- B
.
��B C
Text
��C G
;
��G H
string
�� 
tags
�� 
=
�� 
TagsRadioList
�� +
.
��+ ,
SelectedValue
��, 9
;
��9 :
string
�� 
contenidoNoticia
�� '
=
��( )!
ContenidoNoticiaTxt
��* =
.
��= >
Text
��> B
;
��B C
bool
�� 
colocarEnSlider
�� $
=
��% &"
ColocarEnSliderCheck
��' ;
.
��; <
Checked
��< C
;
��C D
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .
contenidoNoticia
��. >
)
��> ?
)
��? @
{
�� 
ErrorMessageLabel
�� %
.
��% &
Text
��& *
=
��+ ,
$str
��- F
;
��F G
ErrorMessageLabel
�� %
.
��% &
Visible
��& -
=
��. /
true
��0 4
;
��4 5
return
�� 
;
�� 
}
�� 
var
�� 
	sanitizer
�� 
=
�� 
new
��  #
HtmlSanitizer
��$ 1
(
��1 2
)
��2 3
;
��3 4
string
�� 
sanitizedContent
�� '
=
��( )
	sanitizer
��* 3
.
��3 4
Sanitize
��4 <
(
��< =
contenidoNoticia
��= M
)
��M N
;
��N O
DateTime
�� 
?
�� 
fechaPublicacion
�� *
=
��+ ,
null
��- 1
;
��1 2
if
�� 
(
�� 
DateTime
�� 
.
�� 
TryParse
�� %
(
��% &!
fechaPublicacionStr
��& 9
,
��9 :
out
��; >
DateTime
��? G

parsedDate
��H R
)
��R S
)
��S T
{
�� 
fechaPublicacion
�� $
=
��% &

parsedDate
��' 1
;
��1 2
}
�� 
string
�� 
	urlSimple
��  
=
��! "
GenerateUrlSimple
��# 4
(
��4 5
titulo
��5 ;
)
��; <
;
��< =
int
�� 
?
�� '
archivoMultimediaIdSlider
�� .
=
��/ 0
null
��1 5
;
��5 6
int
�� 
?
�� %
archivoMultimediaIdCard
�� ,
=
��- .
null
��/ 3
;
��3 4
string
�� 
basePath
�� 
=
��  !
Server
��" (
.
��( )
MapPath
��) 0
(
��0 1
$str
��1 Q
)
��Q R
;
��R S
string
�� 
relativePath
�� #
=
��$ %
$"
��& (
{
��( )
DateTime
��) 1
.
��1 2
Now
��2 5
.
��5 6
Year
��6 :
}
��: ;
$str
��; <
{
��< =
DateTime
��= E
.
��E F
Now
��F I
.
��I J
Month
��J O
}
��O P
$str
��P Q
"
��Q R
;
��R S
string
�� 
fullPath
�� 
=
��  !
Path
��" &
.
��& '
Combine
��' .
(
��. /
basePath
��/ 7
,
��7 8
relativePath
��9 E
)
��E F
;
��F G
if
�� 
(
�� 
!
�� 
	Directory
�� 
.
�� 
Exists
�� %
(
��% &
fullPath
��& .
)
��. /
)
��/ 0
{
�� 
	Directory
�� 
.
�� 
CreateDirectory
�� -
(
��- .
fullPath
��. 6
)
��6 7
;
��7 8
}
�� 
if
�� 
(
�� !
ImagenPortadaSlider
�� '
.
��' (
HasFile
��( /
)
��/ 0
{
�� 
string
�� 
fileNameSlider
�� )
=
��* +
Path
��, 0
.
��0 1
GetFileName
��1 <
(
��< =!
ImagenPortadaSlider
��= P
.
��P Q
FileName
��Q Y
)
��Y Z
;
��Z [
string
�� 
filePathSlider
�� )
=
��* +
Path
��, 0
.
��0 1
Combine
��1 8
(
��8 9
fullPath
��9 A
,
��A B
fileNameSlider
��C Q
)
��Q R
;
��R S!
ImagenPortadaSlider
�� '
.
��' (
SaveAs
��( .
(
��. /
filePathSlider
��/ =
)
��= >
;
��> ?
string
�� $
imagenPortadaSliderUrl
�� 1
=
��2 3
Path
��4 8
.
��8 9
Combine
��9 @
(
��@ A
relativePath
��A M
,
��M N
fileNameSlider
��O ]
)
��] ^
.
��^ _
Replace
��_ f
(
��f g
$str
��g k
,
��k l
$str
��m p
)
��p q
;
��q r'
archivoMultimediaIdSlider
�� -
=
��. /&
GuardarArchivoMultimedia
��0 H
(
��H I
$str
��I Q
,
��Q R$
imagenPortadaSliderUrl
��S i
)
��i j
;
��j k
}
�� 
if
�� 
(
�� 
ImagenPortadaCard
�� %
.
��% &
HasFile
��& -
)
��- .
{
�� 
string
�� 
fileNameCard
�� '
=
��( )
Path
��* .
.
��. /
GetFileName
��/ :
(
��: ;
ImagenPortadaCard
��; L
.
��L M
FileName
��M U
)
��U V
;
��V W
string
�� 
filePathCard
�� '
=
��( )
Path
��* .
.
��. /
Combine
��/ 6
(
��6 7
fullPath
��7 ?
,
��? @
fileNameCard
��A M
)
��M N
;
��N O
ImagenPortadaCard
�� %
.
��% &
SaveAs
��& ,
(
��, -
filePathCard
��- 9
)
��9 :
;
��: ;
string
�� "
imagenPortadaCardUrl
�� /
=
��0 1
Path
��2 6
.
��6 7
Combine
��7 >
(
��> ?
relativePath
��? K
,
��K L
fileNameCard
��M Y
)
��Y Z
.
��Z [
Replace
��[ b
(
��b c
$str
��c g
,
��g h
$str
��i l
)
��l m
;
��m n%
archivoMultimediaIdCard
�� +
=
��, -&
GuardarArchivoMultimedia
��. F
(
��F G
$str
��G O
,
��O P"
imagenPortadaCardUrl
��Q e
)
��e f
;
��f g
}
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
IntranetEntities
��) 9
(
��9 :
)
��: ;
)
��; <
{
�� 
Noticias
�� 
noticia
�� $
=
��% &
context
��' .
.
��. /
Noticias
��/ 7
.
��7 8
FirstOrDefault
��8 F
(
��F G
n
��G H
=>
��I K
n
��L M
.
��M N
id
��N P
==
��Q S
id
��T V
)
��V W
;
��W X
if
�� 
(
�� 
noticia
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
noticia
�� 
.
��  
titulo
��  &
=
��' (
titulo
��) /
;
��/ 0
noticia
�� 
.
��  
metaDescripcion
��  /
=
��0 1
metaDescripcion
��2 A
;
��A B
noticia
�� 
.
��  
fechaPublicacion
��  0
=
��1 2
fechaPublicacion
��3 C
;
��C D
noticia
�� 
.
��  
tags
��  $
=
��% &
tags
��' +
;
��+ ,
noticia
�� 
.
��  
contenidoTexto
��  .
=
��/ 0
sanitizedContent
��1 A
;
��A B
noticia
�� 
.
��  '
ArchivoMultimediaIdSlider
��  9
=
��: ;'
archivoMultimediaIdSlider
��< U
;
��U V
noticia
�� 
.
��  %
ArchivoMultimediaIdCard
��  7
=
��8 9%
archivoMultimediaIdCard
��: Q
;
��Q R
noticia
�� 
.
��  
ColocarEnSlider
��  /
=
��0 1
colocarEnSlider
��2 A
;
��A B
context
�� 
.
��  
SaveChanges
��  +
(
��+ ,
)
��, -
;
��- .
}
�� 
else
�� 
{
�� 
Response
��  
.
��  !
Redirect
��! )
(
��) *
$str
��* X
)
��X Y
;
��Y Z
return
�� 
;
�� 
}
�� 
}
�� 
Response
�� 
.
�� 
Redirect
�� !
(
��! "
$str
��" T
)
��T U
;
��U V
}
�� 
}
�� 	
private
�� 
string
�� 
GenerateUrlSimple
�� (
(
��( )
string
��) /
titulo
��0 6
)
��6 7
{
�� 	
string
�� 
	urlSimple
�� 
=
�� 
titulo
�� %
.
��% &
ToLowerInvariant
��& 6
(
��6 7
)
��7 8
;
��8 9
string
�� 
normalizedString
�� #
=
��$ %
	urlSimple
��& /
.
��/ 0
	Normalize
��0 9
(
��9 :
NormalizationForm
��: K
.
��K L
FormD
��L Q
)
��Q R
;
��R S
StringBuilder
�� 
stringBuilder
�� '
=
��( )
new
��* -
StringBuilder
��. ;
(
��; <
)
��< =
;
��= >
foreach
�� 
(
�� 
char
�� 
c
�� 
in
�� 
normalizedString
�� /
)
��/ 0
{
�� 
UnicodeCategory
�� 
unicodeCategory
��  /
=
��0 1
CharUnicodeInfo
��2 A
.
��A B 
GetUnicodeCategory
��B T
(
��T U
c
��U V
)
��V W
;
��W X
if
�� 
(
�� 
unicodeCategory
�� #
!=
��$ &
UnicodeCategory
��' 6
.
��6 7
NonSpacingMark
��7 E
)
��E F
{
�� 
stringBuilder
�� !
.
��! "
Append
��" (
(
��( )
c
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
	urlSimple
�� 
=
�� 
stringBuilder
�� %
.
��% &
ToString
��& .
(
��. /
)
��/ 0
.
��0 1
	Normalize
��1 :
(
��: ;
NormalizationForm
��; L
.
��L M
FormC
��M R
)
��R S
;
��S T
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 @
,
��@ A
$str
��B D
)
��D E
;
��E F
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 7
,
��7 8
$str
��9 <
)
��< =
.
��= >
Trim
��> B
(
��B C
)
��C D
;
��D E
	urlSimple
�� 
=
�� 
Regex
�� 
.
�� 
Replace
�� %
(
��% &
	urlSimple
��& /
,
��/ 0
$str
��1 6
,
��6 7
$str
��8 ;
)
��; <
;
��< =
	urlSimple
�� 
=
�� 
$str
�� #
+
��$ %
	urlSimple
��& /
;
��/ 0
return
�� 
	urlSimple
�� 
;
�� 
}
�� 	
private
�� 
int
�� &
GuardarArchivoMultimedia
�� ,
(
��, -
string
��- 3
tipoArchivo
��4 ?
,
��? @
string
��A G

urlArchivo
��H R
)
��R S
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
��  
ArchivosMultimedia
�� "
archivoMultimedia
��# 4
=
��5 6
new
��7 : 
ArchivosMultimedia
��; M
{
�� 
fechaPublicacion
�� $
=
��% &
DateTime
��' /
.
��/ 0
Now
��0 3
,
��3 4
tipoArchivo
�� 
=
��  !
tipoArchivo
��" -
,
��- .

urlArchivo
�� 
=
��  

urlArchivo
��! +
,
��+ ,
usuarioAutor
��  
=
��! "
$str
��# ,
}
�� 
;
�� 
context
�� 
.
��  
ArchivosMultimedia
�� *
.
��* +
Add
��+ .
(
��. /
archivoMultimedia
��/ @
)
��@ A
;
��A B
context
�� 
.
�� 
SaveChanges
�� #
(
��# $
)
��$ %
;
��% &
return
�� 
archivoMultimedia
�� (
.
��( )
id
��) +
;
��+ ,
}
�� 
}
�� 	
}
�� 
}�� �B
JD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarCorrespondencia.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public		 

partial		 
class		 !
EditarCorrespondencia		 .
:		/ 0
System		1 7
.		7 8
Web		8 ;
.		; <
UI		< >
.		> ?
Page		? C
{

 
private 
CorrespondenciasDAL #
correspondenciasDAL$ 7
=8 9
new: =
CorrespondenciasDAL> Q
(Q R
)R S
;S T
private 
int 
correspondenciaId %
;% &
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
if 
( 
Request 
. 
QueryString '
[' (
$str( ,
], -
!=. 0
null1 5
)5 6
{ 
correspondenciaId %
=& '
int( +
.+ ,
Parse, 1
(1 2
Request2 9
.9 :
QueryString: E
[E F
$strF J
]J K
)K L
;L M!
CargarCorrespondencia )
() *
correspondenciaId* ;
); <
;< =
} 
else 
{ 
Response 
. 
Redirect %
(% &
$str& @
)@ A
;A B
} 
} 
} 	
private 
void !
CargarCorrespondencia *
(* +
int+ .
id/ 1
)1 2
{ 	
Correspondencias   
correspondencia   ,
=  - .
correspondenciasDAL  / B
.  B C"
GetCorrespondenciaById  C Y
(  Y Z
id  Z \
)  \ ]
;  ] ^
if"" 
("" 
correspondencia"" 
!=""  "
null""# '
)""' (
{## 
NombreArchivoTxt$$  
.$$  !
Text$$! %
=$$& '
correspondencia$$( 7
.$$7 8
nombreArchivo$$8 E
;$$E F!
DescripcionArchivoTxt%% %
.%%% &
Text%%& *
=%%+ ,
correspondencia%%- <
.%%< =
descripcionArchivo%%= O
;%%O P
FechaIngresoInput&& !
.&&! "
Text&&" &
=&&' (
correspondencia&&) 8
.&&8 9
fechaIngreso&&9 E
?&&E F
.&&F G
ToString&&G O
(&&O P
$str&&P \
)&&\ ]
;&&] ^
FechaCierreInput''  
.''  !
Text''! %
=''& '
correspondencia''( 7
.''7 8
fechaCierre''8 C
?''C D
.''D E
ToString''E M
(''M N
$str''N Z
)''Z [
;''[ \
}(( 
else)) 
{** 
Response++ 
.++ 
Redirect++ !
(++! "
$str++" <
)++< =
;++= >
},, 
}-- 	
	protected// 
void// +
GuardarCorrespondenciaBtn_Click// 6
(//6 7
object//7 =
sender//> D
,//D E
	EventArgs//F O
e//P Q
)//Q R
{00 	
if11 
(11 
Request11 
.11 
QueryString11 #
[11# $
$str11$ (
]11( )
!=11* ,
null11- 1
)111 2
{22 
correspondenciaId33 !
=33" #
int33$ '
.33' (
Parse33( -
(33- .
Request33. 5
.335 6
QueryString336 A
[33A B
$str33B F
]33F G
)33G H
;33H I%
ActualizarCorrespondencia44 )
(44) *
correspondenciaId44* ;
)44; <
;44< =
}55 
else66 
{77 
Response88 
.88 
Redirect88 !
(88! "
$str88" <
)88< =
;88= >
}99 
}:: 	
private<< 
void<< %
ActualizarCorrespondencia<< .
(<<. /
int<</ 2
id<<3 5
)<<5 6
{== 	
Correspondencias>> 
correspondencia>> ,
=>>- .
correspondenciasDAL>>/ B
.>>B C"
GetCorrespondenciaById>>C Y
(>>Y Z
id>>Z \
)>>\ ]
;>>] ^
if@@ 
(@@ 
correspondencia@@ 
!=@@  "
null@@# '
)@@' (
{AA 
correspondenciaBB 
.BB  
nombreArchivoBB  -
=BB. /
NombreArchivoTxtBB0 @
.BB@ A
TextBBA E
;BBE F
correspondenciaCC 
.CC  
descripcionArchivoCC  2
=CC3 4!
DescripcionArchivoTxtCC5 J
.CCJ K
TextCCK O
;CCO P
ifEE 
(EE 
DateTimeEE 
.EE 
TryParseEE %
(EE% &
FechaIngresoInputEE& 7
.EE7 8
TextEE8 <
,EE< =
outEE> A
DateTimeEEB J
fechaIngresoEEK W
)EEW X
)EEX Y
{FF 
correspondenciaGG #
.GG# $
fechaIngresoGG$ 0
=GG1 2
fechaIngresoGG3 ?
;GG? @
}HH 
ifJJ 
(JJ 
DateTimeJJ 
.JJ 
TryParseJJ %
(JJ% &
FechaCierreInputJJ& 6
.JJ6 7
TextJJ7 ;
,JJ; <
outJJ= @
DateTimeJJA I
fechaCierreJJJ U
)JJU V
)JJV W
{KK 
correspondenciaLL #
.LL# $
fechaCierreLL$ /
=LL0 1
fechaCierreLL2 =
;LL= >
}MM 
ifOO 
(OO 
FileUploadControlOO %
.OO% &
HasFileOO& -
)OO- .
{PP 
stringQQ 
basePathQQ #
=QQ$ %
ServerQQ& ,
.QQ, -
MapPathQQ- 4
(QQ4 5
$strQQ5 J
)QQJ K
;QQK L
stringRR 
relativePathRR '
=RR( )
$"RR* ,
{RR, -
DateTimeRR- 5
.RR5 6
NowRR6 9
.RR9 :
YearRR: >
}RR> ?
$strRR? @
{RR@ A
DateTimeRRA I
.RRI J
NowRRJ M
.RRM N
MonthRRN S
}RRS T
$strRRT U
"RRU V
;RRV W
stringSS 
fullPathSS #
=SS$ %
PathSS& *
.SS* +
CombineSS+ 2
(SS2 3
basePathSS3 ;
,SS; <
relativePathSS= I
)SSI J
;SSJ K
ifUU 
(UU 
!UU 
	DirectoryUU "
.UU" #
ExistsUU# )
(UU) *
fullPathUU* 2
)UU2 3
)UU3 4
{VV 
	DirectoryWW !
.WW! "
CreateDirectoryWW" 1
(WW1 2
fullPathWW2 :
)WW: ;
;WW; <
}XX 
stringZZ 
fileNameZZ #
=ZZ$ %
PathZZ& *
.ZZ* +
GetFileNameZZ+ 6
(ZZ6 7
FileUploadControlZZ7 H
.ZZH I
FileNameZZI Q
)ZZQ R
;ZZR S
string[[ 
filePath[[ #
=[[$ %
Path[[& *
.[[* +
Combine[[+ 2
([[2 3
fullPath[[3 ;
,[[; <
fileName[[= E
)[[E F
;[[F G
FileUploadControl\\ %
.\\% &
SaveAs\\& ,
(\\, -
filePath\\- 5
)\\5 6
;\\6 7
correspondencia^^ #
.^^# $
rutaArchivo^^$ /
=^^0 1
Path^^2 6
.^^6 7
Combine^^7 >
(^^> ?
$str^^? Q
,^^Q R
relativePath^^S _
,^^_ `
fileName^^a i
)^^i j
.^^j k
Replace^^k r
(^^r s
$str^^s w
,^^w x
$str^^y |
)^^| }
;^^} ~
}__ 
correspondenciasDALaa #
.aa# $!
UpdateCorrespondenciaaa$ 9
(aa9 :
correspondenciaaa: I
)aaI J
;aaJ K
Responsecc 
.cc 
Redirectcc !
(cc! "
$strcc" \
)cc\ ]
;cc] ^
}dd 
}ee 	
}ff 
}gg �
<D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Default.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
Default  
:! "
System# )
.) *
Web* -
.- .
UI. 0
.0 1
Page1 5
{ 
	protected		 
void		 
	Page_Load		  
(		  !
object		! '
sender		( .
,		. /
	EventArgs		0 9
e		: ;
)		; <
{

 	
if 
( 
! 

IsPostBack 
) 
{ 
if 
( 
Session 
[ 
$str %
]% &
==' )
null* .
||/ 1
Session2 9
[9 :
$str: F
]F G
==H J
nullK O
)O P
{ 
Response 
. 
Redirect %
(% &
$str& 2
)2 3
;3 4
} 
string 

rolUsuario !
=" #
Session$ +
[+ ,
$str, 8
]8 9
.9 :
ToString: B
(B C
)C D
;D E
if 
( 

rolUsuario 
!= !
$str" 1
)1 2
{ 
Response 
. 
Redirect %
(% &
$str& 1
)1 2
;2 3
} 
} 
} 	
} 
} �
<D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Cultura.aspx.cs
	namespace�� 	
IntranetWeb
��
 
{�� 
public
�� 

partial
�� 
class
�� 
Cultura
��  
:
��! "
Page
��# '
{
�� 
	protected
�� 
void
�� 
	Page_Load
��  
(
��  !
object
��! '
sender
��( .
,
��. /
	EventArgs
��0 9
e
��: ;
)
��; <
{
�� 	
if
�� 
(
�� 
!
�� 

IsPostBack
�� 
)
�� 
{
�� 
LoadBirthdays
�� 
(
�� 
)
�� 
;
��   
LoadRecentIngresos
�� "
(
��" #
)
��# $
;
��$ %#
LoadRecentNacimientos
�� %
(
��% &
)
��& '
;
��' (#
LoadRecentPromociones
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 	
private
�� 
void
�� 
LoadBirthdays
�� "
(
��" #
)
��# $
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
DateTime
�� 
today
�� 
=
��  
DateTime
��! )
.
��) *
Today
��* /
;
��/ 0
DateTime
�� 
	yesterday
�� "
=
��# $
today
��% *
.
��* +
AddDays
��+ 2
(
��2 3
-
��3 4
$num
��4 5
)
��5 6
;
��6 7
DateTime
�� 
tomorrow
�� !
=
��" #
today
��$ )
.
��) *
AddDays
��* 1
(
��1 2
$num
��2 3
)
��3 4
;
��4 5
var
�� 
birthdaysToday
�� "
=
��# $
context
��% ,
.
��, -
Usuarios
��- 5
.
�� 
Where
�� 
(
�� 
u
�� 
=>
�� 
u
��  !
.
��! "
fechaNacimiento
��" 1
.
��1 2
Value
��2 7
.
��7 8
Month
��8 =
==
��> @
today
��A F
.
��F G
Month
��G L
&&
��M O
u
��P Q
.
��Q R
fechaNacimiento
��R a
.
��a b
Value
��b g
.
��g h
Day
��h k
==
��l n
today
��o t
.
��t u
Day
��u x
)
��x y
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
var
��  
birthdaysYesterday
�� &
=
��' (
context
��) 0
.
��0 1
Usuarios
��1 9
.
�� 
Where
�� 
(
�� 
u
�� 
=>
�� 
u
��  !
.
��! "
fechaNacimiento
��" 1
.
��1 2
Value
��2 7
.
��7 8
Month
��8 =
==
��> @
	yesterday
��A J
.
��J K
Month
��K P
&&
��Q S
u
��T U
.
��U V
fechaNacimiento
��V e
.
��e f
Value
��f k
.
��k l
Day
��l o
==
��p r
	yesterday
��s |
.
��| }
Day��} �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
var
�� 
birthdaysTomorrow
�� %
=
��& '
context
��( /
.
��/ 0
Usuarios
��0 8
.
�� 
Where
�� 
(
�� 
u
�� 
=>
�� 
u
��  !
.
��! "
fechaNacimiento
��" 1
.
��1 2
Value
��2 7
.
��7 8
Month
��8 =
==
��> @
tomorrow
��A I
.
��I J
Month
��J O
&&
��P R
u
��S T
.
��T U
fechaNacimiento
��U d
.
��d e
Value
��e j
.
��j k
Day
��k n
==
��o q
tomorrow
��r z
.
��z {
Day
��{ ~
)
��~ 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
rptBirthdaysToday
�� !
.
��! "

DataSource
��" ,
=
��- .
birthdaysToday
��/ =
;
��= >
rptBirthdaysToday
�� !
.
��! "
DataBind
��" *
(
��* +
)
��+ ,
;
��, -!
lblNoBirthdaysToday
�� #
.
��# $
Visible
��$ +
=
��, -
birthdaysToday
��. <
.
��< =
Count
��= B
==
��C E
$num
��F G
;
��G H#
rptBirthdaysYesterday
�� %
.
��% &

DataSource
��& 0
=
��1 2 
birthdaysYesterday
��3 E
;
��E F#
rptBirthdaysYesterday
�� %
.
��% &
DataBind
��& .
(
��. /
)
��/ 0
;
��0 1%
lblNoBirthdaysYesterday
�� '
.
��' (
Visible
��( /
=
��0 1 
birthdaysYesterday
��2 D
.
��D E
Count
��E J
==
��K M
$num
��N O
;
��O P"
rptBirthdaysTomorrow
�� $
.
��$ %

DataSource
��% /
=
��0 1
birthdaysTomorrow
��2 C
;
��C D"
rptBirthdaysTomorrow
�� $
.
��$ %
DataBind
��% -
(
��- .
)
��. /
;
��/ 0$
lblNoBirthdaysTomorrow
�� &
.
��& '
Visible
��' .
=
��/ 0
birthdaysTomorrow
��1 B
.
��B C
Count
��C H
==
��I K
$num
��L M
;
��M N
}
�� 
}
�� 	
private
�� 
void
��  
LoadRecentIngresos
�� '
(
��' (
)
��( )
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
recentIngresos
�� "
=
��# $
context
��% ,
.
��, -
Usuarios
��- 5
.
�� 
Where
�� 
(
�� 
u
�� 
=>
�� 
u
��  !
.
��! "
fechaIngreso
��" .
.
��. /
HasValue
��/ 7
)
��7 8
.
�� 
OrderByDescending
�� &
(
��& '
u
��' (
=>
��) +
u
��, -
.
��- .
fechaIngreso
��. :
.
��: ;
Value
��; @
)
��@ A
.
�� 
Take
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
recentIngresos
�� "
.
��" #
Count
��# (
>
��) *
$num
��+ ,
)
��, -
{
�� 
rptUltimoIngreso
�� $
.
��$ %

DataSource
��% /
=
��0 1
recentIngresos
��2 @
.
��@ A
Take
��A E
(
��E F
$num
��F G
)
��G H
;
��H I
rptUltimoIngreso
�� $
.
��$ %
DataBind
��% -
(
��- .
)
��. /
;
��/ 0 
lblNoUltimoIngreso
�� &
.
��& '
Visible
��' .
=
��/ 0
false
��1 6
;
��6 7!
rptPenultimoIngreso
�� '
.
��' (

DataSource
��( 2
=
��3 4
recentIngresos
��5 C
.
��C D
Skip
��D H
(
��H I
$num
��I J
)
��J K
.
��K L
Take
��L P
(
��P Q
$num
��Q R
)
��R S
;
��S T!
rptPenultimoIngreso
�� '
.
��' (
DataBind
��( 0
(
��0 1
)
��1 2
;
��2 3#
lblNoPenultimoIngreso
�� )
.
��) *
Visible
��* 1
=
��2 3
false
��4 9
;
��9 :%
rptAntepenultimoIngreso
�� +
.
��+ ,

DataSource
��, 6
=
��7 8
recentIngresos
��9 G
.
��G H
Skip
��H L
(
��L M
$num
��M N
)
��N O
.
��O P
Take
��P T
(
��T U
$num
��U V
)
��V W
;
��W X%
rptAntepenultimoIngreso
�� +
.
��+ ,
DataBind
��, 4
(
��4 5
)
��5 6
;
��6 7'
lblNoAntepenultimoIngreso
�� -
.
��- .
Visible
��. 5
=
��6 7
false
��8 =
;
��= >
}
�� 
else
�� 
{
��  
lblNoUltimoIngreso
�� &
.
��& '
Visible
��' .
=
��/ 0
true
��1 5
;
��5 6#
lblNoPenultimoIngreso
�� )
.
��) *
Visible
��* 1
=
��2 3
true
��4 8
;
��8 9'
lblNoAntepenultimoIngreso
�� -
.
��- .
Visible
��. 5
=
��6 7
true
��8 <
;
��< =
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� #
LoadRecentNacimientos
�� *
(
��* +
)
��+ ,
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
recentNacimientos
�� %
=
��& '
context
��( /
.
��/ 0
Hijos
��0 5
.
�� 
OrderByDescending
�� &
(
��& '
h
��' (
=>
��) +
h
��, -
.
��- .!
fechanacimientohijo
��. A
)
��A B
.
�� 
Take
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
Select
�� 
(
�� 
h
�� 
=>
��  
new
��! $
{
�� 
Colaborador
�� #
=
��$ %
h
��& '
.
��' (
Usuarios
��( 0
.
��0 1
nombre
��1 7
+
��8 9
$str
��: =
+
��> ?
h
��@ A
.
��A B
Usuarios
��B J
.
��J K
apellido
��K S
,
��S T

NombreHijo
�� "
=
��# $
h
��% &
.
��& '
nombre
��' -
,
��- .
FechaNacimiento
�� '
=
��( )
h
��* +
.
��+ ,!
fechanacimientohijo
��, ?
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
recentNacimientos
�� %
.
��% &
Count
��& +
>
��, -
$num
��. /
)
��/ 0
{
�� !
rptUltimoNacimiento
�� '
.
��' (

DataSource
��( 2
=
��3 4
recentNacimientos
��5 F
.
��F G
Take
��G K
(
��K L
$num
��L M
)
��M N
;
��N O!
rptUltimoNacimiento
�� '
.
��' (
DataBind
��( 0
(
��0 1
)
��1 2
;
��2 3#
lblNoUltimoNacimiento
�� )
.
��) *
Visible
��* 1
=
��2 3
false
��4 9
;
��9 :$
rptPenultimoNacimiento
�� *
.
��* +

DataSource
��+ 5
=
��6 7
recentNacimientos
��8 I
.
��I J
Skip
��J N
(
��N O
$num
��O P
)
��P Q
.
��Q R
Take
��R V
(
��V W
$num
��W X
)
��X Y
;
��Y Z$
rptPenultimoNacimiento
�� *
.
��* +
DataBind
��+ 3
(
��3 4
)
��4 5
;
��5 6&
lblNoPenultimoNacimiento
�� ,
.
��, -
Visible
��- 4
=
��5 6
false
��7 <
;
��< =(
rptAntepenultimoNacimiento
�� .
.
��. /

DataSource
��/ 9
=
��: ;
recentNacimientos
��< M
.
��M N
Skip
��N R
(
��R S
$num
��S T
)
��T U
.
��U V
Take
��V Z
(
��Z [
$num
��[ \
)
��\ ]
;
��] ^(
rptAntepenultimoNacimiento
�� .
.
��. /
DataBind
��/ 7
(
��7 8
)
��8 9
;
��9 :*
lblNoAntepenultimoNacimiento
�� 0
.
��0 1
Visible
��1 8
=
��9 :
false
��; @
;
��@ A
}
�� 
else
�� 
{
�� #
lblNoUltimoNacimiento
�� )
.
��) *
Visible
��* 1
=
��2 3
true
��4 8
;
��8 9&
lblNoPenultimoNacimiento
�� ,
.
��, -
Visible
��- 4
=
��5 6
true
��7 ;
;
��; <*
lblNoAntepenultimoNacimiento
�� 0
.
��0 1
Visible
��1 8
=
��9 :
true
��; ?
;
��? @
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� #
LoadRecentPromociones
�� *
(
��* +
)
��+ ,
{
�� 	
using
�� 
(
�� 
var
�� 
context
�� 
=
��  
new
��! $
IntranetEntities
��% 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
recentPromociones
�� %
=
��& '
context
��( /
.
��/ 0
Promociones
��0 ;
.
�� 
OrderByDescending
�� &
(
��& '
p
��' (
=>
��) +
p
��, -
.
��- .
FechaPromocion
��. <
)
��< =
.
�� 
Take
�� 
(
�� 
$num
�� 
)
�� 
.
�� 
Select
�� 
(
�� 
p
�� 
=>
��  
new
��! $
{
�� 
nombre
�� 
=
��  
p
��! "
.
��" #
Usuarios
��# +
.
��+ ,
nombre
��, 2
,
��2 3
apellido
��  
=
��! "
p
��# $
.
��$ %
Usuarios
��% -
.
��- .
apellido
��. 6
,
��6 7
fechaPromocion
�� &
=
��' (
p
��) *
.
��* +
FechaPromocion
��+ 9
,
��9 :
cargo
�� 
=
�� 
p
��  !
.
��! "
Usuarios
��" *
.
��* +
cargo
��+ 0
,
��0 1
gerencia
��  
=
��! "
p
��# $
.
��$ %
Usuarios
��% -
.
��- .
	Gerencias
��. 7
.
��7 8
nombre
��8 >
,
��> ?
subgerencia
�� #
=
��$ %
p
��& '
.
��' (
Usuarios
��( 0
.
��0 1
Subgerencias
��1 =
.
��= >
nombre
��> D
,
��D E
departamento
�� $
=
��% &
p
��' (
.
��( )
Usuarios
��) 1
.
��1 2
Departamentos
��2 ?
.
��? @
nombre
��@ F
,
��F G
	ubicacion
�� !
=
��" #
p
��$ %
.
��% &
Usuarios
��& .
.
��. /
Ubicaciones
��/ :
.
��: ;
nombre
��; A
,
��A B
jefe
�� 
=
�� 
p
��  
.
��  !
Usuarios
��! )
.
��) *
jefe
��* .
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
recentPromociones
�� %
.
��% &
Count
��& +
>
��, -
$num
��. /
)
��/ 0
{
��  
rptUltimaPromocion
�� &
.
��& '

DataSource
��' 1
=
��2 3
recentPromociones
��4 E
.
��E F
Take
��F J
(
��J K
$num
��K L
)
��L M
;
��M N 
rptUltimaPromocion
�� &
.
��& '
DataBind
��' /
(
��/ 0
)
��0 1
;
��1 2"
lblNoUltimaPromocion
�� (
.
��( )
Visible
��) 0
=
��1 2
false
��3 8
;
��8 9#
rptPenultimaPromocion
�� )
.
��) *

DataSource
��* 4
=
��5 6
recentPromociones
��7 H
.
��H I
Skip
��I M
(
��M N
$num
��N O
)
��O P
.
��P Q
Take
��Q U
(
��U V
$num
��V W
)
��W X
;
��X Y#
rptPenultimaPromocion
�� )
.
��) *
DataBind
��* 2
(
��2 3
)
��3 4
;
��4 5%
lblNoPenultimaPromocion
�� +
.
��+ ,
Visible
��, 3
=
��4 5
false
��6 ;
;
��; <'
rptAntepenultimaPromocion
�� -
.
��- .

DataSource
��. 8
=
��9 :
recentPromociones
��; L
.
��L M
Skip
��M Q
(
��Q R
$num
��R S
)
��S T
.
��T U
Take
��U Y
(
��Y Z
$num
��Z [
)
��[ \
;
��\ ]'
rptAntepenultimaPromocion
�� -
.
��- .
DataBind
��. 6
(
��6 7
)
��7 8
;
��8 9)
lblNoAntepenultimaPromocion
�� /
.
��/ 0
Visible
��0 7
=
��8 9
false
��: ?
;
��? @
}
�� 
else
�� 
{
�� "
lblNoUltimaPromocion
�� (
.
��( )
Visible
��) 0
=
��1 2
true
��3 7
;
��7 8%
lblNoPenultimaPromocion
�� +
.
��+ ,
Visible
��, 3
=
��4 5
true
��6 :
;
��: ;)
lblNoAntepenultimaPromocion
�� /
.
��/ 0
Visible
��0 7
=
��8 9
true
��: >
;
��> ?
}
�� 
}
�� 
}
�� 	
}
�� 
}�� Ư
ED:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\AgregarPromocion.aspx.cs
	namespace 	
IntranetWeb
 
{		 
public

 

partial

 
class

 
AgregarPromocion

 )
:

* +
System

, 2
.

2 3
Web

3 6
.

6 7
UI

7 9
.

9 :
Page

: >
{ 
private 
IntranetEntities  
db! #
=$ %
new& )
IntranetEntities* :
(: ;
); <
;< =
private 
PromocionesDAL 
promocionesDAL -
=. /
new0 3
PromocionesDAL4 B
(B C
)C D
;D E
private 
string 

rutUsuario !
;! "
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
CargarDatos 
( 
) 
; 
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
Request* 1
.1 2
QueryString2 =
[= >
$str> C
]C D
)D E
)E F
{ 

rutUsuario 
=  
Request! (
.( )
QueryString) 4
[4 5
$str5 :
]: ;
;; <
CargarDatosUsuario &
(& '

rutUsuario' 1
)1 2
;2 3
} 
else 
{ 
Response 
. 
Redirect %
(% &
$str& 2
)2 3
;3 4
} 
} 
}   	
private"" 
void"" 
CargarDatos""  
(""  !
)""! "
{## 	
var%% 
	gerencias%% 
=%% 
db%% 
.%% 
	Gerencias%% (
.%%( )
ToList%%) /
(%%/ 0
)%%0 1
;%%1 2
GerenciaDdl&& 
.&& 

DataSource&& "
=&&# $
	gerencias&&% .
;&&. /
GerenciaDdl'' 
.'' 
DataTextField'' %
=''& '
$str''( 0
;''0 1
GerenciaDdl(( 
.(( 
DataValueField(( &
=((' (
$str(() -
;((- .
GerenciaDdl)) 
.)) 
DataBind))  
())  !
)))! "
;))" #
GerenciaDdl** 
.** 
Items** 
.** 
Insert** $
(**$ %
$num**% &
,**& '
new**( +
ListItem**, 4
(**4 5
$str**5 I
,**I J
$str**K M
)**M N
)**N O
;**O P
CargarSubgerencias-- 
(-- 
)--  
;--  !
CargarDepartamentos.. 
(..  
)..  !
;..! "
CargarUbicaciones// 
(// 
)// 
;//  
}00 	
private22 
void22 
CargarSubgerencias22 '
(22' (
int22( +
?22+ ,

gerenciaId22- 7
=228 9
null22: >
)22> ?
{33 	
var44 
subgerencias44 
=44 

gerenciaId44 )
.44) *
HasValue44* 2
?55 
db55 
.55 
Subgerencias55 !
.55! "
Where55" '
(55' (
s55( )
=>55* ,
s55- .
.55. /

idGerencia55/ 9
==55: <

gerenciaId55= G
)55G H
.55H I
ToList55I O
(55O P
)55P Q
:66 
db66 
.66 
Subgerencias66 !
.66! "
ToList66" (
(66( )
)66) *
;66* +
SubgerenciaDdl77 
.77 

DataSource77 %
=77& '
subgerencias77( 4
;774 5
SubgerenciaDdl88 
.88 
DataTextField88 (
=88) *
$str88+ 3
;883 4
SubgerenciaDdl99 
.99 
DataValueField99 )
=99* +
$str99, 0
;990 1
SubgerenciaDdl:: 
.:: 
DataBind:: #
(::# $
)::$ %
;::% &
SubgerenciaDdl;; 
.;; 
Items;;  
.;;  !
Insert;;! '
(;;' (
$num;;( )
,;;) *
new;;+ .
ListItem;;/ 7
(;;7 8
$str;;8 O
,;;O P
$str;;Q S
);;S T
);;T U
;;;U V
}<< 	
private>> 
void>> 
CargarDepartamentos>> (
(>>( )
int>>) ,
?>>, -
subgerenciaId>>. ;
=>>< =
null>>> B
)>>B C
{?? 	
var@@ 
departamentos@@ 
=@@ 
subgerenciaId@@  -
.@@- .
HasValue@@. 6
?AA 
dbAA 
.AA 
DepartamentosAA "
.AA" #
WhereAA# (
(AA( )
dAA) *
=>AA+ -
dAA. /
.AA/ 0
idSubgerenciaAA0 =
==AA> @
subgerenciaIdAAA N
)AAN O
.AAO P
ToListAAP V
(AAV W
)AAW X
:BB 
dbBB 
.BB 
DepartamentosBB "
.BB" #
ToListBB# )
(BB) *
)BB* +
;BB+ ,
DepartamentoDdlCC 
.CC 

DataSourceCC &
=CC' (
departamentosCC) 6
;CC6 7
DepartamentoDdlDD 
.DD 
DataTextFieldDD )
=DD* +
$strDD, 4
;DD4 5
DepartamentoDdlEE 
.EE 
DataValueFieldEE *
=EE+ ,
$strEE- 1
;EE1 2
DepartamentoDdlFF 
.FF 
DataBindFF $
(FF$ %
)FF% &
;FF& '
DepartamentoDdlGG 
.GG 
ItemsGG !
.GG! "
InsertGG" (
(GG( )
$numGG) *
,GG* +
newGG, /
ListItemGG0 8
(GG8 9
$strGG9 P
,GGP Q
$strGGR T
)GGT U
)GGU V
;GGV W
}HH 	
privateJJ 
voidJJ 
CargarUbicacionesJJ &
(JJ& '
intJJ' *
?JJ* +
departamentoIdJJ, :
=JJ; <
nullJJ= A
)JJA B
{KK 	
varLL 
ubicacionesLL 
=LL 
departamentoIdLL ,
.LL, -
HasValueLL- 5
?MM 
dbMM 
.MM 
UbicacionesMM  
.MM  !
WhereMM! &
(MM& '
uMM' (
=>MM) +
uMM, -
.MM- .
idDepartamentoMM. <
==MM= ?
departamentoIdMM@ N
)MMN O
.MMO P
ToListMMP V
(MMV W
)MMW X
:NN 
dbNN 
.NN 
UbicacionesNN  
.NN  !
ToListNN! '
(NN' (
)NN( )
;NN) *
UbicacionDdlOO 
.OO 

DataSourceOO #
=OO$ %
ubicacionesOO& 1
;OO1 2
UbicacionDdlPP 
.PP 
DataTextFieldPP &
=PP' (
$strPP) 1
;PP1 2
UbicacionDdlQQ 
.QQ 
DataValueFieldQQ '
=QQ( )
$strQQ* .
;QQ. /
UbicacionDdlRR 
.RR 
DataBindRR !
(RR! "
)RR" #
;RR# $
UbicacionDdlSS 
.SS 
ItemsSS 
.SS 
InsertSS %
(SS% &
$numSS& '
,SS' (
newSS) ,
ListItemSS- 5
(SS5 6
$strSS6 K
,SSK L
$strSSM O
)SSO P
)SSP Q
;SSQ R
}TT 	
privateVV 
voidVV 
CargarDatosUsuarioVV '
(VV' (
stringVV( .
rutVV/ 2
)VV2 3
{WW 	
UsuariosXX 
usuarioXX 
=XX 
dbXX !
.XX! "
UsuariosXX" *
.XX* +
SingleOrDefaultXX+ :
(XX: ;
uXX; <
=>XX= ?
uXX@ A
.XXA B

rutUsuarioXXB L
==XXM O
rutXXP S
)XXS T
;XXT U
ifZZ 
(ZZ 
usuarioZZ 
!=ZZ 
nullZZ 
)ZZ  
{[[ 
	NombreTxt\\ 
.\\ 
Text\\ 
=\\  
usuario\\! (
.\\( )
nombre\\) /
;\\/ 0
ApellidoTxt]] 
.]] 
Text]]  
=]]! "
usuario]]# *
.]]* +
apellido]]+ 3
;]]3 4
RutUsuarioTxt^^ 
.^^ 
Text^^ "
=^^# $
usuario^^% ,
.^^, -

rutUsuario^^- 7
;^^7 8
CargoTxt__ 
.__ 
Text__ 
=__ 
usuario__  '
.__' (
cargo__( -
;__- .
GerenciaDdl`` 
.`` 
SelectedValue`` )
=``* +
usuario``, 3
.``3 4

idGerencia``4 >
.``> ?
HasValue``? G
?``H I
usuario``J Q
.``Q R

idGerencia``R \
.``\ ]
Value``] b
.``b c
ToString``c k
(``k l
)``l m
:``n o
$str``p r
;``r s
CargarSubgerenciasaa "
(aa" #
usuarioaa# *
.aa* +

idGerenciaaa+ 5
)aa5 6
;aa6 7
SubgerenciaDdlbb 
.bb 
SelectedValuebb ,
=bb- .
usuariobb/ 6
.bb6 7
idSubgerenciabb7 D
.bbD E
HasValuebbE M
?bbN O
usuariobbP W
.bbW X
idSubgerenciabbX e
.bbe f
Valuebbf k
.bbk l
ToStringbbl t
(bbt u
)bbu v
:bbw x
$strbby {
;bb{ |
CargarDepartamentoscc #
(cc# $
usuariocc$ +
.cc+ ,
idSubgerenciacc, 9
)cc9 :
;cc: ;
DepartamentoDdldd 
.dd  
SelectedValuedd  -
=dd. /
usuariodd0 7
.dd7 8
idDepartamentodd8 F
.ddF G
HasValueddG O
?ddP Q
usuarioddR Y
.ddY Z
idDepartamentoddZ h
.ddh i
Valueddi n
.ddn o
ToStringddo w
(ddw x
)ddx y
:ddz {
$strdd| ~
;dd~ 
CargarUbicacionesee !
(ee! "
usuarioee" )
.ee) *
idDepartamentoee* 8
)ee8 9
;ee9 :
UbicacionDdlff 
.ff 
SelectedValueff *
=ff+ ,
usuarioff- 4
.ff4 5
idUbicacionff5 @
.ff@ A
HasValueffA I
?ffJ K
usuarioffL S
.ffS T
idUbicacionffT _
.ff_ `
Valueff` e
.ffe f
ToStringfff n
(ffn o
)ffo p
:ffq r
$strffs u
;ffu v
JefeTxtgg 
.gg 
Textgg 
=gg 
usuariogg &
.gg& '
jefegg' +
;gg+ ,
FechaPromocionTxthh !
.hh! "
Texthh" &
=hh' (
DateTimehh) 1
.hh1 2
Nowhh2 5
.hh5 6
ToStringhh6 >
(hh> ?
$strhh? K
)hhK L
;hhL M
}ii 
elsejj 
{kk 
Responsell 
.ll 
Redirectll !
(ll! "
$strll" .
)ll. /
;ll/ 0
}mm 
}nn 	
	protectedpp 
voidpp 
GuardarBtn_Clickpp '
(pp' (
objectpp( .
senderpp/ 5
,pp5 6
	EventArgspp7 @
eppA B
)ppB C
{qq 	
ifrr 
(rr 
Pagerr 
.rr 
IsValidrr 
)rr 
{ss 
stringtt 

rutUsuariott !
=tt" #
RutUsuarioTxttt$ 1
.tt1 2
Texttt2 6
;tt6 7
stringuu 

nuevoCargouu !
=uu" #
CargoTxtuu$ ,
.uu, -
Textuu- 1
;uu1 2
intvv 
?vv 

idGerenciavv 
=vv  !
stringvv" (
.vv( )
IsNullOrEmptyvv) 6
(vv6 7
GerenciaDdlvv7 B
.vvB C
SelectedValuevvC P
)vvP Q
?vvR S
(vvT U
intvvU X
?vvX Y
)vvY Z
nullvvZ ^
:vv_ `
intvva d
.vvd e
Parsevve j
(vvj k
GerenciaDdlvvk v
.vvv w
SelectedValue	vvw �
)
vv� �
;
vv� �
intww 
?ww 
idSubgerenciaww "
=ww# $
stringww% +
.ww+ ,
IsNullOrEmptyww, 9
(ww9 :
SubgerenciaDdlww: H
.wwH I
SelectedValuewwI V
)wwV W
?wwX Y
(wwZ [
intww[ ^
?ww^ _
)ww_ `
nullww` d
:wwe f
intwwg j
.wwj k
Parsewwk p
(wwp q
SubgerenciaDdlwwq 
.	ww �
SelectedValue
ww� �
)
ww� �
;
ww� �
intxx 
?xx 
idDepartamentoxx #
=xx$ %
stringxx& ,
.xx, -
IsNullOrEmptyxx- :
(xx: ;
DepartamentoDdlxx; J
.xxJ K
SelectedValuexxK X
)xxX Y
?xxZ [
(xx\ ]
intxx] `
?xx` a
)xxa b
nullxxb f
:xxg h
intxxi l
.xxl m
Parsexxm r
(xxr s
DepartamentoDdl	xxs �
.
xx� �
SelectedValue
xx� �
)
xx� �
;
xx� �
intyy 
?yy 
idUbicacionyy  
=yy! "
stringyy# )
.yy) *
IsNullOrEmptyyy* 7
(yy7 8
UbicacionDdlyy8 D
.yyD E
SelectedValueyyE R
)yyR S
?yyT U
(yyV W
intyyW Z
?yyZ [
)yy[ \
nullyy\ `
:yya b
intyyc f
.yyf g
Parseyyg l
(yyl m
UbicacionDdlyym y
.yyy z
SelectedValue	yyz �
)
yy� �
;
yy� �
stringzz 
jefezz 
=zz 
JefeTxtzz %
.zz% &
Textzz& *
;zz* +
DateTime{{ 
fechaPromocion{{ '
={{( )
Convert{{* 1
.{{1 2

ToDateTime{{2 <
({{< =
FechaPromocionTxt{{= N
.{{N O
Text{{O S
){{S T
;{{T U
Promociones}} 
	promocion}} %
=}}& '
new}}( +
Promociones}}, 7
{~~ 

RutUsuario 
=  

rutUsuario! +
,+ ,
FechaPromocion
�� "
=
��# $
fechaPromocion
��% 3
}
�� 
;
�� 
Usuarios
�� 
usuario
��  
=
��! "
db
��# %
.
��% &
Usuarios
��& .
.
��. /
SingleOrDefault
��/ >
(
��> ?
u
��? @
=>
��A C
u
��D E
.
��E F

rutUsuario
��F P
==
��Q S

rutUsuario
��T ^
)
��^ _
;
��_ `
if
�� 
(
�� 
usuario
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
usuario
�� 
.
�� 
cargo
�� !
=
��" #

nuevoCargo
��$ .
;
��. /
usuario
�� 
.
�� 

idGerencia
�� &
=
��' (

idGerencia
��) 3
;
��3 4
usuario
�� 
.
�� 
idSubgerencia
�� )
=
��* +
idSubgerencia
��, 9
;
��9 :
usuario
�� 
.
�� 
idDepartamento
�� *
=
��+ ,
idDepartamento
��- ;
;
��; <
usuario
�� 
.
�� 
idUbicacion
�� '
=
��( )
idUbicacion
��* 5
;
��5 6
usuario
�� 
.
�� 
jefe
��  
=
��! "
jefe
��# '
;
��' (
db
�� 
.
�� 
SaveChanges
�� "
(
��" #
)
��# $
;
��$ %
promocionesDAL
�� "
.
��" #
Add
��# &
(
��& '
	promocion
��' 0
)
��0 1
;
��1 2
Response
�� 
.
�� 
Redirect
�� %
(
��% &
$str
��& [
)
��[ \
;
��\ ]
}
�� 
else
�� 
{
�� 
MensajePanel
��  
.
��  !
Visible
��! (
=
��) *
true
��+ /
;
��/ 0
MensajeLabel
��  
.
��  !
Text
��! %
=
��& '
$str
��( ?
;
��? @
}
�� 
}
�� 
}
�� 	
	protected
�� 
void
�� .
 GerenciaDdl_SelectedIndexChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	
int
�� 

gerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
GerenciaDdl
�� (
.
��( )
SelectedValue
��) 6
,
��6 7
out
��8 ;

gerenciaId
��< F
)
��F G
)
��G H
{
��  
CargarSubgerencias
�� "
(
��" #

gerenciaId
��# -
)
��- .
;
��. /
}
�� 
else
�� 
{
�� 
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
SubgerenciaDdl
�� 
.
�� 
Items
�� $
.
��$ %
Insert
��% +
(
��+ ,
$num
��, -
,
��- .
new
��/ 2
ListItem
��3 ;
(
��; <
$str
��< S
,
��S T
$str
��U W
)
��W X
)
��X Y
;
��Y Z
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 1
#SubgerenciaDdl_SelectedIndexChanged
�� :
(
��: ;
object
��; A
sender
��B H
,
��H I
	EventArgs
��J S
e
��T U
)
��U V
{
�� 	
int
�� 
subgerenciaId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
SubgerenciaDdl
�� +
.
��+ ,
SelectedValue
��, 9
,
��9 :
out
��; >
subgerenciaId
��? L
)
��L M
)
��M N
{
�� !
CargarDepartamentos
�� #
(
��# $
subgerenciaId
��$ 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
DepartamentoDdl
�� 
.
��  
Items
��  %
.
��% &
Insert
��& ,
(
��, -
$num
��- .
,
��. /
new
��0 3
ListItem
��4 <
(
��< =
$str
��= T
,
��T U
$str
��V X
)
��X Y
)
��Y Z
;
��Z [
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 2
$DepartamentoDdl_SelectedIndexChanged
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J
	EventArgs
��K T
e
��U V
)
��V W
{
�� 	
int
�� 
departamentoId
�� 
;
�� 
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
DepartamentoDdl
�� ,
.
��, -
SelectedValue
��- :
,
��: ;
out
��< ?
departamentoId
��@ N
)
��N O
)
��O P
{
�� 
CargarUbicaciones
�� !
(
��! "
departamentoId
��" 0
)
��0 1
;
��1 2
}
�� 
else
�� 
{
�� 
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
UbicacionDdl
�� 
.
�� 
Items
�� "
.
��" #
Insert
��# )
(
��) *
$num
��* +
,
��+ ,
new
��- 0
ListItem
��1 9
(
��9 :
$str
��: O
,
��O P
$str
��Q S
)
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
}
�� 
}�� �+
FD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\AgregarNacimiento.aspx.cs
	namespace 	
IntranetWeb
 
{ 
public 

partial 
class 
AgregarNacimiento *
:+ ,
System- 3
.3 4
Web4 7
.7 8
UI8 :
.: ;
Page; ?
{		 
UsuariosDAL

 
usuariosDAL

 
=

  !
new

" %
UsuariosDAL

& 1
(

1 2
)

2 3
;

3 4
HijosDAL 
hijosDAL 
= 
new 
HijosDAL  (
(( )
)) *
;* +
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
string 

rutUsuario !
=" #
Request$ +
.+ ,
QueryString, 7
[7 8
$str8 =
]= >
;> ?
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *

rutUsuario* 4
)4 5
)5 6
{ 
Usuarios 
usuario $
=% &
usuariosDAL' 2
.2 3
GetByRut3 ;
(; <

rutUsuario< F
)F G
;G H
if 
( 
usuario 
!=  "
null# '
)' (
{ 
	NombreLbl !
.! "
Text" &
=' (
usuario) 0
.0 1
nombre1 7
;7 8
ApellidoLbl #
.# $
Text$ (
=) *
usuario+ 2
.2 3
apellido3 ;
;; <
CargoLbl  
.  !
Text! %
=& '
usuario( /
./ 0
cargo0 5
;5 6
GerenciaLbl #
.# $
Text$ (
=) *
usuario+ 2
.2 3
	Gerencias3 <
?< =
.= >
nombre> D
;D E
SubgerenciaLbl &
.& '
Text' +
=, -
usuario. 5
.5 6
Subgerencias6 B
?B C
.C D
nombreD J
;J K
DepartamentoLbl '
.' (
Text( ,
=- .
usuario/ 6
.6 7
Departamentos7 D
?D E
.E F
nombreF L
;L M
} 
else 
{ 
FormularioPanel   '
.  ' (
Visible  ( /
=  0 1
false  2 7
;  7 8

ErrorPanel!! "
.!!" #
Visible!!# *
=!!+ ,
true!!- 1
;!!1 2

ErrorLabel"" "
.""" #
Text""# '
=""( )
$str""* B
;""B C
}## 
}$$ 
else%% 
{&& 
FormularioPanel'' #
.''# $
Visible''$ +
='', -
false''. 3
;''3 4

ErrorPanel(( 
.(( 
Visible(( &
=((' (
true(() -
;((- .

ErrorLabel)) 
.)) 
Text)) #
=))$ %
$str))& Q
;))Q R
}** 
}++ 
},, 	
	protected.. 
void.. 
GuardarBtn_Click.. '
(..' (
object..( .
sender../ 5
,..5 6
	EventArgs..7 @
e..A B
)..B C
{// 	
string00 

rutUsuario00 
=00 
Request00  '
.00' (
QueryString00( 3
[003 4
$str004 9
]009 :
;00: ;
if11 
(11 
!11 
string11 
.11 
IsNullOrEmpty11 %
(11% &

rutUsuario11& 0
)110 1
)111 2
{22 
string33 

nombreHijo33 !
=33" #
NombreHijoTxt33$ 1
.331 2
Text332 6
;336 7
DateTime44 
fechaNacimiento44 (
;44( )
if55 
(55 
DateTime55 
.55 
TryParse55 %
(55% &
FechaNacimientoTxt55& 8
.558 9
Text559 =
,55= >
out55? B
fechaNacimiento55C R
)55R S
)55S T
{66 
Hijos77 
	nuevoHijo77 #
=77$ %
new77& )
Hijos77* /
(77/ 0
)770 1
{88 

rutUsuario99 "
=99# $

rutUsuario99% /
,99/ 0
nombre:: 
=::  

nombreHijo::! +
,::+ ,
fechanacimientohijo;; +
=;;, -
fechaNacimiento;;. =
}<< 
;<< 
hijosDAL== 
.== 
Add==  
(==  !
	nuevoHijo==! *
)==* +
;==+ ,
Response>> 
.>> 
Redirect>> %
(>>% &
$str>>& [
)>>[ \
;>>\ ]
}?? 
else@@ 
{AA 

ErrorPanelBB 
.BB 
VisibleBB &
=BB' (
trueBB) -
;BB- .

ErrorLabelCC 
.CC 
TextCC #
=CC$ %
$strCC& F
;CCF G
}DD 
}EE 
}FF 	
}GG 
}HH 