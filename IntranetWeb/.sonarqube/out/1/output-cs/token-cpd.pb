ÁB
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
)	cc Ä
)
ccÄ Å
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
}jj ¡;
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
)	__ Ä
)
__Ä Å
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
}ff ‹H
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
)	oo Ä
)
ooÄ Å
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
}ww «E
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
)	kk Ä
)
kkÄ Å
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
}rr éE
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
}|| Á"
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
$str	/U  ç
;
UUç é
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
$str	Z_  ç
;
__ç é
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
$str	dj  ç
;
jjç é
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
$str	or  ç
;
rrç é
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
ÄÄ 	
private
ÇÇ 
void
ÇÇ )
AddDropdownActivationScript
ÇÇ 0
(
ÇÇ0 1
)
ÇÇ1 2
{
ÉÉ 	
string
ÑÑ 
script
ÑÑ 
=
ÑÑ 
$str
Ñå 
;
åå 
Page
çç 
.
çç 
ClientScript
çç 
.
çç #
RegisterStartupScript
çç 3
(
çç3 4
this
çç4 8
.
çç8 9
GetType
çç9 @
(
çç@ A
)
ççA B
,
ççB C
$str
ççD T
,
ççT U
script
ççV \
)
çç\ ]
;
çç] ^
}
éé 	
}
èè 
}êê óú
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
Ubicaci√≥nDdlTT 
.TT 

DataSourceTT #
=TT$ %
ubicacionesTT& 1
;TT1 2
Ubicaci√≥nDdlUU 
.UU 
DataTextFieldUU &
=UU' (
$strUU) 1
;UU1 2
Ubicaci√≥nDdlVV 
.VV 
DataValueFieldVV '
=VV( )
$strVV* .
;VV. /
Ubicaci√≥nDdlWW 
.WW 
DataBindWW !
(WW! "
)WW" #
;WW# $
Ubicaci√≥nDdlXX 
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
SelectedValue	hhz á
)
hhá à
,
hhà â
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
SubgerenciaDdl	iit Ç
.
iiÇ É
SelectedValue
iiÉ ê
)
iiê ë
,
iië í
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
DepartamentoDdl	jjv Ö
.
jjÖ Ü
SelectedValue
jjÜ ì
)
jjì î
,
jjî ï
idUbicacionkk #
=kk$ %
stringkk& ,
.kk, -
IsNullOrEmptykk- :
(kk: ;
Ubicaci√≥nDdlkk; G
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
Ubicaci√≥nDdlkkp |
.kk| }
SelectedValue	kk} ä
)
kkä ã
,
kkã å
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
.	mm Ä
SelectedValue
mmÄ ç
)
mmç é
,
mmé è
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
SelectedValue	nn~ ã
)
nnã å
,
nnå ç
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
contrase√±arr "
=rr# $
GenerarContrase√±arr% 6
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
ÄÄ 	
private
ÇÇ 
bool
ÇÇ 
UsuarioExiste
ÇÇ "
(
ÇÇ" #
string
ÇÇ# )

rutUsuario
ÇÇ* 4
)
ÇÇ4 5
{
ÉÉ 	
return
ÑÑ 
db
ÑÑ 
.
ÑÑ 
Usuarios
ÑÑ 
.
ÑÑ 
Any
ÑÑ "
(
ÑÑ" #
u
ÑÑ# $
=>
ÑÑ% '
u
ÑÑ( )
.
ÑÑ) *

rutUsuario
ÑÑ* 4
==
ÑÑ5 7

rutUsuario
ÑÑ8 B
)
ÑÑB C
;
ÑÑC D
}
ÖÖ 	
	protected
áá 
void
áá "
RutCV_ServerValidate
áá +
(
áá+ ,
object
áá, 2
source
áá3 9
,
áá9 :%
ServerValidateEventArgs
áá; R
args
ááS W
)
ááW X
{
àà 	
	Validador
ää 
	objValida
ää 
=
ää  !
new
ää" %
	Validador
ää& /
(
ää/ 0
)
ää0 1
;
ää1 2
	objValida
çç 
.
çç 
ValidaVacio
çç !
(
çç! "
RutTxt
çç" (
.
çç( )
Text
çç) -
.
çç- .
Trim
çç. 2
(
çç2 3
)
çç3 4
)
çç4 5
;
çç5 6
	objValida
éé 
.
éé %
ValidaNumDigVerificador
éé -
(
éé- .
RutTxt
éé. 4
.
éé4 5
Text
éé5 9
.
éé9 :
Trim
éé: >
(
éé> ?
)
éé? @
)
éé@ A
;
ééA B
	objValida
èè 
.
èè 
ValidaDigito
èè "
(
èè" #
RutTxt
èè# )
.
èè) *
Text
èè* .
.
èè. /
Trim
èè/ 3
(
èè3 4
)
èè4 5
)
èè5 6
;
èè6 7
if
íí 
(
íí 
	objValida
íí 
.
íí 
xEstado
íí !
!=
íí" $
$str
íí% /
)
íí/ 0
{
ìì 
RutCV
îî 
.
îî 
ErrorMessage
îî "
=
îî# $
$str
îî% 6
;
îî6 7
args
ïï 
.
ïï 
IsValid
ïï 
=
ïï 
false
ïï $
;
ïï$ %
}
ññ 
}
óó 	
private
öö 
string
öö  
GenerarContrase√±a
öö (
(
öö( )
)
öö) *
{
õõ 	
const
úú 
string
úú "
caracteresPermitidos
úú -
=
úú. /
$str
úú0 p
;
úúp q
Random
ùù 
rnd
ùù 
=
ùù 
new
ùù 
Random
ùù #
(
ùù# $
)
ùù$ %
;
ùù% &
string
ûû 
contrase√±a
ûû 
=
ûû 
new
ûû  #
string
ûû$ *
(
ûû* +

Enumerable
ûû+ 5
.
ûû5 6
Repeat
ûû6 <
(
ûû< ="
caracteresPermitidos
ûû= Q
,
ûûQ R
$num
ûûS T
)
ûûT U
.
üü 
Select
üü 
(
üü 
s
üü 
=>
üü 
s
üü 
[
üü 
rnd
üü "
.
üü" #
Next
üü# '
(
üü' (
s
üü( )
.
üü) *
Length
üü* 0
)
üü0 1
]
üü1 2
)
üü2 3
.
üü3 4
ToArray
üü4 ;
(
üü; <
)
üü< =
)
üü= >
;
üü> ?
return
†† 
contrase√±a
†† 
;
†† 
}
°° 	
	protected
££ 
void
££ .
 GerenciaDdl_SelectedIndexChanged
££ 7
(
££7 8
object
££8 >
sender
££? E
,
££E F
	EventArgs
££G P
e
££Q R
)
££R S
{
§§ 	
int
•• 

gerenciaId
•• 
=
•• 
int
••  
.
••  !
Parse
••! &
(
••& '
GerenciaDdl
••' 2
.
••2 3
SelectedValue
••3 @
)
••@ A
;
••A B 
CargarSubgerencias
¶¶ 
(
¶¶ 

gerenciaId
¶¶ )
)
¶¶) *
;
¶¶* +
}
ßß 	
	protected
©© 
void
©© 1
#SubgerenciaDdl_SelectedIndexChanged
©© :
(
©©: ;
object
©©; A
sender
©©B H
,
©©H I
	EventArgs
©©J S
e
©©T U
)
©©U V
{
™™ 	
int
´´ 
subgerenciaId
´´ 
=
´´ 
int
´´  #
.
´´# $
Parse
´´$ )
(
´´) *
SubgerenciaDdl
´´* 8
.
´´8 9
SelectedValue
´´9 F
)
´´F G
;
´´G H!
CargarDepartamentos
¨¨ 
(
¨¨  
subgerenciaId
¨¨  -
)
¨¨- .
;
¨¨. /
}
≠≠ 	
	protected
ØØ 
void
ØØ 2
$DepartamentoDdl_SelectedIndexChanged
ØØ ;
(
ØØ; <
object
ØØ< B
sender
ØØC I
,
ØØI J
	EventArgs
ØØK T
e
ØØU V
)
ØØV W
{
∞∞ 	
int
±± 
departamentoId
±± 
=
±±  
int
±±! $
.
±±$ %
Parse
±±% *
(
±±* +
DepartamentoDdl
±±+ :
.
±±: ;
SelectedValue
±±; H
)
±±H I
;
±±I J
CargarUbicaciones
≤≤ 
(
≤≤ 
departamentoId
≤≤ ,
)
≤≤, -
;
≤≤- .
}
≥≥ 	
}
µµ 
}∂∂ É5
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
)	LL Ä
)
LLÄ Å
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
}SS ±#
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
}GG √q
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
ÅÅ 
=
ÅÅ 
stringBuilder
ÅÅ %
.
ÅÅ% &
ToString
ÅÅ& .
(
ÅÅ. /
)
ÅÅ/ 0
.
ÅÅ0 1
	Normalize
ÅÅ1 :
(
ÅÅ: ;
NormalizationForm
ÅÅ; L
.
ÅÅL M
FormC
ÅÅM R
)
ÅÅR S
;
ÅÅS T
	urlSimple
ÑÑ 
=
ÑÑ 
Regex
ÑÑ 
.
ÑÑ 
Replace
ÑÑ %
(
ÑÑ% &
	urlSimple
ÑÑ& /
,
ÑÑ/ 0
$str
ÑÑ1 @
,
ÑÑ@ A
$str
ÑÑB D
)
ÑÑD E
;
ÑÑE F
	urlSimple
ÖÖ 
=
ÖÖ 
Regex
ÖÖ 
.
ÖÖ 
Replace
ÖÖ %
(
ÖÖ% &
	urlSimple
ÖÖ& /
,
ÖÖ/ 0
$str
ÖÖ1 7
,
ÖÖ7 8
$str
ÖÖ9 <
)
ÖÖ< =
.
ÖÖ= >
Trim
ÖÖ> B
(
ÖÖB C
)
ÖÖC D
;
ÖÖD E
	urlSimple
ÜÜ 
=
ÜÜ 
Regex
ÜÜ 
.
ÜÜ 
Replace
ÜÜ %
(
ÜÜ% &
	urlSimple
ÜÜ& /
,
ÜÜ/ 0
$str
ÜÜ1 6
,
ÜÜ6 7
$str
ÜÜ8 ;
)
ÜÜ; <
;
ÜÜ< =
	urlSimple
ââ 
=
ââ 
$str
ââ #
+
ââ$ %
	urlSimple
ââ& /
;
ââ/ 0
return
ãã 
	urlSimple
ãã 
;
ãã 
}
åå 	
private
èè 
int
èè &
GuardarArchivoMultimedia
èè ,
(
èè, -
string
èè- 3
usuarioAutor
èè4 @
,
èè@ A
string
èèB H
tipoArchivo
èèI T
,
èèT U
string
èèV \

urlArchivo
èè] g
)
èèg h
{
êê 	
using
ëë 
(
ëë 
var
ëë 
context
ëë 
=
ëë  
new
ëë! $
IntranetEntities
ëë% 5
(
ëë5 6
)
ëë6 7
)
ëë7 8
{
íí  
ArchivosMultimedia
ìì "
archivoMultimedia
ìì# 4
=
ìì5 6
new
ìì7 : 
ArchivosMultimedia
ìì; M
{
îî 
fechaPublicacion
ïï $
=
ïï% &
DateTime
ïï' /
.
ïï/ 0
Now
ïï0 3
,
ïï3 4
tipoArchivo
ññ 
=
ññ  !
tipoArchivo
ññ" -
,
ññ- .

urlArchivo
óó 
=
óó  

urlArchivo
óó! +
,
óó+ ,
usuarioAutor
òò  
=
òò! "
usuarioAutor
òò# /
}
ôô 
;
ôô 
context
õõ 
.
õõ  
ArchivosMultimedia
õõ *
.
õõ* +
Add
õõ+ .
(
õõ. /
archivoMultimedia
õõ/ @
)
õõ@ A
;
õõA B
context
úú 
.
úú 
SaveChanges
úú #
(
úú# $
)
úú$ %
;
úú% &
System
ûû 
.
ûû 
Diagnostics
ûû "
.
ûû" #
Debug
ûû# (
.
ûû( )
	WriteLine
ûû) 2
(
ûû2 3
$str
ûû3 U
+
ûûV W
archivoMultimedia
ûûX i
.
ûûi j
id
ûûj l
)
ûûl m
;
ûûm n
System
üü 
.
üü 
Diagnostics
üü "
.
üü" #
Debug
üü# (
.
üü( )
	WriteLine
üü) 2
(
üü2 3
$str
üü3 B
+
üüC D
archivoMultimedia
üüE V
.
üüV W

urlArchivo
üüW a
)
üüa b
;
üüb c
return
°° 
archivoMultimedia
°° (
.
°°( )
id
°°) +
;
°°+ ,
}
¢¢ 
}
££ 	
}
¶¶ 
}ßß ı7
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
)	MM Ä
)
MMÄ Å
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
}TT ¬5
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
}SS Ú
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
]##) *‹	
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
}!! §%
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
}CC ú#
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
}== •
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
contrase√±a 
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
contrase√±at ~
==	 Å
contrase√±a
Ç å
)
å ç
;
ç é
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
}33 ã%
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
}DD Õ
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
} °Ò
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
Ubicaci√≥nDdl]] 
.]] 

DataSource]] #
=]]$ %
ubicaciones]]& 1
;]]1 2
Ubicaci√≥nDdl^^ 
.^^ 
DataTextField^^ &
=^^' (
$str^^) 1
;^^1 2
Ubicaci√≥nDdl__ 
.__ 
DataValueField__ '
=__( )
$str__* .
;__. /
Ubicaci√≥nDdl`` 
.`` 
DataBind`` !
(``! "
)``" #
;``# $
Ubicaci√≥nDdlaa 
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
Ubicaci√≥nDdluu 
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
Contrase√±aTxt|| 
.|| 
Text|| "
=||# $
usuario||% ,
.||, -
contrase√±a||- 7
;||7 8
}}} 
else~~ 
{ 
Response
ÄÄ 
.
ÄÄ 
Redirect
ÄÄ !
(
ÄÄ! "
$str
ÄÄ" .
)
ÄÄ. /
;
ÄÄ/ 0
}
ÅÅ 
}
ÇÇ 	
	protected
