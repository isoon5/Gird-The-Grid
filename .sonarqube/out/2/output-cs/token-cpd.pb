£	
TE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Areas\Identity\IdentityHostingStartup.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !
GirdTheGrid2! -
.- .
Server. 4
.4 5
Areas5 :
.: ;
Identity; C
.C D"
IdentityHostingStartupD Z
)Z [
)[ \
]\ ]
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Areas #
.# $
Identity$ ,
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{		 	
builder

 
.

 
ConfigureServices

 %
(

% &
(

& '
context

' .
,

. /
services

0 8
)

8 9
=>

: <
{

= >
} 
) 
; 
} 	
} 
} ıM
[E:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender 
emailSender $
)$ %
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_signInManager"" 
="" 
signInManager"" *
;""* +
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
ExternalLogins,,+ 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
[22 
Display22 
(22 
Name22 
=22 
$str22 #
)22# $
]22$ %
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
[55 
Required55 
]55 
[66 
StringLength66 
(66 
$num66 
,66 
ErrorMessage66 +
=66, -
$str66. l
,66l m
MinimumLength66n {
=66| }
$num66~ 
)	66 Ä
]
66Ä Å
[77 
DataType77 
(77 
DataType77 
.77 
Password77 '
)77' (
]77( )
[88 
Display88 
(88 
Name88 
=88 
$str88 &
)88& '
]88' (
public99 
string99 
Password99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
DataType;; 
(;; 
DataType;; 
.;; 
Password;; '
);;' (
];;( )
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< .
)<<. /
]<</ 0
[== 
Compare== 
(== 
$str== 
,==  
ErrorMessage==! -
===. /
$str==0 f
)==f g
]==g h
public>> 
string>> 
ConfirmPassword>> )
{>>* +
get>>, /
;>>/ 0
set>>1 4
;>>4 5
}>>6 7
}?? 	
publicAA 
asyncAA 
TaskAA 