ÑÑ 
void
ÑÑ %
GuardarUsuarioBtn_Click
ÑÑ .
(
ÑÑ. /
object
ÑÑ/ 5
sender
ÑÑ6 <
,
ÑÑ< =
	EventArgs
ÑÑ> G
e
ÑÑH I
)
ÑÑI J
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
Page
ÜÜ 
.
ÜÜ 
IsValid
ÜÜ 
)
ÜÜ 
{
áá 
string
àà 
nombre
àà 
=
àà 
	NombreTxt
àà  )
.
àà) *
Text
àà* .
;
àà. /
string
ââ 
apellido
ââ 
=
ââ  !
ApellidoTxt
ââ" -
.
ââ- .
Text
ââ. 2
;
ââ2 3
string
ää 
rut
ää 
=
ää 
RutTxt
ää #
.
ää# $
Text
ää$ (
;
ää( )
DateTime
ãã 
fechaNacimiento
ãã (
=
ãã) *
Convert
ãã+ 2
.
ãã2 3

ToDateTime
ãã3 =
(
ãã= > 
FechaNacimientoTxt
ãã> P
.
ããP Q
Text
ããQ U
)
ããU V
;
ããV W
string
åå 
cargo
åå 
=
åå 
CargoTxt
åå '
.
åå' (
Text
åå( ,
;
åå, -
int
çç 
?
çç 

idGerencia
çç 
=
çç  !
string
çç" (
.
çç( )
IsNullOrEmpty
çç) 6
(
çç6 7
GerenciaDdl
çç7 B
.
ççB C
SelectedValue
ççC P
)
ççP Q
?
ççR S
(
ççT U
int
ççU X
?
ççX Y
)
ççY Z
null
ççZ ^
:
çç_ `
int
çça d
.
ççd e
Parse
ççe j
(
ççj k
GerenciaDdl
ççk v
.
ççv w
SelectedValueççw Ñ
)ççÑ Ö
;ççÖ Ü
int
éé 
?
éé 
idSubgerencia
éé "
=
éé# $
string
éé% +
.
éé+ ,
IsNullOrEmpty
éé, 9
(
éé9 :
SubgerenciaDdl
éé: H
.
ééH I
SelectedValue
ééI V
)
ééV W
?
ééX Y
(
ééZ [
int
éé[ ^
?
éé^ _
)
éé_ `
null
éé` d
:
éée f
int
éég j
.
ééj k
Parse
éék p
(
éép q
SubgerenciaDdl
ééq 
.éé Ä
SelectedValueééÄ ç
)ééç é
;ééé è
int
èè 
?
èè 
idDepartamento
èè #
=
èè$ %
string
èè& ,
.
èè, -
IsNullOrEmpty
èè- :
(
èè: ;
DepartamentoDdl
èè; J
.
èèJ K
SelectedValue
èèK X
)
èèX Y
?
èèZ [
(
èè\ ]
int
èè] `
?
èè` a
)
èèa b
null
èèb f
:
èèg h
int
èèi l
.
èèl m
Parse
èèm r
(
èèr s
DepartamentoDdlèès Ç
.èèÇ É
SelectedValueèèÉ ê
)èèê ë
;èèë í
int
êê 
?
êê 
idUbicacion
êê  
=
êê! "
string
êê# )
.
êê) *
IsNullOrEmpty
êê* 7
(
êê7 8
Ubicaci√≥nDdl
êê8 D
.
êêD E
SelectedValue
êêE R
)
êêR S
?
êêT U
(
êêV W
int
êêW Z
?
êêZ [
)
êê[ \
null
êê\ `
:
êêa b
int
êêc f
.
êêf g
Parse
êêg l
(
êêl m
Ubicaci√≥nDdl
êêm y
.
êêy z
SelectedValueêêz á
)êêá à
;êêà â
string
ëë 
jefe
ëë 
=
ëë 
JefeTxt
ëë %
.
ëë% &
Text
ëë& *
;
ëë* +
DateTime
íí 
fechaIngreso
íí %
=
íí& '
Convert
íí( /
.
íí/ 0

ToDateTime
íí0 :
(
íí: ;
FechaIngresoTxt
íí; J
.
ííJ K
Text
ííK O
)
ííO P
;
ííP Q
int
ìì 
?
ìì 
idTipoContrato
ìì #
=
ìì$ %
string
ìì& ,
.
ìì, -
IsNullOrEmpty
ìì- :
(
ìì: ;
ContratoDdl
ìì; F
.
ììF G
SelectedValue
ììG T
)
ììT U
?
ììV W
(
ììX Y
int
ììY \
?
ìì\ ]
)
ìì] ^
null
ìì^ b
:
ììc d
int
ììe h
.
ììh i
Parse
ììi n
(
ììn o
ContratoDdl
ììo z
.
ììz {
SelectedValueìì{ à
)ììà â
;ììâ ä
int
îî 
?
îî 
idRolUsuario
îî !
=
îî" #
string
îî$ *
.
îî* +
IsNullOrEmpty
îî+ 8
(
îî8 9
RolUsuarioDdl
îî9 F
.
îîF G
SelectedValue
îîG T
)
îîT U
?
îîV W
(
îîX Y
int
îîY \
?
îî\ ]
)
îî] ^
null
îî^ b
:
îîc d
int
îîe h
.
îîh i
Parse
îîi n
(
îîn o
RolUsuarioDdl
îîo |
.
îî| }
SelectedValueîî} ä
)îîä ã
;îîã å
string
ïï 
email
ïï 
=
ïï 
EmailTxt
ïï '
.
ïï' (
Text
ïï( ,
;
ïï, -
int
ññ 
?
ññ 
celular
ññ 
=
ññ 
string
ññ %
.
ññ% &
IsNullOrEmpty
ññ& 3
(
ññ3 4

CelularTxt
ññ4 >
.
ññ> ?
Text
ññ? C
)
ññC D
?
ññE F
(
ññG H
int
ññH K
?
ññK L
)
ññL M
null
ññM Q
:
ññR S
int
ññT W
.
ññW X
Parse
ññX ]
(
ññ] ^

CelularTxt
ññ^ h
.
ññh i
Text
ññi m
)
ññm n
;
ññn o
string
óó 
contrase√±a
óó !
=
óó" #
Contrase√±aTxt
óó$ 1
.
óó1 2
Text
óó2 6
;
óó6 7
Usuarios
ôô 
usuario
ôô  
=
ôô! "
db
ôô# %
.
ôô% &
Usuarios
ôô& .
.
ôô. /
SingleOrDefault
ôô/ >
(
ôô> ?
u
ôô? @
=>
ôôA C
u
ôôD E
.
ôôE F

rutUsuario
ôôF P
==
ôôQ S
rut
ôôT W
)
ôôW X
;
ôôX Y
if
öö 
(
öö 
usuario
öö 
!=
öö 
null
öö #
)
öö# $
{
õõ 
usuario
úú 
.
úú 
nombre
úú "
=
úú# $
nombre
úú% +
;
úú+ ,
usuario
ùù 
.
ùù 
apellido
ùù $
=
ùù% &
apellido
ùù' /
;
ùù/ 0
usuario
ûû 
.
ûû 
fechaNacimiento
ûû +
=
ûû, -
fechaNacimiento
ûû. =
;
ûû= >
usuario
üü 
.
üü 
cargo
üü !
=
üü" #
cargo
üü$ )
;
üü) *
usuario
†† 
.
†† 

idGerencia
†† &
=
††' (

idGerencia
††) 3
;
††3 4
usuario
°° 
.
°° 
idSubgerencia
°° )
=
°°* +
idSubgerencia
°°, 9
;
°°9 :
usuario
¢¢ 
.
¢¢ 
idDepartamento
¢¢ *
=
¢¢+ ,
idDepartamento
¢¢- ;
;
¢¢; <
usuario
££ 
.
££ 
idUbicacion
££ '
=
££( )
idUbicacion
££* 5
;
££5 6
usuario
§§ 
.
§§ 
jefe
§§  
=
§§! "
jefe
§§# '
;
§§' (
usuario
•• 
.
•• 
fechaIngreso
•• (
=
••) *
fechaIngreso
••+ 7
;
••7 8
usuario
¶¶ 
.
¶¶ 
idTipoContrato
¶¶ *
=
¶¶+ ,
idTipoContrato
¶¶- ;
;
¶¶; <
usuario
ßß 
.
ßß 
idRolUsuario
ßß (
=
ßß) *
idRolUsuario
ßß+ 7
;
ßß7 8
usuario
®® 
.
®® 
email
®® !
=
®®" #
email
®®$ )
;
®®) *
usuario
©© 
.
©© 
celular
©© #
=
©©$ %
celular
©©& -
;
©©- .
usuario
™™ 
.
™™ 
contrase√±a
™™ &
=
™™' (
contrase√±a
™™) 3
;
™™3 4
db
¨¨ 
.
¨¨ 
SaveChanges
¨¨ "
(
¨¨" #
)
¨¨# $
;
¨¨$ %
Response
ÆÆ 
.
ÆÆ 
Redirect
ÆÆ %
(
ÆÆ% &
$str
ÆÆ& X
)
ÆÆX Y
;
ÆÆY Z
}
ØØ 
else
∞∞ 
{
±± 
Response
≤≤ 
.
≤≤ 
Redirect
≤≤ %
(
≤≤% &
$str
≤≤& 2
)
≤≤2 3
;
≤≤3 4
}
≥≥ 
}
¥¥ 
}
µµ 	
	protected
∑∑ 
void
∑∑ .
 GerenciaDdl_SelectedIndexChanged
∑∑ 7
(
∑∑7 8
object
∑∑8 >
sender
∑∑? E
,
∑∑E F
	EventArgs
∑∑G P
e
∑∑Q R
)
∑∑R S
{
∏∏ 	
int
ππ 

gerenciaId
ππ 
;
ππ 
if
∫∫ 
(
∫∫ 
int
∫∫ 
.
∫∫ 
TryParse
∫∫ 
(
∫∫ 
GerenciaDdl
∫∫ (
.
∫∫( )
SelectedValue
∫∫) 6
,
∫∫6 7
out
∫∫8 ;

gerenciaId
∫∫< F
)
∫∫F G
)
∫∫G H
{
ªª  
CargarSubgerencias
ºº "
(
ºº" #

gerenciaId
ºº# -
)
ºº- .
;
ºº. /
}
ΩΩ 
else
ææ 
{
øø 
SubgerenciaDdl
¿¿ 
.
¿¿ 
Items
¿¿ $
.
¿¿$ %
Clear
¿¿% *
(
¿¿* +
)
¿¿+ ,
;
¿¿, -
SubgerenciaDdl
¡¡ 
.
¡¡ 
Items
¡¡ $
.
¡¡$ %
Insert
¡¡% +
(
¡¡+ ,
$num
¡¡, -
,
¡¡- .
new
¡¡/ 2
ListItem
¡¡3 ;
(
¡¡; <
$str
¡¡< S
,
¡¡S T
$str
¡¡U W
)
¡¡W X
)
¡¡X Y
;
¡¡Y Z
DepartamentoDdl
¬¬ 
.
¬¬  
Items
¬¬  %
.
¬¬% &
Clear
¬¬& +
(
¬¬+ ,
)
¬¬, -
;
¬¬- .
DepartamentoDdl
√√ 
.
√√  
Items
√√  %
.
√√% &
Insert
√√& ,
(
√√, -
$num
√√- .
,
√√. /
new
√√0 3
ListItem
√√4 <
(
√√< =
$str
√√= T
,
√√T U
$str
√√V X
)
√√X Y
)
√√Y Z
;
√√Z [
Ubicaci√≥nDdl
ƒƒ 
.
ƒƒ 
Items
ƒƒ "
.
ƒƒ" #
Clear
ƒƒ# (
(
ƒƒ( )
)
ƒƒ) *
;
ƒƒ* +
Ubicaci√≥nDdl
≈≈ 
.
≈≈ 
Items
≈≈ "
.
≈≈" #
Insert
≈≈# )
(
≈≈) *
$num
≈≈* +
,
≈≈+ ,
new
≈≈- 0
ListItem
≈≈1 9
(
≈≈9 :
$str
≈≈: O
,
≈≈O P
$str
≈≈Q S
)
≈≈S T
)
≈≈T U
;
≈≈U V
}
∆∆ 
}
«« 	
	protected
…… 
void
…… 1
#SubgerenciaDdl_SelectedIndexChanged
…… :
(
……: ;
object
……; A
sender
……B H
,
……H I
	EventArgs
……J S
e
……T U
)
……U V
{
   	
int
ÀÀ 
subgerenciaId
ÀÀ 
;
ÀÀ 
if
ÃÃ 
(
ÃÃ 
int
ÃÃ 
.
ÃÃ 
TryParse
ÃÃ 
(
ÃÃ 
SubgerenciaDdl
ÃÃ +
.
ÃÃ+ ,
SelectedValue
ÃÃ, 9
,
ÃÃ9 :
out
ÃÃ; >
subgerenciaId
ÃÃ? L
)
ÃÃL M
)
ÃÃM N
{
ÕÕ !
CargarDepartamentos
ŒŒ #
(
ŒŒ# $
subgerenciaId
ŒŒ$ 1
)
ŒŒ1 2
;
ŒŒ2 3
}
œœ 
else
–– 
{
—— 
DepartamentoDdl
““ 
.
““  
Items
““  %
.
““% &
Clear
““& +
(
““+ ,
)
““, -
;
““- .
DepartamentoDdl
”” 
.
””  
Items
””  %
.
””% &
Insert
””& ,
(
””, -
$num
””- .
,
””. /
new
””0 3
ListItem
””4 <
(
””< =
$str
””= T
,
””T U
$str
””V X
)
””X Y
)
””Y Z
;
””Z [
Ubicaci√≥nDdl
‘‘ 
.
‘‘ 
Items
‘‘ "
.
‘‘" #
Clear
‘‘# (
(
‘‘( )
)
‘‘) *
;
‘‘* +
Ubicaci√≥nDdl
’’ 
.
’’ 
Items
’’ "
.
’’" #
Insert
’’# )
(
’’) *
$num
’’* +
,
’’+ ,
new
’’- 0
ListItem
’’1 9
(
’’9 :
$str
’’: O
,
’’O P
$str
’’Q S
)
’’S T
)
’’T U
;
’’U V
}
÷÷ 
}
◊◊ 	
	protected
ŸŸ 
void
ŸŸ 2
$DepartamentoDdl_SelectedIndexChanged
ŸŸ ;
(
ŸŸ; <
object
ŸŸ< B
sender
ŸŸC I
,
ŸŸI J
	EventArgs
ŸŸK T
e
ŸŸU V
)
ŸŸV W
{
⁄⁄ 	
int
€€ 
departamentoId
€€ 
;
€€ 
if
‹‹ 
(
‹‹ 
int
‹‹ 
.
‹‹ 
TryParse
‹‹ 
(
‹‹ 
DepartamentoDdl
‹‹ ,
.
‹‹, -
SelectedValue
‹‹- :
,
‹‹: ;
out
‹‹< ?
departamentoId
‹‹@ N
)
‹‹N O
)
‹‹O P
{
›› 
CargarUbicaciones
ﬁﬁ !
(
ﬁﬁ! "
departamentoId
ﬁﬁ" 0
)
ﬁﬁ0 1
;
ﬁﬁ1 2
}
ﬂﬂ 
else
‡‡ 
{
·· 
Ubicaci√≥nDdl
‚‚ 
.
‚‚ 
Items
‚‚ "
.
‚‚" #
Clear
‚‚# (
(
‚‚( )
)
‚‚) *
;
‚‚* +
Ubicaci√≥nDdl
„„ 
.
„„ 
Items
„„ "
.
„„" #
Insert
„„# )
(
„„) *
$num
„„* +
,
„„+ ,
new
„„- 0
ListItem
„„1 9
(
„„9 :
$str
„„: O
,
„„O P
$str
„„Q S
)
„„S T
)
„„T U
;
„„U V
}
‰‰ 
}
ÂÂ 	
	protected
ÁÁ 
void
ÁÁ "
RutCV_ServerValidate
ÁÁ +
(
ÁÁ+ ,
object
ÁÁ, 2
source
ÁÁ3 9
,
ÁÁ9 :%
ServerValidateEventArgs
ÁÁ; R
args
ÁÁS W
)
ÁÁW X
{
ËË 	
	Validador
ÍÍ 
	objValida
ÍÍ 
=
ÍÍ  !
new
ÍÍ" %
	Validador
ÍÍ& /
(
ÍÍ/ 0
)
ÍÍ0 1
;
ÍÍ1 2
	objValida
ÌÌ 
.
ÌÌ 
ValidaVacio
ÌÌ !
(
ÌÌ! "
RutTxt
ÌÌ" (
.
ÌÌ( )
Text
ÌÌ) -
.
ÌÌ- .
Trim
ÌÌ. 2
(
ÌÌ2 3
)
ÌÌ3 4
)
ÌÌ4 5
;
ÌÌ5 6
	objValida
ÓÓ 
.
ÓÓ %
ValidaNumDigVerificador
ÓÓ -
(
ÓÓ- .
RutTxt
ÓÓ. 4
.
ÓÓ4 5
Text
ÓÓ5 9
.
ÓÓ9 :
Trim
ÓÓ: >
(
ÓÓ> ?
)
ÓÓ? @
)
ÓÓ@ A
;
ÓÓA B
	objValida
ÔÔ 
.
ÔÔ 
ValidaDigito
ÔÔ "
(
ÔÔ" #
RutTxt
ÔÔ# )
.
ÔÔ) *
Text
ÔÔ* .
.
ÔÔ. /
Trim
ÔÔ/ 3
(
ÔÔ3 4
)
ÔÔ4 5
)
ÔÔ5 6
;
ÔÔ6 7
if
ÚÚ 
(
ÚÚ 
	objValida
ÚÚ 
.
ÚÚ 
xEstado
ÚÚ !
!=
ÚÚ" $
$str
ÚÚ% /
)
ÚÚ/ 0
{
ÛÛ 
RutCV
ÙÙ 
.
ÙÙ 
ErrorMessage
ÙÙ "
=
ÙÙ# $
$str
ÙÙ% 6
;
ÙÙ6 7
args
ıı 
.
ıı 
IsValid
ıı 
=
ıı 
false
ıı $
;
ıı$ %
}
ˆˆ 
}
˜˜ 	
}
¯¯ 
}˘˘ ˛‘
DD:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\EditarPromocion.aspx.cs
	namespace·· 	
IntranetWeb
··
 