OnGetAsyncAA $
(AA$ %
stringAA% +
	returnUrlAA, 5
=AA6 7
nullAA8 <
)AA< =
{BB 	
	ReturnUrlCC 
=CC 
	returnUrlCC !
;CC! "
ExternalLoginsDD 
=DD 
(DD 
awaitDD #
_signInManagerDD$ 2
.DD2 31
%GetExternalAuthenticationSchemesAsyncDD3 X
(DDX Y
)DDY Z
)DDZ [
.DD[ \
ToListDD\ b
(DDb c
)DDc d
;DDd e
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
stringGG5 ;
	returnUrlGG< E
=GGF G
nullGGH L
)GGL M
{HH 	
	returnUrlII 
??=II 
UrlII 
.II 
ContentII %
(II% &
$strII& *
)II* +
;II+ ,
ExternalLoginsJJ 
=JJ 
(JJ 
awaitJJ #
_signInManagerJJ$ 2
.JJ2 31
%GetExternalAuthenticationSchemesAsyncJJ3 X
(JJX Y
)JJY Z
)JJZ [
.JJ[ \
ToListJJ\ b
(JJb c
)JJc d
;JJd e
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
userMM 
=MM 
newMM 
ApplicationUserMM .
{MM/ 0
UserNameMM1 9
=MM: ;
InputMM< A
.MMA B
EmailMMB G
,MMG H
EmailMMI N
=MMO P
InputMMQ V
.MMV W
EmailMMW \
}MM] ^
;MM^ _
varNN 
resultNN 
=NN 
awaitNN "
_userManagerNN# /
.NN/ 0
CreateAsyncNN0 ;
(NN; <
userNN< @
,NN@ A
InputNNB G
.NNG H
PasswordNNH P
)NNP Q
;NNQ R
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
_loggerQQ 
.QQ 
LogInformationQQ *
(QQ* +
$strQQ+ V
)QQV W
;QQW X
varSS 
codeSS 
=SS 
awaitSS $
_userManagerSS% 1
.SS1 2/
#GenerateEmailConfirmationTokenAsyncSS2 U
(SSU V
userSSV Z
)SSZ [
;SS[ \
codeTT 
=TT 
WebEncodersTT &
.TT& '
Base64UrlEncodeTT' 6
(TT6 7
EncodingTT7 ?
.TT? @
UTF8TT@ D
.TTD E
GetBytesTTE M
(TTM N
codeTTN R
)TTR S
)TTS T
;TTT U
varUU 
callbackUrlUU #
=UU$ %
UrlUU& )
.UU) *
PageUU* .
(UU. /
$strVV /
,VV/ 0
pageHandlerWW #
:WW# $
nullWW% )
,WW) *
valuesXX 
:XX 
newXX  #
{XX$ %
areaXX& *
=XX+ ,
$strXX- 7
,XX7 8
userIdXX9 ?
=XX@ A
userXXB F
.XXF G
IdXXG I
,XXI J
codeXXK O
=XXP Q
codeXXR V
,XXV W
	returnUrlXXX a
=XXb c
	returnUrlXXd m
}XXn o
,XXo p
protocolYY  
:YY  !
RequestYY" )
.YY) *
SchemeYY* 0
)YY0 1
;YY1 2
await[[ 
_emailSender[[ &
.[[& '
SendEmailAsync[[' 5
([[5 6
Input[[6 ;
.[[; <
Email[[< A
,[[A B
$str[[C W
,[[W X
$"\\ 4
(Please confirm your account by <a href='\\ B
{\\B C
HtmlEncoder\\C N
.\\N O
Default\\O V
.\\V W
Encode\\W ]
(\\] ^
callbackUrl\\^ i
)\\i j
}\\j k 
'>clicking here</a>.\\k 
"	\\ Ä
)
\\Ä Å
;
\\Å Ç
if^^ 
(^^ 
_userManager^^ $
.^^$ %
Options^^% ,
.^^, -
SignIn^^- 3
.^^3 4#
RequireConfirmedAccount^^4 K
)^^K L
{__ 
return`` 
RedirectToPage`` -
(``- .
$str``. D
,``D E
new``F I
{``J K
email``L Q
=``R S
Input``T Y
.``Y Z
Email``Z _
,``_ `
	returnUrl``a j
=``k l
	returnUrl``m v
}``w x
)``x y
;``y z
}aa 
elsebb 
{cc 
awaitdd 
_signInManagerdd ,
.dd, -
SignInAsyncdd- 8
(dd8 9
userdd9 =
,dd= >
isPersistentdd? K
:ddK L
falseddM R
)ddR S
;ddS T
returnee 
LocalRedirectee ,
(ee, -
	returnUrlee- 6
)ee6 7
;ee7 8
}ff 
}gg 
foreachhh 
(hh 
varhh 
errorhh "
inhh# %
resulthh& ,
.hh, -
Errorshh- 3
)hh3 4
{ii 

ModelStatejj 
.jj 
AddModelErrorjj ,
(jj, -
stringjj- 3
.jj3 4
Emptyjj4 9
,jj9 :
errorjj; @
.jj@ A
DescriptionjjA L
)jjL M
;jjM N
}kk 
}ll 
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 	
}qq 
}rr ∞
VE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Controllers\OidcConfigurationController.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Controllers )
{ 
public 

class '
OidcConfigurationController ,
:- .

Controller/ 9
{ 
private		 
readonly		 
ILogger		  
<		  !'
OidcConfigurationController		! <
>		< =
_logger		> E
;		E F
public '
OidcConfigurationController *
(* +,
 IClientRequestParametersProvider+ K+
clientRequestParametersProviderL k
,k l
ILoggerm t
<t u(
OidcConfigurationController	u ê
>
ê ë
logger
í ò
)
ò ô
{ 	+
ClientRequestParametersProvider +
=, -+
clientRequestParametersProvider. M
;M N
_logger 
= 
logger 
; 
} 	
public ,
 IClientRequestParametersProvider /+
ClientRequestParametersProvider0 O
{P Q
getR U
;U V
}W X
[ 	
HttpGet	 
( 
$str ,
), -
]- .
public 
IActionResult &
GetClientRequestParameters 7
(7 8
[8 9
	FromRoute9 B
]B C
stringD J
clientIdK S
)S T
{ 	
var 

parameters 
= +
ClientRequestParametersProvider <
.< =
GetClientParameters= P
(P Q
HttpContextQ \
,\ ]
clientId^ f
)f g
;g h
return 
Ok 
( 

parameters  
)  !
;! "
} 	
} 
} Ω
PE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Controllers\Statistics2Controller.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Controllers )
{		 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class !
Statistics2Controller &
:' (
ControllerBase) 7
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public !
Statistics2Controller $
($ %
GirdTheGrid2% 1
.1 2
Server2 8
.8 9
Data9 =
.= >"
PowerStationsDbContext> T
contextU \
)\ ]
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
public 
List 
< 
Statistics2 
>  
Post! %
(% &
[& '
FromBody' /
]/ 0
PsStatistics21 >
statItem? G
)G H
{ 	
List 
< 
Statistics2 
> 
result $
=% &
new' *
List+ /
</ 0
Statistics20 ;
>; <
(< =
)= >
;> ?
var 
items 
= 
_context  
.  !
PowerStations! .
.. /
Where/ 4
(4 5
a5 6
=>7 9
a: ;
.; <
EnergyOutput< H
>=I K
statItemL T
.T U
	minOutputU ^
&&_ a
ab c
.c d
EnergyOutputd p
<=q s
statItems {
.{ |
	maxOutput	| Ö
)
Ö Ü
;
Ü á
foreach 
( 
var 
item 
in  
items! &
)& '
{ 
Statistics2 
newItem #
=$ %
new& )
Statistics2* 5
(5 6
)6 7
;7 8
newItem   
.   
EnergyOutput   $
=  % &
item  ' +
.  + ,
EnergyOutput  , 8
;  8 9
newItem!! 
.!! 
StationName!! #
=!!$ %
item!!& *
.!!* +
StationName!!+ 6
;!!6 7
newItem"" 
."" 
StationRegion"" %
=""& '
item""( ,
."", -
StationRegion""- :
;"": ;
newItem## 
.## 
StationType## #
=##$ %
item##& *
.##* +
StationType##+ 6
;##6 7
result$$ 
.$$ 
Add$$ 
($$ 
newItem$$ "
)$$" #
;$$# $
}&& 
return)) 
result)) 
;)) 
},, 	
}-- 
}.. •
PE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Controllers\Statistics3Controller.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Controllers )
{		 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class !
Statistics3Controller &
:' (
ControllerBase) 7
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public !
Statistics3Controller $
($ %
GirdTheGrid2% 1
.1 2
Server2 8
.8 9
Data9 =
.= >"
PowerStationsDbContext> T
contextU \
)\ ]
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
public 
List 
< 
Statistics2 
>  
Post! %
(% &
[& '
FromBody' /
]/ 0
PsStatistics31 >
statItem? G
)G H
{ 	
List 
< 
Statistics2 
> 
result $
=% &
new' *
List+ /
</ 0
Statistics20 ;
>; <
(< =
)= >
;> ?
var 
items 
= 
_context  
.  !
PowerStations! .
.. /
Where/ 4
(4 5
a5 6
=>7 9
a: ;
.; <
StationType< G
==H J
statItemK S
.S T
stationTypeT _
)_ `
;` a
foreach 
( 
var 
item 
in  
items! &
)& '
{ 
Statistics2 
newItem #
=$ %
new& )
Statistics2* 5
(5 6
)6 7
;7 8
newItem   
.   
EnergyOutput   $
=  % &
item  ' +
.  + ,
EnergyOutput  , 8
;  8 9
newItem!! 
.!! 
StationName!! #
=!!$ %
item!!& *
.!!* +
StationName!!+ 6
;!!6 7
newItem"" 
."" 
StationRegion"" %
=""& '
item""( ,
."", -
StationRegion""- :
;"": ;
newItem## 
.## 
StationType## #
=##$ %
item##& *
.##* +
StationType##+ 6
;##6 7
result$$ 
.$$ 
Add$$ 
($$ 
newItem$$ "
)$$" #
;$$# $
}&& 
return)) 
result)) 
;)) 
},, 	
}-- 
}.. ç
OE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Controllers\StatisticsController.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Controllers )
{ 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class  
StatisticsController %
:& '
ControllerBase( 6
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public  
StatisticsController #
(# $
GirdTheGrid2$ 0
.0 1
Server1 7
.7 8
Data8 <
.< ="
PowerStationsDbContext= S
contextT [
)[ \
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
public 
Statistics1 
Post  
(  !
[! "
FromBody" *
]* +
PsStatistics1, 9
statItem: B
)B C
{ 	
Statistics1 
result 
= 
new  #
Statistics1$ /
(/ 0
)0 1
;1 2
var 
items 
= 
_context  
.  !
PowerStations! .
.. /
Where/ 4
(4 5
a5 6
=>7 9
a: ;
.; <
StationRegion< I
.I J
EqualsJ P
(P Q
statItemQ Y
.Y Z

RegionNameZ d
)d e
)e f
;f g
int 
counter 
= 
$num 
; 
double 
totalPowerOutput #
=$ %
$num& '
;' (
foreach 
( 
var 
item 
in  
items! &
)& '
{ 
counter   
++   
;   
totalPowerOutput!!  
+=!!! #
item!!$ (
.!!( )
EnergyOutput!!) 5
;!!5 6
}"" 
result## 
.## 
Region## 
=## 
statItem## $
.##$ %

RegionName##% /
;##/ 0
result$$ 
.$$ 
TotalPowerOutput$$ #
=$$$ %
totalPowerOutput$$& 6
;$$6 7
result%% 
.%% 
NumberOfStations%% #
=%%$ %
counter%%& -
;%%- .
Console&& 
.&& 
	WriteLine&& 
(&& 
$str&& -
+&&. /
statItem&&0 8
.&&8 9

RegionName&&9 C
)&&C D
;&&D E
return'' 
result'' 
;'' 
}** 	
}++ 
},, ©
HE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Data\ApplicationDbContext.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Data "
{ 
public		 

class		  
ApplicationDbContext		 %
:		& '%
ApiAuthorizationDbContext		( A
<		A B
ApplicationUser		B Q
>		Q R
{

 
public  
ApplicationDbContext #
(# $
DbContextOptions 
<  
ApplicationDbContext 2
>2 3
options3 :
,: ;
IOptions 
< #
OperationalStoreOptions ,
>, -#
operationalStoreOptions. E
)E F
:G H
baseI M
(M N
optionsN U
,U V#
operationalStoreOptionsW n
)n o
{ 	
} 	
} 
} ˆû
bE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Data\Migrations\00000000000000_CreateIdentitySchema.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Data "
." #

Migrations# -
{ 
public 

partial 
class  
CreateIdentitySchema -
:. /
	Migration0 9
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
truee i
)i j
,j k
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
	maxLengthU ^
:^ _
$num` c
,c d
nullablee m
:m n
trueo s
)s t
,t u
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
	maxLengthH Q
:Q R
$numS V
,V W
nullableX `
:` a
trueb f
)f g
,g h
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
type  ; ?
:  ? @
$str  A P
,  P Q
	maxLength  R [
:  [ \
$num  ] `
,  ` a
nullable  b j
:  j k
true  l p
)  p q
,  q r
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
type!!8 <
:!!< =
$str!!> C
,!!C D
nullable!!E M
:!!M N
false!!O T
)!!T U
,!!U V
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
type""8 <
:""< =
$str""> M
,""M N
nullable""O W
:""W X
true""Y ]
)""] ^
,""^ _
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
type##9 =
:##= >
$str##? N
,##N O
nullable##P X
:##X Y
true##Z ^
)##^ _
,##_ `
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
type$$< @
:$$@ A
$str$$B Q
,$$Q R
nullable$$S [
:$$[ \
true$$] a
)$$a b
,$$b c
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
type%%7 ;
:%%; <
$str%%= L
,%%L M
nullable%%N V
:%%V W
true%%X \
)%%\ ]
,%%] ^ 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
type&&> B
:&&B C
$str&&D I
,&&I J
nullable&&K S
:&&S T
false&&U Z
)&&Z [
,&&[ \
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
type'': >
:''> ?
$str''@ E
,''E F
nullable''G O
:''O P
false''Q V
)''V W
,''W X

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
type((> B
:((B C
$str((D T
,((T U
nullable((V ^
:((^ _
true((` d
)((d e
,((e f
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
type))8 <
:))< =
$str))> C
,))C D
nullable))E M
:))M N
false))O T
)))T U
,))U V
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 #
,22# $
columns33 
:33 
table33 
=>33 !
new33" %
{44 
UserCode55 
=55 
table55 $
.55$ %
Column55% +
<55+ ,
string55, 2
>552 3
(553 4
type554 8
:558 9
$str55: I
,55I J
	maxLength55K T
:55T U
$num55V Y
,55Y Z
nullable55[ c
:55c d
false55e j
)55j k
,55k l

DeviceCode66 
=66  
table66! &
.66& '
Column66' -
<66- .
string66. 4
>664 5
(665 6
type666 :
:66: ;
$str66< K
,66K L
	maxLength66M V
:66V W
$num66X [
,66[ \
nullable66] e
:66e f
false66g l
)66l m
,66m n
	SubjectId77 
=77 
table77  %
.77% &
Column77& ,
<77, -
string77- 3
>773 4
(774 5
type775 9
:779 :
$str77; J
,77J K
	maxLength77L U
:77U V
$num77W Z
,77Z [
nullable77\ d
:77d e
true77f j
)77j k
,77k l
	SessionId88 
=88 
table88  %
.88% &
Column88& ,
<88, -
string88- 3
>883 4
(884 5
type885 9
:889 :
$str88; J
,88J K
	maxLength88L U
:88U V
$num88W Z
,88Z [
nullable88\ d
:88d e
true88f j
)88j k
,88k l
ClientId99 
=99 
table99 $
.99$ %
Column99% +
<99+ ,
string99, 2
>992 3
(993 4
type994 8
:998 9
$str99: I
,99I J
	maxLength99K T
:99T U
$num99V Y
,99Y Z
nullable99[ c
:99c d
false99e j
)99j k
,99k l
Description:: 
=::  !
table::" '
.::' (
Column::( .
<::. /
string::/ 5
>::5 6
(::6 7
type::7 ;
:::; <
$str::= L
,::L M
	maxLength::N W
:::W X
$num::Y \
,::\ ]
nullable::^ f
:::f g
true::h l
)::l m
,::m n
CreationTime;;  
=;;! "
table;;# (
.;;( )
Column;;) /
<;;/ 0
DateTime;;0 8
>;;8 9
(;;9 :
type;;: >
:;;> ?
$str;;@ K
,;;K L
nullable;;M U
:;;U V
false;;W \
);;\ ]
,;;] ^

Expiration<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
DateTime<<. 6
><<6 7
(<<7 8
type<<8 <
:<<< =
$str<<> I
,<<I J
nullable<<K S
:<<S T
false<<U Z
)<<Z [
,<<[ \
Data== 
=== 
table==  
.==  !
Column==! '
<==' (
string==( .
>==. /
(==/ 0
type==0 4
:==4 5
$str==6 E
,==E F
	maxLength==G P
:==P Q
$num==R W
,==W X
nullable==Y a
:==a b
false==c h
)==h i
}>> 
,>> 
constraints?? 
:?? 
table?? "
=>??# %
{@@ 
tableAA 
.AA 

PrimaryKeyAA $
(AA$ %
$strAA% 5
,AA5 6
xAA7 8
=>AA9 ;
xAA< =
.AA= >
UserCodeAA> F
)AAF G
;AAG H
}BB 
)BB 
;BB 
migrationBuilderDD 
.DD 
CreateTableDD (
(DD( )
nameEE 
:EE 
$strEE '
,EE' (
columnsFF 
:FF 
tableFF 
=>FF !
newFF" %
{GG 
KeyHH 
=HH 
tableHH 
.HH  
ColumnHH  &
<HH& '
stringHH' -
>HH- .
(HH. /
typeHH/ 3
:HH3 4
$strHH5 D
,HHD E
	maxLengthHHF O
:HHO P
$numHHQ T
,HHT U
nullableHHV ^
:HH^ _
falseHH` e
)HHe f
,HHf g
TypeII 
=II 
tableII  
.II  !
ColumnII! '
<II' (
stringII( .
>II. /
(II/ 0
typeII0 4
:II4 5
$strII6 D
,IID E
	maxLengthIIF O
:IIO P
$numIIQ S
,IIS T
nullableIIU ]
:II] ^
falseII_ d
)IId e
,IIe f
	SubjectIdJJ 
=JJ 
tableJJ  %
.JJ% &
ColumnJJ& ,
<JJ, -
stringJJ- 3
>JJ3 4
(JJ4 5
typeJJ5 9
:JJ9 :
$strJJ; J
,JJJ K
	maxLengthJJL U
:JJU V
$numJJW Z
,JJZ [
nullableJJ\ d
:JJd e
trueJJf j
)JJj k
,JJk l
	SessionIdKK 
=KK 
tableKK  %
.KK% &
ColumnKK& ,
<KK, -
stringKK- 3
>KK3 4
(KK4 5
typeKK5 9
:KK9 :
$strKK; J
,KKJ K
	maxLengthKKL U
:KKU V
$numKKW Z
,KKZ [
nullableKK\ d
:KKd e
trueKKf j
)KKj k
,KKk l
ClientIdLL 
=LL 
tableLL $
.LL$ %
ColumnLL% +
<LL+ ,
stringLL, 2
>LL2 3
(LL3 4
typeLL4 8
:LL8 9
$strLL: I
,LLI J
	maxLengthLLK T
:LLT U
$numLLV Y
,LLY Z
nullableLL[ c
:LLc d
falseLLe j
)LLj k
,LLk l
DescriptionMM 
=MM  !
tableMM" '
.MM' (
ColumnMM( .
<MM. /
stringMM/ 5
>MM5 6
(MM6 7
typeMM7 ;
:MM; <
$strMM= L
,MML M
	maxLengthMMN W
:MMW X
$numMMY \
,MM\ ]
nullableMM^ f
:MMf g
trueMMh l
)MMl m
,MMm n
CreationTimeNN  
=NN! "
tableNN# (
.NN( )
ColumnNN) /
<NN/ 0
DateTimeNN0 8
>NN8 9
(NN9 :
typeNN: >
:NN> ?
$strNN@ K
,NNK L
nullableNNM U
:NNU V
falseNNW \
)NN\ ]
,NN] ^

ExpirationOO 
=OO  
tableOO! &
.OO& '
ColumnOO' -
<OO- .
DateTimeOO. 6
>OO6 7
(OO7 8
typeOO8 <
:OO< =
$strOO> I
,OOI J
nullableOOK S
:OOS T
trueOOU Y
)OOY Z
,OOZ [
ConsumedTimePP  
=PP! "
tablePP# (
.PP( )
ColumnPP) /
<PP/ 0
DateTimePP0 8
>PP8 9
(PP9 :
typePP: >
:PP> ?
$strPP@ K
,PPK L
nullablePPM U
:PPU V
truePPW [
)PP[ \
,PP\ ]
DataQQ 
=QQ 
tableQQ  
.QQ  !
ColumnQQ! '
<QQ' (
stringQQ( .
>QQ. /
(QQ/ 0
typeQQ0 4
:QQ4 5
$strQQ6 E
,QQE F
	maxLengthQQG P
:QQP Q
$numQQR W
,QQW X
nullableQQY a
:QQa b
falseQQc h
)QQh i
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% 9
,UU9 :
xUU; <
=>UU= ?
xUU@ A
.UUA B
KeyUUB E
)UUE F
;UUF G
}VV 
)VV 
;VV 
migrationBuilderXX 
.XX 
CreateTableXX (
(XX( )
nameYY 
:YY 
$strYY (
,YY( )
columnsZZ 
:ZZ 
tableZZ 
=>ZZ !
newZZ" %
{[[ 
Id\\ 
=\\ 
table\\ 
.\\ 
Column\\ %
<\\% &
int\\& )
>\\) *
(\\* +
type\\+ /
:\\/ 0
$str\\1 6
,\\6 7
nullable\\8 @
:\\@ A
false\\B G
)\\G H
.]] 

Annotation]] #
(]]# $
$str]]$ 8
,]]8 9
$str]]: @
)]]@ A
,]]A B
RoleId^^ 
=^^ 
table^^ "
.^^" #
Column^^# )
<^^) *
string^^* 0
>^^0 1
(^^1 2
type^^2 6
:^^6 7
$str^^8 G
,^^G H
nullable^^I Q
:^^Q R
false^^S X
)^^X Y
,^^Y Z
	ClaimType__ 
=__ 
table__  %
.__% &
Column__& ,
<__, -
string__- 3
>__3 4
(__4 5
type__5 9
:__9 :
$str__; J
,__J K
nullable__L T
:__T U
true__V Z
)__Z [
,__[ \

ClaimValue`` 
=``  
table``! &
.``& '
Column``' -
<``- .
string``. 4
>``4 5
(``5 6
type``6 :
:``: ;
$str``< K
,``K L
nullable``M U
:``U V
true``W [
)``[ \
}aa 
,aa 
constraintsbb 
:bb 
tablebb "
=>bb# %
{cc 
tabledd 
.dd 

PrimaryKeydd $
(dd$ %
$strdd% :
,dd: ;
xdd< =
=>dd> @
xddA B
.ddB C
IdddC E
)ddE F
;ddF G
tableee 
.ee 

ForeignKeyee $
(ee$ %
nameff 
:ff 
$strff F
,ffF G
columngg 
:gg 
xgg  !
=>gg" $
xgg% &
.gg& '
RoleIdgg' -
,gg- .
principalTablehh &
:hh& '
$strhh( 5
,hh5 6
principalColumnii '
:ii' (
$strii) -
,ii- .
onDeletejj  
:jj  !
ReferentialActionjj" 3
.jj3 4
Cascadejj4 ;
)jj; <
;jj< =
}kk 
)kk 
;kk 
migrationBuildermm 
.mm 
CreateTablemm (
(mm( )
namenn 
:nn 
$strnn (
,nn( )
columnsoo 
:oo 
tableoo 
=>oo !
newoo" %
{pp 
Idqq 
=qq 
tableqq 
.qq 
Columnqq %
<qq% &
intqq& )
>qq) *
(qq* +
typeqq+ /
:qq/ 0
$strqq1 6
,qq6 7
nullableqq8 @
:qq@ A
falseqqB G
)qqG H
.rr 

Annotationrr #
(rr# $
$strrr$ 8
,rr8 9
$strrr: @
)rr@ A
,rrA B
UserIdss 
=ss 
tabless "
.ss" #
Columnss# )
<ss) *
stringss* 0
>ss0 1
(ss1 2
typess2 6
:ss6 7
$strss8 G
,ssG H
nullablessI Q
:ssQ R
falsessS X
)ssX Y
,ssY Z
	ClaimTypett 
=tt 
tablett  %
.tt% &
Columntt& ,
<tt, -
stringtt- 3
>tt3 4
(tt4 5
typett5 9
:tt9 :
$strtt; J
,ttJ K
nullablettL T
:ttT U
truettV Z
)ttZ [
,tt[ \

ClaimValueuu 
=uu  
tableuu! &
.uu& '
Columnuu' -
<uu- .
stringuu. 4
>uu4 5
(uu5 6
typeuu6 :
:uu: ;
$struu< K
,uuK L
nullableuuM U
:uuU V
trueuuW [
)uu[ \
}vv 
,vv 
constraintsww 
:ww 
tableww "
=>ww# %
{xx 
tableyy 
.yy 

PrimaryKeyyy $
(yy$ %
$stryy% :
,yy: ;
xyy< =
=>yy> @
xyyA B
.yyB C
IdyyC E
)yyE F
;yyF G
tablezz 
.zz 

ForeignKeyzz $
(zz$ %
name{{ 
:{{ 
$str{{ F
,{{F G
column|| 
:|| 
x||  !
=>||" $
x||% &
.||& '
UserId||' -
,||- .
principalTable}} &
:}}& '
$str}}( 5
,}}5 6
principalColumn~~ '
:~~' (
$str~~) -
,~~- .
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
migrationBuilder
ÇÇ 
.
ÇÇ 
CreateTable
ÇÇ (
(
ÇÇ( )
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ (
,
ÉÉ( )
columns
ÑÑ 
:
ÑÑ 
table
ÑÑ 
=>
ÑÑ !
new
ÑÑ" %
{
ÖÖ 
LoginProvider
ÜÜ !
=
ÜÜ" #
table
ÜÜ$ )
.
ÜÜ) *
Column
ÜÜ* 0
<
ÜÜ0 1
string
ÜÜ1 7
>
ÜÜ7 8
(
ÜÜ8 9
type
ÜÜ9 =
:
ÜÜ= >
$str
ÜÜ? N
,
ÜÜN O
	maxLength
ÜÜP Y
:
ÜÜY Z
$num
ÜÜ[ ^
,
ÜÜ^ _
nullable
ÜÜ` h
:
ÜÜh i
false
ÜÜj o
)
ÜÜo p
,
ÜÜp q
ProviderKey
áá 
=
áá  !
table
áá" '
.
áá' (
Column
áá( .
<
áá. /
string
áá/ 5
>
áá5 6
(
áá6 7
type
áá7 ;
:
áá; <
$str
áá= L
,
ááL M
	maxLength
ááN W
:
ááW X
$num
ááY \
,
áá\ ]
nullable
áá^ f
:
ááf g
false
ááh m
)
áám n
,
áán o!
ProviderDisplayName
àà '
=
àà( )
table
àà* /
.
àà/ 0
Column
àà0 6
<
àà6 7
string
àà7 =
>
àà= >
(
àà> ?
type
àà? C
:
ààC D
$str
ààE T
,
ààT U
nullable
ààV ^
:
àà^ _
true
àà` d
)
ààd e
,
ààe f
UserId
ââ 
=
ââ 
table
ââ "
.
ââ" #
Column
ââ# )
<
ââ) *
string
ââ* 0
>
ââ0 1
(
ââ1 2
type
ââ2 6
:
ââ6 7
$str
ââ8 G
,
ââG H
nullable
ââI Q
:
ââQ R
false
ââS X
)
ââX Y
}
ää 
,
ää 
constraints
ãã 
:
ãã 
table
ãã "
=>
ãã# %
{
åå 
table
çç 
.
çç 

PrimaryKey
çç $
(
çç$ %
$str
çç% :
,
çç: ;
x
çç< =
=>
çç> @
new
ççA D
{
ççE F
x
ççG H
.
ççH I
LoginProvider
ççI V
,
ççV W
x
ççX Y
.
ççY Z
ProviderKey
ççZ e
}
ççf g
)
ççg h
;
ççh i
table
éé 
.
éé 

ForeignKey
éé $
(
éé$ %
name
èè 
:
èè 
$str
èè F
,
èèF G
column
êê 
:
êê 
x
êê  !
=>
êê" $
x
êê% &
.
êê& '
UserId
êê' -
,
êê- .
principalTable
ëë &
:
ëë& '
$str
ëë( 5
,
ëë5 6
principalColumn
íí '
:
íí' (
$str
íí) -
,
íí- .
onDelete
ìì  
:
ìì  !
ReferentialAction
ìì" 3
.
ìì3 4
Cascade
ìì4 ;
)
ìì; <
;
ìì< =
}
îî 
)
îî 
;
îî 
migrationBuilder
ññ 
.
ññ 
CreateTable
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó '
,
óó' (
columns
òò 
:
òò 
table
òò 
=>
òò !
new
òò" %
{
ôô 
UserId
öö 
=
öö 
table
öö "
.
öö" #
Column
öö# )
<
öö) *
string
öö* 0
>
öö0 1
(
öö1 2
type
öö2 6
:
öö6 7
$str
öö8 G
,
ööG H
nullable
ööI Q
:
ööQ R
false
ööS X
)
ööX Y
,
ööY Z
RoleId
õõ 
=
õõ 
table
õõ "
.
õõ" #
Column
õõ# )
<
õõ) *
string
õõ* 0
>
õõ0 1
(
õõ1 2
type
õõ2 6
:
õõ6 7
$str
õõ8 G
,
õõG H
nullable
õõI Q
:
õõQ R
false
õõS X
)
õõX Y
}
úú 
,
úú 
constraints
ùù 
:
ùù 
table
ùù "
=>
ùù# %
{
ûû 
table
üü 
.
üü 

PrimaryKey
üü $
(
üü$ %
$str
üü% 9
,
üü9 :
x
üü; <
=>
üü= ?
new
üü@ C
{
üüD E
x
üüF G
.
üüG H
UserId
üüH N
,
üüN O
x
üüP Q
.
üüQ R
RoleId
üüR X
}
üüY Z
)
üüZ [
;
üü[ \
table
†† 
.
†† 

ForeignKey
†† $
(
††$ %
name
°° 
:
°° 
$str
°° E
,
°°E F
column
¢¢ 
:
¢¢ 
x
¢¢  !
=>
¢¢" $
x
¢¢% &
.
¢¢& '
RoleId
¢¢' -
,
¢¢- .
principalTable
££ &
:
££& '
$str
££( 5
,
££5 6
principalColumn
§§ '
:
§§' (
$str
§§) -
,
§§- .
onDelete
••  
:
••  !
ReferentialAction
••" 3
.
••3 4
Cascade
••4 ;
)
••; <
;
••< =
table
¶¶ 
.
¶¶ 

ForeignKey
¶¶ $
(
¶¶$ %
name
ßß 
:
ßß 
$str
ßß E
,
ßßE F
column
®® 
:
®® 
x
®®  !
=>
®®" $
x
®®% &
.
®®& '
UserId
®®' -
,
®®- .
principalTable
©© &
:
©©& '
$str
©©( 5
,
©©5 6
principalColumn
™™ '
:
™™' (
$str
™™) -
,
™™- .
onDelete
´´  
:
´´  !
ReferentialAction
´´" 3
.
´´3 4
Cascade
´´4 ;
)
´´; <
;
´´< =
}
¨¨ 
)
¨¨ 
;
¨¨ 
migrationBuilder
ÆÆ 
.
ÆÆ 
CreateTable
ÆÆ (
(
ÆÆ( )
name
ØØ 
:
ØØ 
$str
ØØ (
,
ØØ( )
columns
∞∞ 
:
∞∞ 
table
∞∞ 
=>
∞∞ !
new
∞∞" %
{
±± 
UserId
≤≤ 
=
≤≤ 
table
≤≤ "
.
≤≤" #
Column
≤≤# )
<
≤≤) *
string
≤≤* 0
>
≤≤0 1
(
≤≤1 2
type
≤≤2 6
:
≤≤6 7
$str
≤≤8 G
,
≤≤G H
nullable
≤≤I Q
:
≤≤Q R
false
≤≤S X
)
≤≤X Y
,
≤≤Y Z
LoginProvider
≥≥ !
=
≥≥" #
table
≥≥$ )
.
≥≥) *
Column
≥≥* 0
<
≥≥0 1
string
≥≥1 7
>
≥≥7 8
(
≥≥8 9
type
≥≥9 =
:
≥≥= >
$str
≥≥? N
,
≥≥N O
	maxLength
≥≥P Y
:
≥≥Y Z
$num
≥≥[ ^
,
≥≥^ _
nullable
≥≥` h
:
≥≥h i
false
≥≥j o
)
≥≥o p
,
≥≥p q
Name
¥¥ 
=
¥¥ 
table
¥¥  
.
¥¥  !
Column
¥¥! '
<
¥¥' (
string
¥¥( .
>
¥¥. /
(
¥¥/ 0
type
¥¥0 4
:
¥¥4 5
$str
¥¥6 E
,
¥¥E F
	maxLength
¥¥G P
:
¥¥P Q
$num
¥¥R U
,
¥¥U V
nullable
¥¥W _
:
¥¥_ `
false
¥¥a f
)
¥¥f g
,
¥¥g h
Value
µµ 
=
µµ 
table
µµ !
.
µµ! "
Column
µµ" (
<
µµ( )
string
µµ) /
>
µµ/ 0
(
µµ0 1
type
µµ1 5
:
µµ5 6
$str
µµ7 F
,
µµF G
nullable
µµH P
:
µµP Q
true
µµR V
)
µµV W
}
∂∂ 
,
∂∂ 
constraints
∑∑ 
:
∑∑ 
table
∑∑ "
=>
∑∑# %
{
∏∏ 
table
ππ 
.
ππ 

PrimaryKey
ππ $
(
ππ$ %
$str
ππ% :
,
ππ: ;
x
ππ< =
=>
ππ> @
new
ππA D
{
ππE F
x
ππG H
.
ππH I
UserId
ππI O
,
ππO P
x
ππQ R
.
ππR S
LoginProvider
ππS `
,
ππ` a
x
ππb c
.
ππc d
Name
ππd h
}
ππi j
)
ππj k
;
ππk l
table
∫∫ 
.
∫∫ 

ForeignKey
∫∫ $
(
∫∫$ %
name
ªª 
:
ªª 
$str
ªª F
,
ªªF G
column
ºº 
:
ºº 
x
ºº  !
=>
ºº" $
x
ºº% &
.
ºº& '
UserId
ºº' -
,
ºº- .
principalTable
ΩΩ &
:
ΩΩ& '
$str
ΩΩ( 5
,
ΩΩ5 6
principalColumn
ææ '
:
ææ' (
$str
ææ) -
,
ææ- .
onDelete
øø  
:
øø  !
ReferentialAction
øø" 3
.
øø3 4
Cascade
øø4 ;
)
øø; <
;
øø< =
}
¿¿ 
)
¿¿ 
;
¿¿ 
migrationBuilder
¬¬ 
.
¬¬ 
CreateIndex
¬¬ (
(
¬¬( )
name
√√ 
:
√√ 
$str
√√ 2
,
√√2 3
table
ƒƒ 
:
ƒƒ 
$str
ƒƒ )
,
ƒƒ) *
column
≈≈ 
:
≈≈ 
$str
≈≈  
)
≈≈  !
;
≈≈! "
migrationBuilder
«« 
.
«« 
CreateIndex
«« (
(
««( )
name
»» 
:
»» 
$str
»» %
,
»»% &
table
…… 
:
…… 
$str
…… $
,
……$ %
column
   
:
   
$str
   (
,
  ( )
unique
ÀÀ 
:
ÀÀ 
true
ÀÀ 
,
ÀÀ 
filter
ÃÃ 
:
ÃÃ 
$str
ÃÃ 6
)
ÃÃ6 7
;
ÃÃ7 8
migrationBuilder
ŒŒ 
.
ŒŒ 
CreateIndex
ŒŒ (
(
ŒŒ( )
name
œœ 
:
œœ 
$str
œœ 2
,
œœ2 3
table
–– 
:
–– 
$str
–– )
,
––) *
column
—— 
:
—— 
$str
——  
)
——  !
;
——! "
migrationBuilder
”” 
.
”” 
CreateIndex
”” (
(
””( )
name
‘‘ 
:
‘‘ 
$str
‘‘ 2
,
‘‘2 3
table
’’ 
:
’’ 
$str
’’ )
,
’’) *
column
÷÷ 
:
÷÷ 
$str
÷÷  
)
÷÷  !
;
÷÷! "
migrationBuilder
ÿÿ 
.
ÿÿ 
CreateIndex
ÿÿ (
(
ÿÿ( )
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ 1
,
ŸŸ1 2
table
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ (
,
⁄⁄( )
column
€€ 
:
€€ 
$str
€€  
)
€€  !
;
€€! "
migrationBuilder
›› 
.
›› 
CreateIndex
›› (
(
››( )
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ "
,
ﬁﬁ" #
table
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ $
,
ﬂﬂ$ %
column
‡‡ 
:
‡‡ 
$str
‡‡ )
)
‡‡) *
;
‡‡* +
migrationBuilder
‚‚ 
.
‚‚ 
CreateIndex
‚‚ (
(
‚‚( )
name
„„ 
:
„„ 
$str
„„ %
,
„„% &
table
‰‰ 
:
‰‰ 
$str
‰‰ $
,
‰‰$ %
column
ÂÂ 
:
ÂÂ 
$str
ÂÂ ,
,
ÂÂ, -
unique
ÊÊ 
:
ÊÊ 
true
ÊÊ 
,
ÊÊ 
filter
ÁÁ 
:
ÁÁ 
$str
ÁÁ :
)
ÁÁ: ;
;
ÁÁ; <
migrationBuilder
ÈÈ 
.
ÈÈ 
CreateIndex
ÈÈ (
(
ÈÈ( )
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ 1
,
ÍÍ1 2
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ $
,
ÎÎ$ %
column
ÏÏ 
:
ÏÏ 
$str
ÏÏ $
,
ÏÏ$ %
unique
ÌÌ 
:
ÌÌ 
true
ÌÌ 
)
ÌÌ 
;
ÌÌ 
migrationBuilder
ÔÔ 
.
ÔÔ 
CreateIndex
ÔÔ (
(
ÔÔ( )
name
 
:
 
$str
 1
,
1 2
table
ÒÒ 
:
ÒÒ 
$str
ÒÒ $
,
ÒÒ$ %
column
ÚÚ 
:
ÚÚ 
$str
ÚÚ $
)
ÚÚ$ %
;
ÚÚ% &
migrationBuilder
ÙÙ 
.
ÙÙ 
CreateIndex
ÙÙ (
(
ÙÙ( )
name
ıı 
:
ıı 
$str
ıı 5
,
ıı5 6
table
ˆˆ 
:
ˆˆ 
$str
ˆˆ (
,
ˆˆ( )
column
˜˜ 
:
˜˜ 
$str
˜˜ $
)
˜˜$ %
;
˜˜% &
migrationBuilder
˘˘ 
.
˘˘ 
CreateIndex
˘˘ (
(
˘˘( )
name
˙˙ 
:
˙˙ 
$str
˙˙ B
,
˙˙B C
table
˚˚ 
:
˚˚ 
$str
˚˚ (
,
˚˚( )
columns
¸¸ 
:
¸¸ 
new
¸¸ 
[
¸¸ 
]
¸¸ 
{
¸¸  
$str
¸¸! ,
,
¸¸, -
$str
¸¸. 8
,
¸¸8 9
$str
¸¸: @
}
¸¸A B
)
¸¸B C
;
¸¸C D
migrationBuilder
˛˛ 
.
˛˛ 
CreateIndex
˛˛ (
(
˛˛( )
name
ˇˇ 
:
ˇˇ 
$str
ˇˇ C
,
ˇˇC D
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ (
,
ÄÄ( )
columns
ÅÅ 
:
ÅÅ 
new
ÅÅ 
[
ÅÅ 
]
ÅÅ 
{
ÅÅ  
$str
ÅÅ! ,
,
ÅÅ, -
$str
ÅÅ. 9
,
ÅÅ9 :
$str
ÅÅ; A
}
ÅÅB C
)
ÅÅC D
;
ÅÅD E
}
ÇÇ 	
	protected
ÑÑ 
override
ÑÑ 
void
ÑÑ 
Down
ÑÑ  $
(
ÑÑ$ %
MigrationBuilder
ÑÑ% 5
migrationBuilder
ÑÑ6 F
)
ÑÑF G
{
ÖÖ 	
migrationBuilder
ÜÜ 
.
ÜÜ 
	DropTable
ÜÜ &
(
ÜÜ& '
name
áá 
:
áá 
$str
áá (
)
áá( )
;
áá) *
migrationBuilder
ââ 
.
ââ 
	DropTable
ââ &
(
ââ& '
name
ää 
:
ää 
$str
ää (
)
ää( )
;
ää) *
migrationBuilder
åå 
.
åå 
	DropTable
åå &
(
åå& '
name
çç 
:
çç 
$str
çç (
)
çç( )
;
çç) *
migrationBuilder
èè 
.
èè 
	DropTable
èè &
(
èè& '
name
êê 
:
êê 
$str
êê '
)
êê' (
;
êê( )
migrationBuilder
íí 
.
íí 
	DropTable
íí &
(
íí& '
name
ìì 
:
ìì 
$str
ìì (
)
ìì( )
;
ìì) *
migrationBuilder
ïï 
.
ïï 
	DropTable
ïï &
(
ïï& '
name
ññ 
:
ññ 
$str
ññ #
)
ññ# $
;
ññ$ %
migrationBuilder
òò 
.
òò 
	DropTable
òò &
(
òò& '
name
ôô 
:
ôô 
$str
ôô '
)
ôô' (
;
ôô( )
migrationBuilder
õõ 
.
õõ 
	DropTable
õõ &
(
õõ& '
name
úú 
:
úú 
$str
úú #
)
úú# $
;
úú$ %
migrationBuilder
ûû 
.
ûû 
	DropTable
ûû &
(
ûû& '
name
üü 
:
üü 
$str
üü #
)
üü# $
;
üü$ %
}
†† 	
}
°° 
}¢¢ Ì
JE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Data\PowerStationsDbContext.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Data "
{		 
public

 

class

 "
PowerStationsDbContext

 '
:

( )
	DbContext

* 3
{ 
public "
PowerStationsDbContext %
(& '
DbContextOptions' 7
<7 8"
PowerStationsDbContext8 N
>N O
optionsP W
)W X
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
GirdTheGrid2 !
.! "
Server" (
.( )
Models) /
./ 0
PowerStations0 =
>= >
PowerStations? L
{M N
getO R
;R S
setT W
;W X
}Y Z
} 
} ÿ
VE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Migrations\20210411201910_PowerStations.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 

Migrations (
{ 
public 

partial 
class 
PowerStations &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 %
,

% &
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
StationName 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
StationType 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
EnergyOutput  
=! "
table# (
.( )
Column) /
</ 0
float0 5
>5 6
(6 7
type7 ;
:; <
$str= C
,C D
nullableE M
:M N
falseO T
)T U
,U V
StationRegion !
=" #
table$ )
.) *
Column* 0
<0 1
string1 7
>7 8
(8 9
type9 =
:= >
$str? N
,N O
nullableP X
:X Y
falseZ _
)_ `
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 7
,7 8
x9 :
=>; =
x> ?
.? @
Id@ B
)B C
;C D
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str %
)% &
;& '
} 	
}   
}!! ·
EE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Models\ApplicationUser.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Models $
{ 
public 

class 
ApplicationUser  
:! "
IdentityUser# /
{ 
} 
} Â
CE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Models\PowerStations.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Models $
{ 
public 

class 
PowerStations 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
public 
string 
StationName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[		 	
Required			 
]		 
public

 
string

 
UserName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Required	 
] 
public 
string 
StationType !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
float 
EnergyOutput !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
string 
StationRegion #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Ô
AE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Error.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
[		 "
IgnoreAntiforgeryToken		 
]		 
public

 

class

 

ErrorModel

 
:

 
	PageModel

 '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} π
KE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Stations\Create.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
.# $
Stations$ ,
{ 
public 

class 
CreateModel 
: 
	PageModel (
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public 
CreateModel 
( 
GirdTheGrid2 '
.' (
Server( .
.. /
Data/ 3
.3 4"
PowerStationsDbContext4 J
contextK R
)R S
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
OnGet "
(" #
)# $
{ 	
return 
Page 
( 
) 
; 
} 	
[ 	
BindProperty	 
] 
public 
PowerStations 
PowerStations *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (
OnPostAsync) 4
(4 5
)5 6
{   	
if!! 
(!! 
!!! 

ModelState!! 
.!! 
IsValid!! #
)!!# $
{"" 
return## 
Page## 
(## 
)## 
;## 
}$$ 
_context&& 
.&& 
PowerStations&& "
.&&" #
Add&&# &
(&&& '
PowerStations&&' 4
)&&4 5
;&&5 6
await'' 
_context'' 
.'' 
SaveChangesAsync'' +
(''+ ,
)'', -
;''- .
return)) 
RedirectToPage)) !
())! "
$str))" +
)))+ ,
;)), -
}** 	
}++ 
},, ¥
KE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Stations\Delete.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
.# $
Stations$ ,
{ 
public 

class 
DeleteModel 
: 
	PageModel (
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public 
DeleteModel 
( 
GirdTheGrid2 '
.' (
Server( .
.. /
Data/ 3
.3 4"
PowerStationsDbContext4 J
contextK R
)R S
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
PowerStations 
PowerStations *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
PowerStations   
=   
await   !
_context  " *
.  * +
PowerStations  + 8
.  8 9
FirstOrDefaultAsync  9 L
(  L M
m  M N
=>  O Q
m  R S
.  S T
Id  T V
==  W Y
id  Z \
)  \ ]
;  ] ^
if"" 
("" 
PowerStations"" 
==""  
null""! %
)""% &
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
return&& 
Page&& 
(&& 
)&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
OnPostAsync))) 4
())4 5
int))5 8
?))8 9
id)): <
)))< =
{** 	
if++ 
(++ 
id++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
PowerStations00 
=00 
await00 !
_context00" *
.00* +
PowerStations00+ 8
.008 9
	FindAsync009 B
(00B C
id00C E
)00E F
;00F G
if22 
(22 
PowerStations22 
!=22  
null22! %
)22% &
{33 
_context44 
.44 
PowerStations44 &
.44& '
Remove44' -
(44- .
PowerStations44. ;
)44; <
;44< =
await55 
_context55 
.55 
SaveChangesAsync55 /
(55/ 0
)550 1
;551 2
}66 
return88 
RedirectToPage88 !
(88! "
$str88" +
)88+ ,
;88, -
}99 	
}:: 
};; ≠
LE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Stations\Details.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
.# $
Stations$ ,
{ 
public 

class 
DetailsModel 
: 
	PageModel  )
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public 
DetailsModel 
( 
GirdTheGrid2 (
.( )
Server) /
./ 0
Data0 4
.4 5"
PowerStationsDbContext5 K
contextL S
)S T
{ 	
_context 
= 
context 
; 
} 	
public 
PowerStations 
PowerStations *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
PowerStations 
= 
await !
_context" *
.* +
PowerStations+ 8
.8 9
FirstOrDefaultAsync9 L
(L M
mM N
=>O Q
mR S
.S T
IdT V
==W Y
idZ \
)\ ]
;] ^
if!! 
(!! 
PowerStations!! 
==!!  
null!!! %
)!!% &
{"" 
return## 
NotFound## 
(##  
)##  !
;##! "
}$$ 
return%% 
Page%% 
(%% 
)%% 
;%% 
}&& 	
}'' 
}(( « 
IE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Stations\Edit.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
.# $
Stations$ ,
{ 
public 

class 
	EditModel 
: 
	PageModel &
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public 
	EditModel 
( 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
contextI P
)P Q
{ 	
_context 
= 
context 
; 
} 	
[ 	
BindProperty	 
] 
public 
PowerStations 
PowerStations *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
int4 7
?7 8
id9 ;
); <
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
PowerStations!! 
=!! 
await!! !
_context!!" *
.!!* +
PowerStations!!+ 8
.!!8 9
FirstOrDefaultAsync!!9 L
(!!L M
m!!M N
=>!!O Q
m!!R S
.!!S T
Id!!T V
==!!W Y
id!!Z \
)!!\ ]
;!!] ^
if## 
(## 
PowerStations## 
==##  
null##! %
)##% &
{$$ 
return%% 
NotFound%% 
(%%  
)%%  !
;%%! "
}&& 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
if.. 
(.. 
!.. 

ModelState.. 
... 
IsValid.. #
)..# $
{// 
return00 
Page00 
(00 
)00 
;00 
}11 
_context33 
.33 
Attach33 
(33 
PowerStations33 )
)33) *
.33* +
State33+ 0
=331 2
EntityState333 >
.33> ?
Modified33? G
;33G H
try55 
{66 
await77 
_context77 
.77 
SaveChangesAsync77 /
(77/ 0
)770 1
;771 2
}88 
catch99 
(99 (
DbUpdateConcurrencyException99 /
)99/ 0
{:: 
if;; 
(;; 
!;; 
PowerStationsExists;; (
(;;( )
PowerStations;;) 6
.;;6 7
Id;;7 9
);;9 :
);;: ;
{<< 
return== 
NotFound== #
(==# $
)==$ %
;==% &
}>> 
else?? 
{@@ 
throwAA 
;AA 
}BB 
}CC 
returnEE 
RedirectToPageEE !
(EE! "
$strEE" +
)EE+ ,
;EE, -
}FF 	
privateHH 
boolHH 
PowerStationsExistsHH (
(HH( )
intHH) ,
idHH- /
)HH/ 0
{II 	
returnJJ 
_contextJJ 
.JJ 
PowerStationsJJ )
.JJ) *
AnyJJ* -
(JJ- .
eJJ. /
=>JJ0 2
eJJ3 4
.JJ4 5
IdJJ5 7
==JJ8 :
idJJ; =
)JJ= >
;JJ> ?
}KK 	
}LL 
}MM Ú
JE:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Pages\Stations\Index.cshtml.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
. 
Pages #
.# $
Stations$ ,
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
GirdTheGrid2 %
.% &
Server& ,
., -
Data- 1
.1 2"
PowerStationsDbContext2 H
_contextI Q
;Q R
public 

IndexModel 
( 
GirdTheGrid2 &
.& '
Server' -
.- .
Data. 2
.2 3"
PowerStationsDbContext3 I
contextJ Q
)Q R
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< 
PowerStations "
>" #
PowerStations$ 1
{2 3
get4 7
;7 8
set8 ;
;; <
}= >
public 
async 
Task 

OnGetAsync $
($ %
)% &
{ 	
PowerStations 
= 
await !
_context" *
.* +
PowerStations+ 8
.8 9
ToListAsync9 D
(D E
)E F
;F G
} 	
} 
} «

6E:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Program.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
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
} ¿)
6E:\tsp.net\GirdTheGrid2\GirdTheGrid2\Server\Startup.cs
	namespace 	
GirdTheGrid2
 
. 
Server 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddDbContext !
<! " 
ApplicationDbContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
UseSqlServer $
($ %
Configuration !
.! "
GetConnectionString" 5
(5 6
$str6 I
)I J
)J K
)K L
;L M
services 
. 3
'AddDatabaseDeveloperPageExceptionFilter <
(< =
)= >
;> ?
services!! 
.!! 
AddDefaultIdentity!! '
<!!' (
ApplicationUser!!( 7
>!!7 8
(!!8 9
options!!9 @
=>!!A C
options!!D K
.!!K L
SignIn!!L R
.!!R S#
RequireConfirmedAccount!!S j
=!!k l
false!!m r
)!!r s
."" $
AddEntityFrameworkStores"" )
<"") * 
ApplicationDbContext""* >
>""> ?
(""? @
)""@ A
;""A B
services$$ 
.$$ 
AddIdentityServer$$ &
($$& '
)$$' (
.%% 
AddApiAuthorization%% $
<%%$ %
ApplicationUser%%% 4
,%%4 5 
ApplicationDbContext%%6 J
>%%J K
(%%K L
)%%L M
;%%M N
services'' 
.'' 
AddAuthentication'' &
(''& '
)''' (
.((  
AddIdentityServerJwt(( %
(((% &
)((& '
;((' (
services** 
.** #
AddControllersWithViews** ,
(**, -
)**- .
;**. /
services++ 
.++ 
AddRazorPages++ "
(++" #
)++# $
;++$ %
services-- 
.-- 
AddDbContext-- !
<--! ""
PowerStationsDbContext--" 8
>--8 9
(--9 :
options--: A
=>--B D
options.. 
... 
UseSqlServer.. (
(..( )
Configuration..) 6
...6 7
GetConnectionString..7 J
(..J K
$str..K c
)..c d
)..d e
)..e f
;..f g
}33 	
public66 
void66 
	Configure66 
(66 
IApplicationBuilder66 1
app662 5
,665 6
IWebHostEnvironment667 J
env66K N
)66N O
{77 	
if88 
(88 
env88 
.88 
IsDevelopment88 !
(88! "
)88" #
)88# $
{99 
app:: 
.:: %
UseDeveloperExceptionPage:: -
(::- .
)::. /
;::/ 0
app;; 
.;; !
UseMigrationsEndPoint;; )
(;;) *
);;* +
;;;+ ,
app<< 
.<< #
UseWebAssemblyDebugging<< +
(<<+ ,
)<<, -
;<<- .
}== 
else>> 
{?? 
app@@ 
.@@ 
UseExceptionHandler@@ '
(@@' (
$str@@( 0
)@@0 1
;@@1 2
appBB 
.BB 
UseHstsBB 
(BB 
)BB 
;BB 
}CC 
appEE 
.EE 
UseHttpsRedirectionEE #
(EE# $
)EE$ %
;EE% &
appFF 
.FF #
UseBlazorFrameworkFilesFF '
(FF' (
)FF( )
;FF) *
appGG 
.GG 
UseStaticFilesGG 
(GG 
)GG  
;GG  !
appII 
.II 

UseRoutingII 
(II 
)II 
;II 
appKK 
.KK 
UseIdentityServerKK !
(KK! "
)KK" #
;KK# $
appLL 
.LL 
UseAuthenticationLL !
(LL! "
)LL" #
;LL# $
appMM 
.MM 
UseAuthorizationMM  
(MM  !
)MM! "
;MM" #
appOO 
.OO 
UseEndpointsOO 
(OO 
	endpointsOO &
=>OO' )
{PP 
	endpointsQQ 
.QQ 
MapRazorPagesQQ '
(QQ' (
)QQ( )
;QQ) *
	endpointsRR 
.RR 
MapControllersRR (
(RR( )
)RR) *
;RR* +
	endpointsSS 
.SS 
MapFallbackToFileSS +
(SS+ ,
$strSS, 8
)SS8 9
;SS9 :
}TT 
)TT 
;TT 
}UU 	
}VV 
}WW 