{‚‚ 
public
„„ 

partial
„„ 
class
„„ 
EditarPromocion
„„ (
:
„„) *
System
„„+ 1
.
„„1 2
Web
„„2 5
.
„„5 6
UI
„„6 8
.
„„8 9
Page
„„9 =
{
‰‰ 
private
ÂÂ 
IntranetEntities
ÂÂ  
db
ÂÂ! #
=
ÂÂ$ %
new
ÂÂ& )
IntranetEntities
ÂÂ* :
(
ÂÂ: ;
)
ÂÂ; <
;
ÂÂ< =
private
ÊÊ 
string
ÊÊ 
rutUsuarioEditar
ÊÊ '
;
ÊÊ' (
	protected
ËË 
void
ËË 
	Page_Load
ËË  
(
ËË  !
object
ËË! '
sender
ËË( .
,
ËË. /
	EventArgs
ËË0 9
e
ËË: ;
)
ËË; <
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 

IsPostBack
ÍÍ 
)
ÍÍ 
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
string
ÏÏ 
.
ÏÏ 
IsNullOrEmpty
ÏÏ )
(
ÏÏ) *
Request
ÏÏ* 1
.
ÏÏ1 2
QueryString
ÏÏ2 =
[
ÏÏ= >
$str
ÏÏ> C
]
ÏÏC D
)
ÏÏD E
)
ÏÏE F
{
ÌÌ 
rutUsuarioEditar
ÓÓ $
=
ÓÓ% &
Request
ÓÓ' .
.
ÓÓ. /
QueryString
ÓÓ/ :
[
ÓÓ: ;
$str
ÓÓ; @
]
ÓÓ@ A
;
ÓÓA B
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
string
ÔÔ 
.
ÔÔ  
IsNullOrEmpty
ÔÔ  -
(
ÔÔ- .
rutUsuarioEditar
ÔÔ. >
)
ÔÔ> ?
)
ÔÔ? @
{
  
CargarDatosUsuario
ÒÒ *
(
ÒÒ* +
rutUsuarioEditar
ÒÒ+ ;
)
ÒÒ; <
;
ÒÒ< =
}
ÚÚ 
else
ÛÛ 
{
ÙÙ 
Response
ıı  
.
ıı  !
Redirect
ıı! )
(
ıı) *
$str
ıı* Z
)
ııZ [
;
ıı[ \
}
ˆˆ 
}
˜˜ 
else
¯¯ 
{
˘˘ 
Response
˙˙ 
.
˙˙ 
Redirect
˙˙ %
(
˙˙% &
$str
˙˙& V
)
˙˙V W
;
˙˙W X
}
˚˚ 
CargarDatos
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝ 
}
˛˛ 
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
CargarDatos
ÅÅ  
(
ÅÅ  !
)
ÅÅ! "
{
ÇÇ 	
try
ÉÉ 
{
ÑÑ 
var
ÜÜ 
	gerencias
ÜÜ 
=
ÜÜ 
db
ÜÜ  "
.
ÜÜ" #
	Gerencias
ÜÜ# ,
.
ÜÜ, -
ToList
ÜÜ- 3
(
ÜÜ3 4
)
ÜÜ4 5
;
ÜÜ5 6
GerenciaDdl
áá 
.
áá 

DataSource
áá &
=
áá' (
	gerencias
áá) 2
;
áá2 3
GerenciaDdl
àà 
.
àà 
DataTextField
àà )
=
àà* +
$str
àà, 4
;
àà4 5
GerenciaDdl
ââ 
.
ââ 
DataValueField
ââ *
=
ââ+ ,
$str
ââ- 1
;
ââ1 2
GerenciaDdl
ää 
.
ää 
DataBind
ää $
(
ää$ %
)
ää% &
;
ää& '
GerenciaDdl
ãã 
.
ãã 
Items
ãã !
.
ãã! "
Insert
ãã" (
(
ãã( )
$num
ãã) *
,
ãã* +
new
ãã, /
ListItem
ãã0 8
(
ãã8 9
$str
ãã9 M
,
ããM N
$str
ããO Q
)
ããQ R
)
ããR S
;
ããS T
}
åå 
catch
çç 
(
çç 
	Exception
çç 
ex
çç 
)
çç  
{
éé 
Response
èè 
.
èè 
Redirect
èè !
(
èè! "
$"
èè" $
$str
èè$ S
{
èèS T
ex
èèT V
.
èèV W
Message
èèW ^
}
èè^ _
"
èè_ `
)
èè` a
;
èèa b
}
êê 
try
íí 
{
ìì  
CargarSubgerencias
ïï "
(
ïï" #
)
ïï# $
;
ïï$ %!
CargarDepartamentos
ññ #
(
ññ# $
)
ññ$ %
;
ññ% &
CargarUbicaciones
óó !
(
óó! "
)
óó" #
;
óó# $
}
òò 
catch
ôô 
(
ôô 
	Exception
ôô 
ex
ôô 
)
ôô  
{
öö 
Response
õõ 
.
õõ 
Redirect
õõ !
(
õõ! "
$"
õõ" $
$str
õõ$ Y
{
õõY Z
ex
õõZ \
.
õõ\ ]
Message
õõ] d
}
õõd e
"
õõe f
)
õõf g
;
õõg h
}
úú 
}
ùù 	
private
üü 
void
üü  
CargarSubgerencias
üü '
(
üü' (
int
üü( +
?
üü+ ,

gerenciaId
üü- 7
=
üü8 9
null
üü: >
)
üü> ?
{
†† 	
try
°° 
{
¢¢ 
var
££ 
subgerencias
££  
=
££! "

gerenciaId
££# -
.
££- .
HasValue
££. 6
?
§§ 
db
§§ 
.
§§ 
Subgerencias
§§ %
.
§§% &
Where
§§& +
(
§§+ ,
s
§§, -
=>
§§. 0
s
§§1 2
.
§§2 3

idGerencia
§§3 =
==
§§> @

gerenciaId
§§A K
)
§§K L
.
§§L M
ToList
§§M S
(
§§S T
)
§§T U
:
•• 
db
•• 
.
•• 
Subgerencias
•• %
.
••% &
ToList
••& ,
(
••, -
)
••- .
;
••. /
SubgerenciaDdl
¶¶ 
.
¶¶ 

DataSource
¶¶ )
=
¶¶* +
subgerencias
¶¶, 8
;
¶¶8 9
SubgerenciaDdl
ßß 
.
ßß 
DataTextField
ßß ,
=
ßß- .
$str
ßß/ 7
;
ßß7 8
SubgerenciaDdl
®® 
.
®® 
DataValueField
®® -
=
®®. /
$str
®®0 4
;
®®4 5
SubgerenciaDdl
©© 
.
©© 
DataBind
©© '
(
©©' (
)
©©( )
;
©©) *
SubgerenciaDdl
™™ 
.
™™ 
Items
™™ $
.
™™$ %
Insert
™™% +
(
™™+ ,
$num
™™, -
,
™™- .
new
™™/ 2
ListItem
™™3 ;
(
™™; <
$str
™™< S
,
™™S T
$str
™™U W
)
™™W X
)
™™X Y
;
™™Y Z
}
´´ 
catch
¨¨ 
(
¨¨ 
	Exception
¨¨ 
ex
¨¨ 
)
¨¨  
{
≠≠ 
Response
ÆÆ 
.
ÆÆ 
Redirect
ÆÆ !
(
ÆÆ! "
$"
ÆÆ" $
$str
ÆÆ$ V
{
ÆÆV W
ex
ÆÆW Y
.
ÆÆY Z
Message
ÆÆZ a
}
ÆÆa b
"
ÆÆb c
)
ÆÆc d
;
ÆÆd e
}
ØØ 
}
∞∞ 	
private
≤≤ 
void
≤≤ !
CargarDepartamentos
≤≤ (
(
≤≤( )
int
≤≤) ,
?
≤≤, -
subgerenciaId
≤≤. ;
=
≤≤< =
null
≤≤> B
)
≤≤B C
{
≥≥ 	
try
¥¥ 
{
µµ 
var
∂∂ 
departamentos
∂∂ !
=
∂∂" #
subgerenciaId
∂∂$ 1
.
∂∂1 2
HasValue
∂∂2 :
?
∑∑ 
db
∑∑ 
.
∑∑ 
Departamentos
∑∑ &
.
∑∑& '
Where
∑∑' ,
(
∑∑, -
d
∑∑- .
=>
∑∑/ 1
d
∑∑2 3
.
∑∑3 4
idSubgerencia
∑∑4 A
==
∑∑B D
subgerenciaId
∑∑E R
)
∑∑R S
.
∑∑S T
ToList
∑∑T Z
(
∑∑Z [
)
∑∑[ \
:
∏∏ 
db
∏∏ 
.
∏∏ 
Departamentos
∏∏ &
.
∏∏& '
ToList
∏∏' -
(
∏∏- .
)
∏∏. /
;
∏∏/ 0
DepartamentoDdl
ππ 
.
ππ  

DataSource
ππ  *
=
ππ+ ,
departamentos
ππ- :
;
ππ: ;
DepartamentoDdl
∫∫ 
.
∫∫  
DataTextField
∫∫  -
=
∫∫. /
$str
∫∫0 8
;
∫∫8 9
DepartamentoDdl
ªª 
.
ªª  
DataValueField
ªª  .
=
ªª/ 0
$str
ªª1 5
;
ªª5 6
DepartamentoDdl
ºº 
.
ºº  
DataBind
ºº  (
(
ºº( )
)
ºº) *
;
ºº* +
DepartamentoDdl
ΩΩ 
.
ΩΩ  
Items
ΩΩ  %
.
ΩΩ% &
Insert
ΩΩ& ,
(
ΩΩ, -
$num
ΩΩ- .
,
ΩΩ. /
new
ΩΩ0 3
ListItem
ΩΩ4 <
(
ΩΩ< =
$str
ΩΩ= T
,
ΩΩT U
$str
ΩΩV X
)
ΩΩX Y
)
ΩΩY Z
;
ΩΩZ [
}
ææ 
catch
øø 
(
øø 
	Exception
øø 
ex
øø 
)
øø  
{
¿¿ 
Response
¡¡ 
.
¡¡ 
Redirect
¡¡ !
(
¡¡! "
$"
¡¡" $
$str
¡¡$ W
{
¡¡W X
ex
¡¡X Z
.
¡¡Z [
Message
¡¡[ b
}
¡¡b c
"
¡¡c d
)
¡¡d e
;
¡¡e f
}
¬¬ 
}
√√ 	
private
≈≈ 
void
≈≈ 
CargarUbicaciones
≈≈ &
(
≈≈& '
int
≈≈' *
?
≈≈* +
departamentoId
≈≈, :
=
≈≈; <
null
≈≈= A
)
≈≈A B
{
∆∆ 	
try
«« 
{
»» 
var
…… 
ubicaciones
…… 
=
……  !
departamentoId
……" 0
.
……0 1
HasValue
……1 9
?
   
db
   
.
   
Ubicaciones
   $
.
  $ %
Where
  % *
(
  * +
u
  + ,
=>
  - /
u
  0 1
.
  1 2
idDepartamento
  2 @
==
  A C
departamentoId
  D R
)
  R S
.
  S T
ToList
  T Z
(
  Z [
)
  [ \
:
ÀÀ 
db
ÀÀ 
.
ÀÀ 
Ubicaciones
ÀÀ $
.
ÀÀ$ %
ToList
ÀÀ% +
(
ÀÀ+ ,
)
ÀÀ, -
;
ÀÀ- .
UbicacionDdl
ÃÃ 
.
ÃÃ 

DataSource
ÃÃ '
=
ÃÃ( )
ubicaciones
ÃÃ* 5
;
ÃÃ5 6
UbicacionDdl
ÕÕ 
.
ÕÕ 
DataTextField
ÕÕ *
=
ÕÕ+ ,
$str
ÕÕ- 5
;
ÕÕ5 6
UbicacionDdl
ŒŒ 
.
ŒŒ 
DataValueField
ŒŒ +
=
ŒŒ, -
$str
ŒŒ. 2
;
ŒŒ2 3
UbicacionDdl
œœ 
.
œœ 
DataBind
œœ %
(
œœ% &
)
œœ& '
;
œœ' (
UbicacionDdl
–– 
.
–– 
Items
–– "
.
––" #
Insert
––# )
(
––) *
$num
––* +
,
––+ ,
new
––- 0
ListItem
––1 9
(
––9 :
$str
––: O
,
––O P
$str
––Q S
)
––S T
)
––T U
;
––U V
}
—— 
catch
““ 
(
““ 
	Exception
““ 
ex
““ 
)
““  
{
”” 
Response
‘‘ 
.
‘‘ 
Redirect
‘‘ !
(
‘‘! "
$"
‘‘" $
$str
‘‘$ U
{
‘‘U V
ex
‘‘V X
.
‘‘X Y
Message
‘‘Y `
}
‘‘` a
"
‘‘a b
)
‘‘b c
;
‘‘c d
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ  
CargarDatosUsuario
ÿÿ '
(
ÿÿ' (
string
ÿÿ( .
rut
ÿÿ/ 2
)
ÿÿ2 3
{
ŸŸ 	
try
⁄⁄ 
{
€€ 
Response
›› 
.
›› 
Write
›› 
(
›› 
$"
›› !
$str
››! /
{
››/ 0
rut
››0 3
}
››3 4
$str
››4 9
"
››9 :
)
››: ;
;
››; <
Usuarios
ﬂﬂ 
usuario
ﬂﬂ  
=
ﬂﬂ! "
db
ﬂﬂ# %
.
ﬂﬂ% &
Usuarios
ﬂﬂ& .
.
ﬂﬂ. /
SingleOrDefault
ﬂﬂ/ >
(
ﬂﬂ> ?
u
ﬂﬂ? @
=>
ﬂﬂA C
u
ﬂﬂD E
.
ﬂﬂE F

rutUsuario
ﬂﬂF P
==
ﬂﬂQ S
rut
ﬂﬂT W
)
ﬂﬂW X
;
ﬂﬂX Y
if
·· 
(
·· 
usuario
·· 
!=
·· 
null
·· #
)
··# $
{
‚‚ 
Response
„„ 
.
„„ 
Write
„„ "
(
„„" #
$"
„„# %
$str
„„% 9
{
„„9 :
usuario
„„: A
.
„„A B
nombre
„„B H
}
„„H I
$str
„„I J
{
„„J K
usuario
„„K R
.
„„R S
apellido
„„S [
}
„„[ \
$str
„„\ a
"
„„a b
)
„„b c
;
„„c d
	NombreTxt
ÂÂ 
.
ÂÂ 
Text
ÂÂ "
=
ÂÂ# $
usuario
ÂÂ% ,
.
ÂÂ, -
nombre
ÂÂ- 3
;
ÂÂ3 4
ApellidoTxt
ÊÊ 
.
ÊÊ  
Text
ÊÊ  $
=
ÊÊ% &
usuario
ÊÊ' .
.
ÊÊ. /
apellido
ÊÊ/ 7
;
ÊÊ7 8
CargoTxt
ÁÁ 
.
ÁÁ 
Text
ÁÁ !
=
ÁÁ" #
usuario
ÁÁ$ +
.
ÁÁ+ ,
cargo
ÁÁ, 1
;
ÁÁ1 2
GerenciaDdl
ËË 
.
ËË  
SelectedValue
ËË  -
=
ËË. /
usuario
ËË0 7
.
ËË7 8

idGerencia
ËË8 B
.
ËËB C
HasValue
ËËC K
?
ËËL M
usuario
ËËN U
.
ËËU V

idGerencia
ËËV `
.
ËË` a
Value
ËËa f
.
ËËf g
ToString
ËËg o
(
ËËo p
)
ËËp q
:
ËËr s
$str
ËËt v
;
ËËv w 
CargarSubgerencias
ÈÈ &
(
ÈÈ& '
usuario
ÈÈ' .
.
ÈÈ. /

idGerencia
ÈÈ/ 9
)
ÈÈ9 :
;
ÈÈ: ;
SubgerenciaDdl
ÍÍ "
.
ÍÍ" #
SelectedValue
ÍÍ# 0
=
ÍÍ1 2
usuario
ÍÍ3 :
.
ÍÍ: ;
idSubgerencia
ÍÍ; H
.
ÍÍH I
HasValue
ÍÍI Q
?
ÍÍR S
usuario
ÍÍT [
.
ÍÍ[ \
idSubgerencia
ÍÍ\ i
.
ÍÍi j
Value
ÍÍj o
.
ÍÍo p
ToString
ÍÍp x
(
ÍÍx y
)
ÍÍy z
:
ÍÍ{ |
$str
ÍÍ} 
;ÍÍ Ä!
CargarDepartamentos
ÎÎ '
(
ÎÎ' (
usuario
ÎÎ( /
.
ÎÎ/ 0
idSubgerencia
ÎÎ0 =
)
ÎÎ= >
;
ÎÎ> ?
DepartamentoDdl
ÏÏ #
.
ÏÏ# $
SelectedValue
ÏÏ$ 1
=
ÏÏ2 3
usuario
ÏÏ4 ;
.
ÏÏ; <
idDepartamento
ÏÏ< J
.
ÏÏJ K
HasValue
ÏÏK S
?
ÏÏT U
usuario
ÏÏV ]
.
ÏÏ] ^
idDepartamento
ÏÏ^ l
.
ÏÏl m
Value
ÏÏm r
.
ÏÏr s
ToString
ÏÏs {
(
ÏÏ{ |
)
ÏÏ| }
:
ÏÏ~ 
$strÏÏÄ Ç
;ÏÏÇ É
CargarUbicaciones
ÌÌ %
(
ÌÌ% &
usuario
ÌÌ& -
.
ÌÌ- .
idDepartamento
ÌÌ. <
)
ÌÌ< =
;
ÌÌ= >
UbicacionDdl
ÓÓ  
.
ÓÓ  !
SelectedValue
ÓÓ! .
=
ÓÓ/ 0
usuario
ÓÓ1 8
.
ÓÓ8 9
idUbicacion
ÓÓ9 D
.
ÓÓD E
HasValue
ÓÓE M
?
ÓÓN O
usuario
ÓÓP W
.
ÓÓW X
idUbicacion
ÓÓX c
.
ÓÓc d
Value
ÓÓd i
.
ÓÓi j
ToString
ÓÓj r
(
ÓÓr s
)
ÓÓs t
:
ÓÓu v
$str
ÓÓw y
;
ÓÓy z
JefeTxt
ÔÔ 
.
ÔÔ 
Text
ÔÔ  
=
ÔÔ! "
usuario
ÔÔ# *
.
ÔÔ* +
jefe
ÔÔ+ /
;
ÔÔ/ 0
}
 
else
ÒÒ 
{
ÚÚ 
Response
ÛÛ 
.
ÛÛ 
Redirect
ÛÛ %
(
ÛÛ% &
$str
ÛÛ& R
)
ÛÛR S
;
ÛÛS T
}
ÙÙ 
}
ıı 
catch
ˆˆ 
(
ˆˆ 
	Exception
ˆˆ 
ex
ˆˆ 
)
ˆˆ  
{
˜˜ 
Response
¯¯ 
.
¯¯ 
Redirect
¯¯ !
(
¯¯! "
$"
¯¯" $
$str
¯¯$ [
{
¯¯[ \
ex
¯¯\ ^
.
¯¯^ _
Message
¯¯_ f
}
¯¯f g
"
¯¯g h
)
¯¯h i
;
¯¯i j
}
˘˘ 
}
˙˙ 	
	protected
˝˝ 
void
˝˝ '
GuardarPromocionBtn_Click
˝˝ 0
(
˝˝0 1
object
˝˝1 7
sender
˝˝8 >
,
˝˝> ?
	EventArgs
˝˝@ I
e
˝˝J K
)
˝˝K L
{
˛˛ 	
if
ˇˇ 
(
ˇˇ 
Page
ˇˇ 
.
ˇˇ 
IsValid
ˇˇ 
)
ˇˇ 
{
ÄÄ 
bool
ÅÅ 
success
ÅÅ 
=
ÅÅ 
false
ÅÅ $
;
ÅÅ$ %
string
ÇÇ 
redirectUrl
ÇÇ "
=
ÇÇ# $
string
ÇÇ% +
.
ÇÇ+ ,
Empty
ÇÇ, 1
;
ÇÇ1 2
try
ÑÑ 
{
ÖÖ 
string
áá 
cargo
áá  
=
áá! "
CargoTxt
áá# +
.
áá+ ,
Text
áá, 0
;
áá0 1
int
àà 

idGerencia
àà "
=
àà# $
int
àà% (
.
àà( )
Parse
àà) .
(
àà. /
GerenciaDdl
àà/ :
.
àà: ;
SelectedValue
àà; H
)
ààH I
;
ààI J
int
ââ 
idSubgerencia
ââ %
=
ââ& '
int
ââ( +
.
ââ+ ,
Parse
ââ, 1
(
ââ1 2
SubgerenciaDdl
ââ2 @
.
ââ@ A
SelectedValue
ââA N
)
ââN O
;
ââO P
int
ää 
idDepartamento
ää &
=
ää' (
int
ää) ,
.
ää, -
Parse
ää- 2
(
ää2 3
DepartamentoDdl
ää3 B
.
ääB C
SelectedValue
ääC P
)
ääP Q
;
ääQ R
int
ãã 
idUbicacion
ãã #
=
ãã$ %
int
ãã& )
.
ãã) *
Parse
ãã* /
(
ãã/ 0
UbicacionDdl
ãã0 <
.
ãã< =
SelectedValue
ãã= J
)
ããJ K
;
ããK L
string
åå 
jefe
åå 
=
åå  !
JefeTxt
åå" )
.
åå) *
Text
åå* .
;
åå. /
DateTime
çç 
fechaPromocion
çç +
=
çç, -
Convert
çç. 5
.
çç5 6

ToDateTime
çç6 @
(
çç@ A
FechaPromocionTxt
ççA R
.
ççR S
Text
ççS W
)
ççW X
;
ççX Y
Usuarios
êê 
usuario
êê $
=
êê% &
db
êê' )
.
êê) *
Usuarios
êê* 2
.
êê2 3
SingleOrDefault
êê3 B
(
êêB C
u
êêC D
=>
êêE G
u
êêH I
.
êêI J

rutUsuario
êêJ T
==
êêU W
rutUsuarioEditar
êêX h
)
êêh i
;
êêi j
if
ëë 
(
ëë 
usuario
ëë 
!=
ëë  "
null
ëë# '
)
ëë' (
{
íí 
usuario
îî 
.
îî  
cargo
îî  %
=
îî& '
cargo
îî( -
;
îî- .
usuario
ïï 
.
ïï  

idGerencia
ïï  *
=
ïï+ ,

idGerencia
ïï- 7
;
ïï7 8
usuario
ññ 
.
ññ  
idSubgerencia
ññ  -
=
ññ. /
idSubgerencia
ññ0 =
;
ññ= >
usuario
óó 
.
óó  
idDepartamento
óó  .
=
óó/ 0
idDepartamento
óó1 ?
;
óó? @
usuario
òò 
.
òò  
idUbicacion
òò  +
=
òò, -
idUbicacion
òò. 9
;
òò9 :
usuario
ôô 
.
ôô  
jefe
ôô  $
=
ôô% &
jefe
ôô' +
;
ôô+ ,
Promociones
úú #
nuevaPromocion
úú$ 2
=
úú3 4
new
úú5 8
Promociones
úú9 D
{
ùù 

RutUsuario
ûû &
=
ûû' (
usuario
ûû) 0
.
ûû0 1

rutUsuario
ûû1 ;
,
ûû; <
FechaPromocion
üü *
=
üü+ ,
fechaPromocion
üü- ;
}
†† 
;
†† 
db
°° 
.
°° 
Promociones
°° &
.
°°& '
Add
°°' *
(
°°* +
nuevaPromocion
°°+ 9
)
°°9 :
;
°°: ;
db
§§ 
.
§§ 
SaveChanges
§§ &
(
§§& '
)
§§' (
;
§§( )
success
¶¶ 
=
¶¶  !
true
¶¶" &
;
¶¶& '
redirectUrl
ßß #
=
ßß$ %
$str
ßß& e
;
ßße f
}
®® 
else
©© 
{
™™ 
redirectUrl
¨¨ #
=
¨¨$ %
$str
¨¨& R
;
¨¨R S
}
≠≠ 
}
ÆÆ 
catch
ØØ 
(
ØØ 
	Exception
ØØ  
ex
ØØ! #
)
ØØ# $
{
∞∞ 
redirectUrl
≥≥ 
=
≥≥  !
$"
≥≥" $
$str
≥≥$ _
{
≥≥_ `
ex
≥≥` b
.
≥≥b c
Message
≥≥c j
}
≥≥j k
"
≥≥k l
;
≥≥l m
}
¥¥ 
if
∂∂ 
(
∂∂ 
success
∂∂ 
)
∂∂ 
{
∑∑ 
Response
∏∏ 
.
∏∏ 
Redirect
∏∏ %
(
∏∏% &
redirectUrl
∏∏& 1
,
∏∏1 2
false
∏∏3 8
)
∏∏8 9
;
∏∏9 :
Context
ππ 
.
ππ !
ApplicationInstance
ππ /
.
ππ/ 0
CompleteRequest
ππ0 ?
(
ππ? @
)
ππ@ A
;
ππA B
}
∫∫ 
else
ªª 
{
ºº 
Response
ΩΩ 
.
ΩΩ 
Redirect
ΩΩ %
(
ΩΩ% &
redirectUrl
ΩΩ& 1
,
ΩΩ1 2
false
ΩΩ3 8
)
ΩΩ8 9
;
ΩΩ9 :
Context
ææ 
.
ææ !
ApplicationInstance
ææ /
.
ææ/ 0
CompleteRequest
ææ0 ?
(
ææ? @
)
ææ@ A
;
ææA B
}
øø 
}
¿¿ 
}
¡¡ 	
	protected
√√ 
void
√√ .
 GerenciaDdl_SelectedIndexChanged
√√ 7
(
√√7 8
object
√√8 >
sender
√√? E
,
√√E F
	EventArgs
√√G P
e
√√Q R
)
√√R S
{
ƒƒ 	
int
≈≈ 

gerenciaId
≈≈ 
;
≈≈ 
if
∆∆ 
(
∆∆ 
int
∆∆ 
.
∆∆ 
TryParse
∆∆ 
(
∆∆ 
GerenciaDdl
∆∆ (
.
∆∆( )
SelectedValue
∆∆) 6
,
∆∆6 7
out
∆∆8 ;

gerenciaId
∆∆< F
)
∆∆F G
)
∆∆G H
{
««  
CargarSubgerencias
»» "
(
»»" #

gerenciaId
»»# -
)
»»- .
;
»». /
}
…… 
else
   
{
ÀÀ 
SubgerenciaDdl
ÃÃ 
.
ÃÃ 
Items
ÃÃ $
.
ÃÃ$ %
Clear
ÃÃ% *
(
ÃÃ* +
)
ÃÃ+ ,
;
ÃÃ, -
SubgerenciaDdl
ÕÕ 
.
ÕÕ 
Items
ÕÕ $
.
ÕÕ$ %
Insert
ÕÕ% +
(
ÕÕ+ ,
$num
ÕÕ, -
,
ÕÕ- .
new
ÕÕ/ 2
ListItem
ÕÕ3 ;
(
ÕÕ; <
$str
ÕÕ< S
,
ÕÕS T
$str
ÕÕU W
)
ÕÕW X
)
ÕÕX Y
;
ÕÕY Z
DepartamentoDdl
ŒŒ 
.
ŒŒ  
Items
ŒŒ  %
.
ŒŒ% &
Clear
ŒŒ& +
(
ŒŒ+ ,
)
ŒŒ, -
;
ŒŒ- .
DepartamentoDdl
œœ 
.
œœ  
Items
œœ  %
.
œœ% &
Insert
œœ& ,
(
œœ, -
$num
œœ- .
,
œœ. /
new
œœ0 3
ListItem
œœ4 <
(
œœ< =
$str
œœ= T
,
œœT U
$str
œœV X
)
œœX Y
)
œœY Z
;
œœZ [
UbicacionDdl
–– 
.
–– 
Items
–– "
.
––" #
Clear
––# (
(
––( )
)
––) *
;
––* +
UbicacionDdl
—— 
.
—— 
Items
—— "
.
——" #
Insert
——# )
(
——) *
$num
——* +
,
——+ ,
new
——- 0
ListItem
——1 9
(
——9 :
$str
——: O
,
——O P
$str
——Q S
)
——S T
)
——T U
;
——U V
}
““ 
}
”” 	
	protected
’’ 
void
’’ 1
#SubgerenciaDdl_SelectedIndexChanged
’’ :
(
’’: ;
object
’’; A
sender
’’B H
,
’’H I
	EventArgs
’’J S
e
’’T U
)
’’U V
{
÷÷ 	
int
◊◊ 
subgerenciaId
◊◊ 
;
◊◊ 
if
ÿÿ 
(
ÿÿ 
int
ÿÿ 
.
ÿÿ 
TryParse
ÿÿ 
(
ÿÿ 
SubgerenciaDdl
ÿÿ +
.
ÿÿ+ ,
SelectedValue
ÿÿ, 9
,
ÿÿ9 :
out
ÿÿ; >
subgerenciaId
ÿÿ? L
)
ÿÿL M
)
ÿÿM N
{
ŸŸ !
CargarDepartamentos
⁄⁄ #
(
⁄⁄# $
subgerenciaId
⁄⁄$ 1
)
⁄⁄1 2
;
⁄⁄2 3
}
€€ 
else
‹‹ 
{
›› 
DepartamentoDdl
ﬁﬁ 
.
ﬁﬁ  
Items
ﬁﬁ  %
.
ﬁﬁ% &
Clear
ﬁﬁ& +
(
ﬁﬁ+ ,
)
ﬁﬁ, -
;
ﬁﬁ- .
DepartamentoDdl
ﬂﬂ 
.
ﬂﬂ  
Items
ﬂﬂ  %
.
ﬂﬂ% &
Insert
ﬂﬂ& ,
(
ﬂﬂ, -
$num
ﬂﬂ- .
,
ﬂﬂ. /
new
ﬂﬂ0 3
ListItem
ﬂﬂ4 <
(
ﬂﬂ< =
$str
ﬂﬂ= T
,
ﬂﬂT U
$str
ﬂﬂV X
)
ﬂﬂX Y
)
ﬂﬂY Z
;
ﬂﬂZ [
UbicacionDdl
‡‡ 
.
‡‡ 
Items
‡‡ "
.
‡‡" #
Clear
‡‡# (
(
‡‡( )
)
‡‡) *
;
‡‡* +
UbicacionDdl
·· 
.
·· 
Items
·· "
.
··" #
Insert
··# )
(
··) *
$num
··* +
,
··+ ,
new
··- 0
ListItem
··1 9
(
··9 :
$str
··: O
,
··O P
$str
··Q S
)
··S T
)
··T U
;
··U V
}
‚‚ 
}
„„ 	
	protected
ÂÂ 
void
ÂÂ 2
$DepartamentoDdl_SelectedIndexChanged
ÂÂ ;
(
ÂÂ; <
object
ÂÂ< B
sender
ÂÂC I
,
ÂÂI J
	EventArgs
ÂÂK T
e
ÂÂU V
)
ÂÂV W
{
ÊÊ 	
int
ÁÁ 
departamentoId
ÁÁ 
;
ÁÁ 
if
ËË 
(
ËË 
int
ËË 
.
ËË 
TryParse
ËË 
(
ËË 
DepartamentoDdl
ËË ,
.
ËË, -
SelectedValue
ËË- :
,
ËË: ;
out
ËË< ?
departamentoId
ËË@ N
)
ËËN O
)
ËËO P
{
ÈÈ 
CargarUbicaciones
ÍÍ !
(
ÍÍ! "
departamentoId
ÍÍ" 0
)
ÍÍ0 1
;
ÍÍ1 2
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 
UbicacionDdl
ÓÓ 
.
ÓÓ 
Items
ÓÓ "
.
ÓÓ" #
Clear
ÓÓ# (
(
ÓÓ( )
)
ÓÓ) *
;
ÓÓ* +
UbicacionDdl
ÔÔ 
.
ÔÔ 
Items
ÔÔ "
.
ÔÔ" #
Insert
ÔÔ# )
(
ÔÔ) *
$num
ÔÔ* +
,
ÔÔ+ ,
new
ÔÔ- 0
ListItem
ÔÔ1 9
(
ÔÔ9 :
$str
ÔÔ: O
,
ÔÔO P
$str
ÔÔQ S
)
ÔÔS T
)
ÔÔT U
;
ÔÔU V
}
 
}
ÒÒ 	
}
ÚÚ 
}ÛÛ ˝:
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
$str	&&t Ä
)
&&Ä Å
:
&&Ç É
$str
&&Ñ Ü
;
&&Ü á
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
}hh Éã
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
ÄÄ 
(
ÄÄ 
int
ÄÄ 
.
ÄÄ 
TryParse
ÄÄ  
(
ÄÄ  !
idStr
ÄÄ! &
,
ÄÄ& '
out
ÄÄ( +
int
ÄÄ, /
id
ÄÄ0 2
)
ÄÄ2 3
)
ÄÄ3 4
{
ÅÅ 
CargarNoticia
ÇÇ !
(
ÇÇ! "
id
ÇÇ" $
)
ÇÇ$ %
;
ÇÇ% &
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
Response
áá 
.
áá 
Redirect
áá %
(
áá% &
$str
áá& H
)
ááH I
;
ááI J
}
àà 
}
ââ 
}
ää 	
private
åå 
void
åå 
CargarNoticia
åå "
(
åå" #
int
åå# &
id
åå' )
)
åå) *
{
çç 	
Noticias
éé 
noticia
éé 
=
éé 
noticiasDAL
éé *
.
éé* +
GetById
éé+ 2
(
éé2 3
id
éé3 5
)
éé5 6
;
éé6 7
if
èè 
(
èè 
noticia
èè 
!=
èè 
null
èè 
)
èè  
{
êê 
	TituloTxt
ëë 
.
ëë 
Text
ëë 
=
ëë  
noticia
ëë! (
.
ëë( )
titulo
ëë) /
;
ëë/ 0 
MetaDescripcionTxt
íí "
.
íí" #
Text
íí# '
=
íí( )
noticia
íí* 1
.
íí1 2
metaDescripcion
íí2 A
;
ííA B#
FechaPublicacionInput
ìì %
.
ìì% &
Text
ìì& *
=
ìì+ ,
noticia
ìì- 4
.
ìì4 5
fechaPublicacion
ìì5 E
.
ììE F
HasValue
ììF N
?
ììO P
noticia
ììQ X
.
ììX Y
fechaPublicacion
ììY i
.
ììi j
Value
ììj o
.
ììo p
ToString
ììp x
(
ììx y
$strììy Ö
)ììÖ Ü
:ììá à
$strììâ ã
;ììã å
TagsRadioList
îî 
.
îî 
SelectedValue
îî +
=
îî, -
noticia
îî. 5
.
îî5 6
tags
îî6 :
;
îî: ;!
ContenidoNoticiaTxt
ïï #
.
ïï# $
Text
ïï$ (
=
ïï) *
noticia
ïï+ 2
.
ïï2 3
contenidoTexto
ïï3 A
;
ïïA B
}
ññ 
else
óó 
{
òò 
Response
öö 
.
öö 
Redirect
öö !
(
öö! "
$str
öö" P
)
ööP Q
;
ööQ R
}
õõ 
}
úú 	
	protected
ûû 
void
ûû %
GuardarNoticiaBtn_Click
ûû .
(
ûû. /
object
ûû/ 5
sender
ûû6 <
,
ûû< =
	EventArgs
ûû> G
e
ûûH I
)
ûûI J
{
üü 	
string
†† 
idStr
†† 
=
†† 
Request
†† "
.
††" #
QueryString
††# .
[
††. /
$str
††/ 3
]
††3 4
;
††4 5
if
°° 
(
°° 
int
°° 
.
°° 
TryParse
°° 
(
°° 
idStr
°° "
,
°°" #
out
°°$ '
int
°°( +
id
°°, .
)
°°. /
)
°°/ 0
{
¢¢ 
string
££ 
titulo
££ 
=
££ 
	TituloTxt
££  )
.
££) *
Text
££* .
;
££. /
string
§§ 
metaDescripcion
§§ &
=
§§' ( 
MetaDescripcionTxt
§§) ;
.
§§; <
Text
§§< @
;
§§@ A
string
•• !
fechaPublicacionStr
•• *
=
••+ ,#
FechaPublicacionInput
••- B
.
••B C
Text
••C G
;
••G H
string
¶¶ 
tags
¶¶ 
=
¶¶ 
TagsRadioList
¶¶ +
.
¶¶+ ,
SelectedValue
¶¶, 9
;
¶¶9 :
string
ßß 
contenidoNoticia
ßß '
=
ßß( )!
ContenidoNoticiaTxt
ßß* =
.
ßß= >
Text
ßß> B
;
ßßB C
bool
®® 
colocarEnSlider
®® $
=
®®% &"
ColocarEnSliderCheck
®®' ;
.
®®; <
Checked
®®< C
;
®®C D
if
™™ 
(
™™ 
string
™™ 
.
™™  
IsNullOrWhiteSpace
™™ -
(
™™- .
contenidoNoticia
™™. >
)
™™> ?
)
™™? @
{
´´ 
ErrorMessageLabel
¨¨ %
.
¨¨% &
Text
¨¨& *
=
¨¨+ ,
$str
¨¨- F
;
¨¨F G
ErrorMessageLabel
≠≠ %
.
≠≠% &
Visible
≠≠& -
=
≠≠. /
true
≠≠0 4
;
≠≠4 5
return
ÆÆ 
;
ÆÆ 
}
ØØ 
var
±± 
	sanitizer
±± 
=
±± 
new
±±  #
HtmlSanitizer
±±$ 1
(
±±1 2
)
±±2 3
;
±±3 4
string
≤≤ 
sanitizedContent
≤≤ '
=
≤≤( )
	sanitizer
≤≤* 3
.
≤≤3 4
Sanitize
≤≤4 <
(
≤≤< =
contenidoNoticia
≤≤= M
)
≤≤M N
;
≤≤N O
DateTime
¥¥ 
?
¥¥ 
fechaPublicacion
¥¥ *
=
¥¥+ ,
null
¥¥- 1
;
¥¥1 2
if
µµ 
(
µµ 
DateTime
µµ 
.
µµ 
TryParse
µµ %
(
µµ% &!
fechaPublicacionStr
µµ& 9
,
µµ9 :
out
µµ; >
DateTime
µµ? G

parsedDate
µµH R
)
µµR S
)
µµS T
{
∂∂ 
fechaPublicacion
∑∑ $
=
∑∑% &

parsedDate
∑∑' 1
;
∑∑1 2
}
∏∏ 
string
∫∫ 
	urlSimple
∫∫  
=
∫∫! "
GenerateUrlSimple
∫∫# 4
(
∫∫4 5
titulo
∫∫5 ;
)
∫∫; <
;
∫∫< =
int
ºº 
?
ºº '
archivoMultimediaIdSlider
ºº .
=
ºº/ 0
null
ºº1 5
;
ºº5 6
int
ΩΩ 
?
ΩΩ %
archivoMultimediaIdCard
ΩΩ ,
=
ΩΩ- .
null
ΩΩ/ 3
;
ΩΩ3 4
string
øø 
basePath
øø 
=
øø  !
Server
øø" (
.
øø( )
MapPath
øø) 0
(
øø0 1
$str
øø1 Q
)
øøQ R
;
øøR S
string
¿¿ 
relativePath
¿¿ #
=
¿¿$ %
$"
¿¿& (
{
¿¿( )
DateTime
¿¿) 1
.
¿¿1 2
Now
¿¿2 5
.
¿¿5 6
Year
¿¿6 :
}
¿¿: ;
$str
¿¿; <
{
¿¿< =
DateTime
¿¿= E
.
¿¿E F
Now
¿¿F I
.
¿¿I J
Month
¿¿J O
}
¿¿O P
$str
¿¿P Q
"
¿¿Q R
;
¿¿R S
string
¡¡ 
fullPath
¡¡ 
=
¡¡  !
Path
¡¡" &
.
¡¡& '
Combine
¡¡' .
(
¡¡. /
basePath
¡¡/ 7
,
¡¡7 8
relativePath
¡¡9 E
)
¡¡E F
;
¡¡F G
if
√√ 
(
√√ 
!
√√ 
	Directory
√√ 
.
√√ 
Exists
√√ %
(
√√% &
fullPath
√√& .
)
√√. /
)
√√/ 0
{
ƒƒ 
	Directory
≈≈ 
.
≈≈ 
CreateDirectory
≈≈ -
(
≈≈- .
fullPath
≈≈. 6
)
≈≈6 7
;
≈≈7 8
}
∆∆ 
if
»» 
(
»» !
ImagenPortadaSlider
»» '
.
»»' (
HasFile
»»( /
)
»»/ 0
{
…… 
string
   
fileNameSlider
   )
=
  * +
Path
  , 0
.
  0 1
GetFileName
  1 <
(
  < =!
ImagenPortadaSlider
  = P
.
  P Q
FileName
  Q Y
)
  Y Z
;
  Z [
string
ÀÀ 
filePathSlider
ÀÀ )
=
ÀÀ* +
Path
ÀÀ, 0
.
ÀÀ0 1
Combine
ÀÀ1 8
(
ÀÀ8 9
fullPath
ÀÀ9 A
,
ÀÀA B
fileNameSlider
ÀÀC Q
)
ÀÀQ R
;
ÀÀR S!
ImagenPortadaSlider
ÃÃ '
.
ÃÃ' (
SaveAs
ÃÃ( .
(
ÃÃ. /
filePathSlider
ÃÃ/ =
)
ÃÃ= >
;
ÃÃ> ?
string
ŒŒ $
imagenPortadaSliderUrl
ŒŒ 1
=
ŒŒ2 3
Path
ŒŒ4 8
.
ŒŒ8 9
Combine
ŒŒ9 @
(
ŒŒ@ A
relativePath
ŒŒA M
,
ŒŒM N
fileNameSlider
ŒŒO ]
)
ŒŒ] ^
.
ŒŒ^ _
Replace
ŒŒ_ f
(
ŒŒf g
$str
ŒŒg k
,
ŒŒk l
$str
ŒŒm p
)
ŒŒp q
;
ŒŒq r'
archivoMultimediaIdSlider
œœ -
=
œœ. /&
GuardarArchivoMultimedia
œœ0 H
(
œœH I
$str
œœI Q
,
œœQ R$
imagenPortadaSliderUrl
œœS i
)
œœi j
;
œœj k
}
–– 
if
““ 
(
““ 
ImagenPortadaCard
““ %
.
““% &
HasFile
““& -
)
““- .
{
”” 
string
‘‘ 
fileNameCard
‘‘ '
=
‘‘( )
Path
‘‘* .
.
‘‘. /
GetFileName
‘‘/ :
(
‘‘: ;
ImagenPortadaCard
‘‘; L
.
‘‘L M
FileName
‘‘M U
)
‘‘U V
;
‘‘V W
string
’’ 
filePathCard
’’ '
=
’’( )
Path
’’* .
.
’’. /
Combine
’’/ 6
(
’’6 7
fullPath
’’7 ?
,
’’? @
fileNameCard
’’A M
)
’’M N
;
’’N O
ImagenPortadaCard
÷÷ %
.
÷÷% &
SaveAs
÷÷& ,
(
÷÷, -
filePathCard
÷÷- 9
)
÷÷9 :
;
÷÷: ;
string
ÿÿ "
imagenPortadaCardUrl
ÿÿ /
=
ÿÿ0 1
Path
ÿÿ2 6
.
ÿÿ6 7
Combine
ÿÿ7 >
(
ÿÿ> ?
relativePath
ÿÿ? K
,
ÿÿK L
fileNameCard
ÿÿM Y
)
ÿÿY Z
.
ÿÿZ [
Replace
ÿÿ[ b
(
ÿÿb c
$str
ÿÿc g
,
ÿÿg h
$str
ÿÿi l
)
ÿÿl m
;
ÿÿm n%
archivoMultimediaIdCard
ŸŸ +
=
ŸŸ, -&
GuardarArchivoMultimedia
ŸŸ. F
(
ŸŸF G
$str
ŸŸG O
,
ŸŸO P"
imagenPortadaCardUrl
ŸŸQ e
)
ŸŸe f
;
ŸŸf g
}
⁄⁄ 
using
‹‹ 
(
‹‹ 
var
‹‹ 
context
‹‹ "
=
‹‹# $
new
‹‹% (
IntranetEntities
‹‹) 9
(
‹‹9 :
)
‹‹: ;
)
‹‹; <
{
›› 
Noticias
ﬁﬁ 
noticia
ﬁﬁ $
=
ﬁﬁ% &
context
ﬁﬁ' .
.
ﬁﬁ. /
Noticias
ﬁﬁ/ 7
.
ﬁﬁ7 8
FirstOrDefault
ﬁﬁ8 F
(
ﬁﬁF G
n
ﬁﬁG H
=>
ﬁﬁI K
n
ﬁﬁL M
.
ﬁﬁM N
id
ﬁﬁN P
==
ﬁﬁQ S
id
ﬁﬁT V
)
ﬁﬁV W
;
ﬁﬁW X
if
ﬂﬂ 
(
ﬂﬂ 
noticia
ﬂﬂ 
!=
ﬂﬂ  "
null
ﬂﬂ# '
)
ﬂﬂ' (
{
‡‡ 
noticia
·· 
.
··  
titulo
··  &
=
··' (
titulo
··) /
;
··/ 0
noticia
‚‚ 
.
‚‚  
metaDescripcion
‚‚  /
=
‚‚0 1
metaDescripcion
‚‚2 A
;
‚‚A B
noticia
„„ 
.
„„  
fechaPublicacion
„„  0
=
„„1 2
fechaPublicacion
„„3 C
;
„„C D
noticia
‰‰ 
.
‰‰  
tags
‰‰  $
=
‰‰% &
tags
‰‰' +
;
‰‰+ ,
noticia
ÂÂ 
.
ÂÂ  
contenidoTexto
ÂÂ  .
=
ÂÂ/ 0
sanitizedContent
ÂÂ1 A
;
ÂÂA B
noticia
ÊÊ 
.
ÊÊ  '
ArchivoMultimediaIdSlider
ÊÊ  9
=
ÊÊ: ;'
archivoMultimediaIdSlider
ÊÊ< U
;
ÊÊU V
noticia
ÁÁ 
.
ÁÁ  %
ArchivoMultimediaIdCard
ÁÁ  7
=
ÁÁ8 9%
archivoMultimediaIdCard
ÁÁ: Q
;
ÁÁQ R
noticia
ËË 
.
ËË  
ColocarEnSlider
ËË  /
=
ËË0 1
colocarEnSlider
ËË2 A
;
ËËA B
context
ÍÍ 
.
ÍÍ  
SaveChanges
ÍÍ  +
(
ÍÍ+ ,
)
ÍÍ, -
;
ÍÍ- .
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 
Response
ÓÓ  
.
ÓÓ  !
Redirect
ÓÓ! )
(
ÓÓ) *
$str
ÓÓ* X
)
ÓÓX Y
;
ÓÓY Z
return
ÔÔ 
;
ÔÔ 
}
 
}
ÒÒ 
Response
ÛÛ 
.
ÛÛ 
Redirect
ÛÛ !
(
ÛÛ! "
$str
ÛÛ" T
)
ÛÛT U
;
ÛÛU V
}
ÙÙ 
}
ıı 	
private
˜˜ 
string
˜˜ 
GenerateUrlSimple
˜˜ (
(
˜˜( )
string
˜˜) /
titulo
˜˜0 6
)
˜˜6 7
{
¯¯ 	
string
˘˘ 
	urlSimple
˘˘ 
=
˘˘ 
titulo
˘˘ %
.
˘˘% &
ToLowerInvariant
˘˘& 6
(
˘˘6 7
)
˘˘7 8
;
˘˘8 9
string
˚˚ 
normalizedString
˚˚ #
=
˚˚$ %
	urlSimple
˚˚& /
.
˚˚/ 0
	Normalize
˚˚0 9
(
˚˚9 :
NormalizationForm
˚˚: K
.
˚˚K L
FormD
˚˚L Q
)
˚˚Q R
;
˚˚R S
StringBuilder
˝˝ 
stringBuilder
˝˝ '
=
˝˝( )
new
˝˝* -
StringBuilder
˝˝. ;
(
˝˝; <
)
˝˝< =
;
˝˝= >
foreach
˛˛ 
(
˛˛ 
char
˛˛ 
c
˛˛ 
in
˛˛ 
normalizedString
˛˛ /
)
˛˛/ 0
{
ˇˇ 
UnicodeCategory
ÄÄ 
unicodeCategory
ÄÄ  /
=
ÄÄ0 1
CharUnicodeInfo
ÄÄ2 A
.
ÄÄA B 
GetUnicodeCategory
ÄÄB T
(
ÄÄT U
c
ÄÄU V
)
ÄÄV W
;
ÄÄW X
if
ÅÅ 
(
ÅÅ 
unicodeCategory
ÅÅ #
!=
ÅÅ$ &
UnicodeCategory
ÅÅ' 6
.
ÅÅ6 7
NonSpacingMark
ÅÅ7 E
)
ÅÅE F
{
ÇÇ 
stringBuilder
ÉÉ !
.
ÉÉ! "
Append
ÉÉ" (
(
ÉÉ( )
c
ÉÉ) *
)
ÉÉ* +
;
ÉÉ+ ,
}
ÑÑ 
}
ÖÖ 
	urlSimple
áá 
=
áá 
stringBuilder
áá %
.
áá% &
ToString
áá& .
(
áá. /
)
áá/ 0
.
áá0 1
	Normalize
áá1 :
(
áá: ;
NormalizationForm
áá; L
.
ááL M
FormC
ááM R
)
ááR S
;
ááS T
	urlSimple
ââ 
=
ââ 
Regex
ââ 
.
ââ 
Replace
ââ %
(
ââ% &
	urlSimple
ââ& /
,
ââ/ 0
$str
ââ1 @
,
ââ@ A
$str
ââB D
)
ââD E
;
ââE F
	urlSimple
ää 
=
ää 
Regex
ää 
.
ää 
Replace
ää %
(
ää% &
	urlSimple
ää& /
,
ää/ 0
$str
ää1 7
,
ää7 8
$str
ää9 <
)
ää< =
.
ää= >
Trim
ää> B
(
ääB C
)
ääC D
;
ääD E
	urlSimple
ãã 
=
ãã 
Regex
ãã 
.
ãã 
Replace
ãã %
(
ãã% &
	urlSimple
ãã& /
,
ãã/ 0
$str
ãã1 6
,
ãã6 7
$str
ãã8 ;
)
ãã; <
;
ãã< =
	urlSimple
çç 
=
çç 
$str
çç #
+
çç$ %
	urlSimple
çç& /
;
çç/ 0
return
èè 
	urlSimple
èè 
;
èè 
}
êê 	
private
íí 
int
íí &
GuardarArchivoMultimedia
íí ,
(
íí, -
string
íí- 3
tipoArchivo
íí4 ?
,
íí? @
string
ííA G

urlArchivo
ííH R
)
ííR S
{
ìì 	
using
îî 
(
îî 
var
îî 
context
îî 
=
îî  
new
îî! $
IntranetEntities
îî% 5
(
îî5 6
)
îî6 7
)
îî7 8
{
ïï  
ArchivosMultimedia
ññ "
archivoMultimedia
ññ# 4
=
ññ5 6
new
ññ7 : 
ArchivosMultimedia
ññ; M
{
óó 
fechaPublicacion
òò $
=
òò% &
DateTime
òò' /
.
òò/ 0
Now
òò0 3
,
òò3 4
tipoArchivo
ôô 
=
ôô  !
tipoArchivo
ôô" -
,
ôô- .

urlArchivo
öö 
=
öö  

urlArchivo
öö! +
,
öö+ ,
usuarioAutor
õõ  
=
õõ! "
$str
õõ# ,
}
úú 
;
úú 
context
ûû 
.
ûû  
ArchivosMultimedia
ûû *
.
ûû* +
Add
ûû+ .
(
ûû. /
archivoMultimedia
ûû/ @
)
ûû@ A
;
ûûA B
context
üü 
.
üü 
SaveChanges
üü #
(
üü# $
)
üü$ %
;
üü% &
return
°° 
archivoMultimedia
°° (
.
°°( )
id
°°) +
;
°°+ ,
}
¢¢ 
}
££ 	
}
§§ 
}•• ÏB
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
}gg ∫
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
} Ëå
<D:\Cami\Web\Intranet\IntranetWeb\IntranetWeb\Cultura.aspx.cs
	namespaceàà 	
IntranetWeb
àà
 
{ââ 
public
ää 

partial
ää 
class
ää 
Cultura
ää  
:
ää! "
Page
ää# '
{
ãã 
	protected
åå 
void
åå 
	Page_Load
åå  
(
åå  !
object
åå! '
sender
åå( .
,
åå. /
	EventArgs
åå0 9
e
åå: ;
)
åå; <
{
çç 	
if
éé 
(
éé 
!
éé 

IsPostBack
éé 
)
éé 
{
èè 
LoadBirthdays
êê 
(
êê 
)
êê 
;
êê   
LoadRecentIngresos
ëë "
(
ëë" #
)
ëë# $
;
ëë$ %#
LoadRecentNacimientos
íí %
(
íí% &
)
íí& '
;
íí' (#
LoadRecentPromociones
ìì %
(
ìì% &
)
ìì& '
;
ìì' (
}
îî 
}
ïï 	
private
óó 
void
óó 
LoadBirthdays
óó "
(
óó" #
)
óó# $
{
òò 	
using
ôô 
(
ôô 
var
ôô 
context
ôô 
=
ôô  
new
ôô! $
IntranetEntities
ôô% 5
(
ôô5 6
)
ôô6 7
)
ôô7 8
{
öö 
DateTime
õõ 
today
õõ 
=
õõ  
DateTime
õõ! )
.
õõ) *
Today
õõ* /
;
õõ/ 0
DateTime
úú 
	yesterday
úú "
=
úú# $
today
úú% *
.
úú* +
AddDays
úú+ 2
(
úú2 3
-
úú3 4
$num
úú4 5
)
úú5 6
;
úú6 7
DateTime
ùù 
tomorrow
ùù !
=
ùù" #
today
ùù$ )
.
ùù) *
AddDays
ùù* 1
(
ùù1 2
$num
ùù2 3
)
ùù3 4
;
ùù4 5
var
üü 
birthdaysToday
üü "
=
üü# $
context
üü% ,
.
üü, -
Usuarios
üü- 5
.
†† 
Where
†† 
(
†† 
u
†† 
=>
†† 
u
††  !
.
††! "
fechaNacimiento
††" 1
.
††1 2
Value
††2 7
.
††7 8
Month
††8 =
==
††> @
today
††A F
.
††F G
Month
††G L
&&
††M O
u
††P Q
.
††Q R
fechaNacimiento
††R a
.
††a b
Value
††b g
.
††g h
Day
††h k
==
††l n
today
††o t
.
††t u
Day
††u x
)
††x y
.
°° 
ToList
°° 
(
°° 
)
°° 
;
°° 
var
££  
birthdaysYesterday
££ &
=
££' (
context
££) 0
.
££0 1
Usuarios
££1 9
.
§§ 
Where
§§ 
(
§§ 
u
§§ 
=>
§§ 
u
§§  !
.
§§! "
fechaNacimiento
§§" 1
.
§§1 2
Value
§§2 7
.
§§7 8
Month
§§8 =
==
§§> @
	yesterday
§§A J
.
§§J K
Month
§§K P
&&
§§Q S
u
§§T U
.
§§U V
fechaNacimiento
§§V e
.
§§e f
Value
§§f k
.
§§k l
Day
§§l o
==
§§p r
	yesterday
§§s |
.
§§| }
Day§§} Ä
)§§Ä Å
.
•• 
ToList
•• 
(
•• 
)
•• 
;
•• 
var
ßß 
birthdaysTomorrow
ßß %
=
ßß& '
context
ßß( /
.
ßß/ 0
Usuarios
ßß0 8
.
®® 
Where
®® 
(
®® 
u
®® 
=>
®® 
u
®®  !
.
®®! "
fechaNacimiento
®®" 1
.
®®1 2
Value
®®2 7
.
®®7 8
Month
®®8 =
==
®®> @
tomorrow
®®A I
.
®®I J
Month
®®J O
&&
®®P R
u
®®S T
.
®®T U
fechaNacimiento
®®U d
.
®®d e
Value
®®e j
.
®®j k
Day
®®k n
==
®®o q
tomorrow
®®r z
.
®®z {
Day
®®{ ~
)
®®~ 
.
©© 
ToList
©© 
(
©© 
)
©© 
;
©© 
rptBirthdaysToday
´´ !
.
´´! "

DataSource
´´" ,
=
´´- .
birthdaysToday
´´/ =
;
´´= >
rptBirthdaysToday
¨¨ !
.
¨¨! "
DataBind
¨¨" *
(
¨¨* +
)
¨¨+ ,
;
¨¨, -!
lblNoBirthdaysToday
≠≠ #
.
≠≠# $
Visible
≠≠$ +
=
≠≠, -
birthdaysToday
≠≠. <
.
≠≠< =
Count
≠≠= B
==
≠≠C E
$num
≠≠F G
;
≠≠G H#
rptBirthdaysYesterday
ØØ %
.
ØØ% &

DataSource
ØØ& 0
=
ØØ1 2 
birthdaysYesterday
ØØ3 E
;
ØØE F#
rptBirthdaysYesterday
∞∞ %
.
∞∞% &
DataBind
∞∞& .
(
∞∞. /
)
∞∞/ 0
;
∞∞0 1%
lblNoBirthdaysYesterday
±± '
.
±±' (
Visible
±±( /
=
±±0 1 
birthdaysYesterday
±±2 D
.
±±D E
Count
±±E J
==
±±K M
$num
±±N O
;
±±O P"
rptBirthdaysTomorrow
≥≥ $
.
≥≥$ %

DataSource
≥≥% /
=
≥≥0 1
birthdaysTomorrow
≥≥2 C
;
≥≥C D"
rptBirthdaysTomorrow
¥¥ $
.
¥¥$ %
DataBind
¥¥% -
(
¥¥- .
)
¥¥. /
;
¥¥/ 0$
lblNoBirthdaysTomorrow
µµ &
.
µµ& '
Visible
µµ' .
=
µµ/ 0
birthdaysTomorrow
µµ1 B
.
µµB C
Count
µµC H
==
µµI K
$num
µµL M
;
µµM N
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ  
LoadRecentIngresos
ππ '
(
ππ' (
)
ππ( )
{
∫∫ 	
using
ªª 
(
ªª 
var
ªª 
context
ªª 
=
ªª  
new
ªª! $
IntranetEntities
ªª% 5
(
ªª5 6
)
ªª6 7
)
ªª7 8
{
ºº 
var
ΩΩ 
recentIngresos
ΩΩ "
=
ΩΩ# $
context
ΩΩ% ,
.
ΩΩ, -
Usuarios
ΩΩ- 5
.
ææ 
Where
ææ 
(
ææ 
u
ææ 
=>
ææ 
u
ææ  !
.
ææ! "
fechaIngreso
ææ" .
.
ææ. /
HasValue
ææ/ 7
)
ææ7 8
.
øø 
OrderByDescending
øø &
(
øø& '
u
øø' (
=>
øø) +
u
øø, -
.
øø- .
fechaIngreso
øø. :
.
øø: ;
Value
øø; @
)
øø@ A
.
¿¿ 
Take
¿¿ 
(
¿¿ 
$num
¿¿ 
)
¿¿ 
.
¡¡ 
ToList
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 
if
√√ 
(
√√ 
recentIngresos
√√ "
.
√√" #
Count
√√# (
>
√√) *
$num
√√+ ,
)
√√, -
{
ƒƒ 
rptUltimoIngreso
≈≈ $
.
≈≈$ %

DataSource
≈≈% /
=
≈≈0 1
recentIngresos
≈≈2 @
.
≈≈@ A
Take
≈≈A E
(
≈≈E F
$num
≈≈F G
)
≈≈G H
;
≈≈H I
rptUltimoIngreso
∆∆ $
.
∆∆$ %
DataBind
∆∆% -
(
∆∆- .
)
∆∆. /
;
∆∆/ 0 
lblNoUltimoIngreso
«« &
.
««& '
Visible
««' .
=
««/ 0
false
««1 6
;
««6 7!
rptPenultimoIngreso
…… '
.
……' (

DataSource
……( 2
=
……3 4
recentIngresos
……5 C
.
……C D
Skip
……D H
(
……H I
$num
……I J
)
……J K
.
……K L
Take
……L P
(
……P Q
$num
……Q R
)
……R S
;
……S T!
rptPenultimoIngreso
   '
.
  ' (
DataBind
  ( 0
(
  0 1
)
  1 2
;
  2 3#
lblNoPenultimoIngreso
ÀÀ )
.
ÀÀ) *
Visible
ÀÀ* 1
=
ÀÀ2 3
false
ÀÀ4 9
;
ÀÀ9 :%
rptAntepenultimoIngreso
ÕÕ +
.
ÕÕ+ ,

DataSource
ÕÕ, 6
=
ÕÕ7 8
recentIngresos
ÕÕ9 G
.
ÕÕG H
Skip
ÕÕH L
(
ÕÕL M
$num
ÕÕM N
)
ÕÕN O
.
ÕÕO P
Take
ÕÕP T
(
ÕÕT U
$num
ÕÕU V
)
ÕÕV W
;
ÕÕW X%
rptAntepenultimoIngreso
ŒŒ +
.
ŒŒ+ ,
DataBind
ŒŒ, 4
(
ŒŒ4 5
)
ŒŒ5 6
;
ŒŒ6 7'
lblNoAntepenultimoIngreso
œœ -
.
œœ- .
Visible
œœ. 5
=
œœ6 7
false
œœ8 =
;
œœ= >
}
–– 
else
—— 
{
““  
lblNoUltimoIngreso
”” &
.
””& '
Visible
””' .
=
””/ 0
true
””1 5
;
””5 6#
lblNoPenultimoIngreso
‘‘ )
.
‘‘) *
Visible
‘‘* 1
=
‘‘2 3
true
‘‘4 8
;
‘‘8 9'
lblNoAntepenultimoIngreso
’’ -
.
’’- .
Visible
’’. 5
=
’’6 7
true
’’8 <
;
’’< =
}
÷÷ 
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ #
LoadRecentNacimientos
⁄⁄ *
(
⁄⁄* +
)
⁄⁄+ ,
{
€€ 	
using
‹‹ 
(
‹‹ 
var
‹‹ 
context
‹‹ 
=
‹‹  
new
‹‹! $
IntranetEntities
‹‹% 5
(
‹‹5 6
)
‹‹6 7
)
‹‹7 8
{
›› 
var
ﬁﬁ 
recentNacimientos
ﬁﬁ %
=
ﬁﬁ& '
context
ﬁﬁ( /
.
ﬁﬁ/ 0
Hijos
ﬁﬁ0 5
.
ﬂﬂ 
OrderByDescending
ﬂﬂ &
(
ﬂﬂ& '
h
ﬂﬂ' (
=>
ﬂﬂ) +
h
ﬂﬂ, -
.
ﬂﬂ- .!
fechanacimientohijo
ﬂﬂ. A
)
ﬂﬂA B
.
‡‡ 
Take
‡‡ 
(
‡‡ 
$num
‡‡ 
)
‡‡ 
.
·· 
Select
·· 
(
·· 
h
·· 
=>
··  
new
··! $
{
‚‚ 
Colaborador
„„ #
=
„„$ %
h
„„& '
.
„„' (
Usuarios
„„( 0
.
„„0 1
nombre
„„1 7
+
„„8 9
$str
„„: =
+
„„> ?
h
„„@ A
.
„„A B
Usuarios
„„B J
.
„„J K
apellido
„„K S
,
„„S T

NombreHijo
‰‰ "
=
‰‰# $
h
‰‰% &
.
‰‰& '
nombre
‰‰' -
,
‰‰- .
FechaNacimiento
ÂÂ '
=
ÂÂ( )
h
ÂÂ* +
.
ÂÂ+ ,!
fechanacimientohijo
ÂÂ, ?
}
ÊÊ 
)
ÊÊ 
.
ÁÁ 
ToList
ÁÁ 
(
ÁÁ 
)
ÁÁ 
;
ÁÁ 
if
ÈÈ 
(
ÈÈ 
recentNacimientos
ÈÈ %
.
ÈÈ% &
Count
ÈÈ& +
>
ÈÈ, -
$num
ÈÈ. /
)
ÈÈ/ 0
{
ÍÍ !
rptUltimoNacimiento
ÎÎ '
.
ÎÎ' (

DataSource
ÎÎ( 2
=
ÎÎ3 4
recentNacimientos
ÎÎ5 F
.
ÎÎF G
Take
ÎÎG K
(
ÎÎK L
$num
ÎÎL M
)
ÎÎM N
;
ÎÎN O!
rptUltimoNacimiento
ÏÏ '
.
ÏÏ' (
DataBind
ÏÏ( 0
(
ÏÏ0 1
)
ÏÏ1 2
;
ÏÏ2 3#
lblNoUltimoNacimiento
ÌÌ )
.
ÌÌ) *
Visible
ÌÌ* 1
=
ÌÌ2 3
false
ÌÌ4 9
;
ÌÌ9 :$
rptPenultimoNacimiento
ÔÔ *
.
ÔÔ* +

DataSource
ÔÔ+ 5
=
ÔÔ6 7
recentNacimientos
ÔÔ8 I
.
ÔÔI J
Skip
ÔÔJ N
(
ÔÔN O
$num
ÔÔO P
)
ÔÔP Q
.
ÔÔQ R
Take
ÔÔR V
(
ÔÔV W
$num
ÔÔW X
)
ÔÔX Y
;
ÔÔY Z$
rptPenultimoNacimiento
 *
.
* +
DataBind
+ 3
(
3 4
)
4 5
;
5 6&
lblNoPenultimoNacimiento
ÒÒ ,
.
ÒÒ, -
Visible
ÒÒ- 4
=
ÒÒ5 6
false
ÒÒ7 <
;
ÒÒ< =(
rptAntepenultimoNacimiento
ÛÛ .
.
ÛÛ. /

DataSource
ÛÛ/ 9
=
ÛÛ: ;
recentNacimientos
ÛÛ< M
.
ÛÛM N
Skip
ÛÛN R
(
ÛÛR S
$num
ÛÛS T
)
ÛÛT U
.
ÛÛU V
Take
ÛÛV Z
(
ÛÛZ [
$num
ÛÛ[ \
)
ÛÛ\ ]
;
ÛÛ] ^(
rptAntepenultimoNacimiento
ÙÙ .
.
ÙÙ. /
DataBind
ÙÙ/ 7
(
ÙÙ7 8
)
ÙÙ8 9
;
ÙÙ9 :*
lblNoAntepenultimoNacimiento
ıı 0
.
ıı0 1
Visible
ıı1 8
=
ıı9 :
false
ıı; @
;
ıı@ A
}
ˆˆ 
else
˜˜ 
{
¯¯ #
lblNoUltimoNacimiento
˘˘ )
.
˘˘) *
Visible
˘˘* 1
=
˘˘2 3
true
˘˘4 8
;
˘˘8 9&
lblNoPenultimoNacimiento
˙˙ ,
.
˙˙, -
Visible
˙˙- 4
=
˙˙5 6
true
˙˙7 ;
;
˙˙; <*
lblNoAntepenultimoNacimiento
˚˚ 0
.
˚˚0 1
Visible
˚˚1 8
=
˚˚9 :
true
˚˚; ?
;
˚˚? @
}
¸¸ 
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ #
LoadRecentPromociones
ÄÄ *
(
ÄÄ* +
)
ÄÄ+ ,
{
ÅÅ 	
using
ÇÇ 
(
ÇÇ 
var
ÇÇ 
context
ÇÇ 
=
ÇÇ  
new
ÇÇ! $
IntranetEntities
ÇÇ% 5
(
ÇÇ5 6
)
ÇÇ6 7
)
ÇÇ7 8
{
ÉÉ 
var
ÑÑ 
recentPromociones
ÑÑ %
=
ÑÑ& '
context
ÑÑ( /
.
ÑÑ/ 0
Promociones
ÑÑ0 ;
.
ÖÖ 
OrderByDescending
ÖÖ &
(
ÖÖ& '
p
ÖÖ' (
=>
ÖÖ) +
p
ÖÖ, -
.
ÖÖ- .
FechaPromocion
ÖÖ. <
)
ÖÖ< =
.
ÜÜ 
Take
ÜÜ 
(
ÜÜ 
$num
ÜÜ 
)
ÜÜ 
.
áá 
Select
áá 
(
áá 
p
áá 
=>
áá  
new
áá! $
{
àà 
nombre
ââ 
=
ââ  
p
ââ! "
.
ââ" #
Usuarios
ââ# +
.
ââ+ ,
nombre
ââ, 2
,
ââ2 3
apellido
ää  
=
ää! "
p
ää# $
.
ää$ %
Usuarios
ää% -
.
ää- .
apellido
ää. 6
,
ää6 7
fechaPromocion
ãã &
=
ãã' (
p
ãã) *
.
ãã* +
FechaPromocion
ãã+ 9
,
ãã9 :
cargo
åå 
=
åå 
p
åå  !
.
åå! "
Usuarios
åå" *
.
åå* +
cargo
åå+ 0
,
åå0 1
gerencia
çç  
=
çç! "
p
çç# $
.
çç$ %
Usuarios
çç% -
.
çç- .
	Gerencias
çç. 7
.
çç7 8
nombre
çç8 >
,
çç> ?
subgerencia
éé #
=
éé$ %
p
éé& '
.
éé' (
Usuarios
éé( 0
.
éé0 1
Subgerencias
éé1 =
.
éé= >
nombre
éé> D
,
ééD E
departamento
èè $
=
èè% &
p
èè' (
.
èè( )
Usuarios
èè) 1
.
èè1 2
Departamentos
èè2 ?
.
èè? @
nombre
èè@ F
,
èèF G
	ubicacion
êê !
=
êê" #
p
êê$ %
.
êê% &
Usuarios
êê& .
.
êê. /
Ubicaciones
êê/ :
.
êê: ;
nombre
êê; A
,
êêA B
jefe
ëë 
=
ëë 
p
ëë  
.
ëë  !
Usuarios
ëë! )
.
ëë) *
jefe
ëë* .
}
íí 
)
íí 
.
ìì 
ToList
ìì 
(
ìì 
)
ìì 
;
ìì 
if
ïï 
(
ïï 
recentPromociones
ïï %
.
ïï% &
Count
ïï& +
>
ïï, -
$num
ïï. /
)
ïï/ 0
{
ññ  
rptUltimaPromocion
óó &
.
óó& '

DataSource
óó' 1
=
óó2 3
recentPromociones
óó4 E
.
óóE F
Take
óóF J
(
óóJ K
$num
óóK L
)
óóL M
;
óóM N 
rptUltimaPromocion
òò &
.
òò& '
DataBind
òò' /
(
òò/ 0
)
òò0 1
;
òò1 2"
lblNoUltimaPromocion
ôô (
.
ôô( )
Visible
ôô) 0
=
ôô1 2
false
ôô3 8
;
ôô8 9#
rptPenultimaPromocion
õõ )
.
õõ) *

DataSource
õõ* 4
=
õõ5 6
recentPromociones
õõ7 H
.
õõH I
Skip
õõI M
(
õõM N
$num
õõN O
)
õõO P
.
õõP Q
Take
õõQ U
(
õõU V
$num
õõV W
)
õõW X
;
õõX Y#
rptPenultimaPromocion
úú )
.
úú) *
DataBind
úú* 2
(
úú2 3
)
úú3 4
;
úú4 5%
lblNoPenultimaPromocion
ùù +
.
ùù+ ,
Visible
ùù, 3
=
ùù4 5
false
ùù6 ;
;
ùù; <'
rptAntepenultimaPromocion
üü -
.
üü- .

DataSource
üü. 8
=
üü9 :
recentPromociones
üü; L
.
üüL M
Skip
üüM Q
(
üüQ R
$num
üüR S
)
üüS T
.
üüT U
Take
üüU Y
(
üüY Z
$num
üüZ [
)
üü[ \
;
üü\ ]'
rptAntepenultimaPromocion
†† -
.
††- .
DataBind
††. 6
(
††6 7
)
††7 8
;
††8 9)
lblNoAntepenultimaPromocion
°° /
.
°°/ 0
Visible
°°0 7
=
°°8 9
false
°°: ?
;
°°? @
}
¢¢ 
else
££ 
{
§§ "
lblNoUltimaPromocion
•• (
.
••( )
Visible
••) 0
=
••1 2
true
••3 7
;
••7 8%
lblNoPenultimaPromocion
¶¶ +
.
¶¶+ ,
Visible
¶¶, 3
=
¶¶4 5
true
¶¶6 :
;
¶¶: ;)
lblNoAntepenultimaPromocion
ßß /
.
ßß/ 0
Visible
ßß0 7
=
ßß8 9
true
ßß: >
;
ßß> ?
}
®® 
}
©© 
}
™™ 	
}
´´ 
}¨¨ ∆Ø
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
SelectedValue	vvw Ñ
)
vvÑ Ö
;
vvÖ Ü
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
.	ww Ä
SelectedValue
wwÄ ç
)
wwç é
;
wwé è
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
DepartamentoDdl	xxs Ç
.
xxÇ É
SelectedValue
xxÉ ê
)
xxê ë
;
xxë í
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
SelectedValue	yyz á
)
yyá à
;
yyà â
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
ÄÄ "
=
ÄÄ# $
fechaPromocion
ÄÄ% 3
}
ÅÅ 
;
ÅÅ 
Usuarios
ÑÑ 
usuario
ÑÑ  
=
ÑÑ! "
db
ÑÑ# %
.
ÑÑ% &
Usuarios
ÑÑ& .
.
ÑÑ. /
SingleOrDefault
ÑÑ/ >
(
ÑÑ> ?
u
ÑÑ? @
=>
ÑÑA C
u
ÑÑD E
.
ÑÑE F

rutUsuario
ÑÑF P
==
ÑÑQ S

rutUsuario
ÑÑT ^
)
ÑÑ^ _
;
ÑÑ_ `
if
ÖÖ 
(
ÖÖ 
usuario
ÖÖ 
!=
ÖÖ 
null
ÖÖ #
)
ÖÖ# $
{
ÜÜ 
usuario
áá 
.
áá 
cargo
áá !
=
áá" #

nuevoCargo
áá$ .
;
áá. /
usuario
àà 
.
àà 

idGerencia
àà &
=
àà' (

idGerencia
àà) 3
;
àà3 4
usuario
ââ 
.
ââ 
idSubgerencia
ââ )
=
ââ* +
idSubgerencia
ââ, 9
;
ââ9 :
usuario
ää 
.
ää 
idDepartamento
ää *
=
ää+ ,
idDepartamento
ää- ;
;
ää; <
usuario
ãã 
.
ãã 
idUbicacion
ãã '
=
ãã( )
idUbicacion
ãã* 5
;
ãã5 6
usuario
åå 
.
åå 
jefe
åå  
=
åå! "
jefe
åå# '
;
åå' (
db
éé 
.
éé 
SaveChanges
éé "
(
éé" #
)
éé# $
;
éé$ %
promocionesDAL
èè "
.
èè" #
Add
èè# &
(
èè& '
	promocion
èè' 0
)
èè0 1
;
èè1 2
Response
ëë 
.
ëë 
Redirect
ëë %
(
ëë% &
$str
ëë& [
)
ëë[ \
;
ëë\ ]
}
íí 
else
ìì 
{
îî 
MensajePanel
ïï  
.
ïï  !
Visible
ïï! (
=
ïï) *
true
ïï+ /
;
ïï/ 0
MensajeLabel
ññ  
.
ññ  !
Text
ññ! %
=
ññ& '
$str
ññ( ?
;
ññ? @
}
óó 
}
òò 
}
ôô 	
	protected
õõ 
void
õõ .
 GerenciaDdl_SelectedIndexChanged
õõ 7
(
õõ7 8
object
õõ8 >
sender
õõ? E
,
õõE F
	EventArgs
õõG P
e
õõQ R
)
õõR S
{
úú 	
int
ùù 

gerenciaId
ùù 
;
ùù 
if
ûû 
(
ûû 
int
ûû 
.
ûû 
TryParse
ûû 
(
ûû 
GerenciaDdl
ûû (
.
ûû( )
SelectedValue
ûû) 6
,
ûû6 7
out
ûû8 ;

gerenciaId
ûû< F
)
ûûF G
)
ûûG H
{
üü  
CargarSubgerencias
†† "
(
††" #

gerenciaId
††# -
)
††- .
;
††. /
}
°° 
else
¢¢ 
{
££ 
SubgerenciaDdl
§§ 
.
§§ 
Items
§§ $
.
§§$ %
Clear
§§% *
(
§§* +
)
§§+ ,
;
§§, -
SubgerenciaDdl
•• 
.
•• 
Items
•• $
.
••$ %
Insert
••% +
(
••+ ,
$num
••, -
,
••- .
new
••/ 2
ListItem
••3 ;
(
••; <
$str
••< S
,
••S T
$str
••U W
)
••W X
)
••X Y
;
••Y Z
DepartamentoDdl
¶¶ 
.
¶¶  
Items
¶¶  %
.
¶¶% &
Clear
¶¶& +
(
¶¶+ ,
)
¶¶, -
;
¶¶- .
DepartamentoDdl
ßß 
.
ßß  
Items
ßß  %
.
ßß% &
Insert
ßß& ,
(
ßß, -
$num
ßß- .
,
ßß. /
new
ßß0 3
ListItem
ßß4 <
(
ßß< =
$str
ßß= T
,
ßßT U
$str
ßßV X
)
ßßX Y
)
ßßY Z
;
ßßZ [
UbicacionDdl
®® 
.
®® 
Items
®® "
.
®®" #
Clear
®®# (
(
®®( )
)
®®) *
;
®®* +
UbicacionDdl
©© 
.
©© 
Items
©© "
.
©©" #
Insert
©©# )
(
©©) *
$num
©©* +
,
©©+ ,
new
©©- 0
ListItem
©©1 9
(
©©9 :
$str
©©: O
,
©©O P
$str
©©Q S
)
©©S T
)
©©T U
;
©©U V
}
™™ 
}
´´ 	
	protected
≠≠ 
void
≠≠ 1
#SubgerenciaDdl_SelectedIndexChanged
≠≠ :
(
≠≠: ;
object
≠≠; A
sender
≠≠B H
,
≠≠H I
	EventArgs
≠≠J S
e
≠≠T U
)
≠≠U V
{
ÆÆ 	
int
ØØ 
subgerenciaId
ØØ 
;
ØØ 
if
∞∞ 
(
∞∞ 
int
∞∞ 
.
∞∞ 
TryParse
∞∞ 
(
∞∞ 
SubgerenciaDdl
∞∞ +
.
∞∞+ ,
SelectedValue
∞∞, 9
,
∞∞9 :
out
∞∞; >
subgerenciaId
∞∞? L
)
∞∞L M
)
∞∞M N
{
±± !
CargarDepartamentos
≤≤ #
(
≤≤# $
subgerenciaId
≤≤$ 1
)
≤≤1 2
;
≤≤2 3
}
≥≥ 
else
¥¥ 
{
µµ 
DepartamentoDdl
∂∂ 
.
∂∂  
Items
∂∂  %
.
∂∂% &
Clear
∂∂& +
(
∂∂+ ,
)
∂∂, -
;
∂∂- .
DepartamentoDdl
∑∑ 
.
∑∑  
Items
∑∑  %
.
∑∑% &
Insert
∑∑& ,
(
∑∑, -
$num
∑∑- .
,
∑∑. /
new
∑∑0 3
ListItem
∑∑4 <
(
∑∑< =
$str
∑∑= T
,
∑∑T U
$str
∑∑V X
)
∑∑X Y
)
∑∑Y Z
;
∑∑Z [
UbicacionDdl
∏∏ 
.
∏∏ 
Items
∏∏ "
.
∏∏" #
Clear
∏∏# (
(
∏∏( )
)
∏∏) *
;
∏∏* +
UbicacionDdl
ππ 
.
ππ 
Items
ππ "
.
ππ" #
Insert
ππ# )
(
ππ) *
$num
ππ* +
,
ππ+ ,
new
ππ- 0
ListItem
ππ1 9
(
ππ9 :
$str
ππ: O
,
ππO P
$str
ππQ S
)
ππS T
)
ππT U
;
ππU V
}
∫∫ 
}
ªª 	
	protected
ΩΩ 
void
ΩΩ 2
$DepartamentoDdl_SelectedIndexChanged
ΩΩ ;
(
ΩΩ; <
object
ΩΩ< B
sender
ΩΩC I
,
ΩΩI J
	EventArgs
ΩΩK T
e
ΩΩU V
)
ΩΩV W
{
ææ 	
int
øø 
departamentoId
øø 
;
øø 
if
¿¿ 
(
¿¿ 
int
¿¿ 
.
¿¿ 
TryParse
¿¿ 
(
¿¿ 
DepartamentoDdl
¿¿ ,
.
¿¿, -
SelectedValue
¿¿- :
,
¿¿: ;
out
¿¿< ?
departamentoId
¿¿@ N
)
¿¿N O
)
¿¿O P
{
¡¡ 
CargarUbicaciones
¬¬ !
(
¬¬! "
departamentoId
¬¬" 0
)
¬¬0 1
;
¬¬1 2
}
√√ 
else
ƒƒ 
{
≈≈ 
UbicacionDdl
∆∆ 
.
∆∆ 
Items
∆∆ "
.
∆∆" #
Clear
∆∆# (
(
∆∆( )
)
∆∆) *
;
∆∆* +
UbicacionDdl
«« 
.
«« 
Items
«« "
.
««" #
Insert
««# )
(
««) *
$num
««* +
,
««+ ,
new
««- 0
ListItem
««1 9
(
««9 :
$str
««: O
,
««O P
$str
««Q S
)
««S T
)
««T U
;
««U V
}
»» 
}
…… 	
}
   
}ÀÀ ì+
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