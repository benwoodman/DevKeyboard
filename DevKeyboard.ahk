Menu, Tray, Icon, %A_ScriptDir%\Power-LOAD.ico, 1, 1

#SingleInstance ignore

UrlDownloadToFile, http://woodmantech.com/versions/DevKeyboardVersion.txt, %A_AppData%\DevKeyboard\Latest_Version.txt

FileRead, latestversion, %A_AppData%\DevKeyboard\Latest_Version.txt

if not ErrorLevel  ; Successfully loaded.
{
    if latestversion > 1.4
	{
		MsgBox, 1,, NEW UPDATE: Please press "OK" to update DevKeyboard to version %latestversion%.
			IfMsgBox Ok  
			{
				Run, http://devkeyboard.woodmantech.com/update-devkeyboard.html
				ExitApp
			}	
	}	
}

IfNotExist %A_AppData%\DevKeyboard
	FileCreateDir, %A_AppData%\DevKeyboard

IfNotExist %A_AppData%\DevKeyboard\time.txt 
	FileAppend, 0.15, %A_AppData%\DevKeyboard\time.txt

IfNotExist %A_AppData%\DevKeyboard\G.txt 
	FileAppend, <, %A_AppData%\DevKeyboard\G.txt 

IfNotExist %A_AppData%\DevKeyboard\H.txt 
	FileAppend, >, %A_AppData%\DevKeyboard\H.txt 

IfNotExist %A_AppData%\DevKeyboard\F.txt 
	FileAppend, {, %A_AppData%\DevKeyboard\F.txt 

IfNotExist %A_AppData%\DevKeyboard\J.txt 
	FileAppend, }, %A_AppData%\DevKeyboard\J.txt 

IfNotExist %A_AppData%\DevKeyboard\D.txt 
	FileAppend, (, %A_AppData%\DevKeyboard\D.txt 

IfNotExist %A_AppData%\DevKeyboard\K.txt 
	FileAppend, ), %A_AppData%\DevKeyboard\K.txt 

IfNotExist %A_AppData%\DevKeyboard\S.txt 
	FileAppend, [, %A_AppData%\DevKeyboard\S.txt 

IfNotExist %A_AppData%\DevKeyboard\A.txt 
	FileAppend, !, %A_AppData%\DevKeyboard\A.txt  

IfNotExist %A_AppData%\DevKeyboard\L.txt 
	FileAppend, ], %A_AppData%\DevKeyboard\L.txt 

IfNotExist %A_AppData%\DevKeyboard\Z.txt 
	FileAppend, ``, %A_AppData%\DevKeyboard\Z.txt 

IfNotExist %A_AppData%\DevKeyboard\X.txt 
	FileAppend, +, %A_AppData%\DevKeyboard\X.txt 

IfNotExist %A_AppData%\DevKeyboard\C.txt 
	FileAppend, &, %A_AppData%\DevKeyboard\C.txt 

IfNotExist %A_AppData%\DevKeyboard\V.txt 
	FileAppend, =, %A_AppData%\DevKeyboard\V.txt 

IfNotExist %A_AppData%\DevKeyboard\B.txt 
	FileAppend, ||, %A_AppData%\DevKeyboard\B.txt 

IfNotExist %A_AppData%\DevKeyboard\N.txt 
	FileAppend, ==, %A_AppData%\DevKeyboard\N.txt 

IfNotExist %A_AppData%\DevKeyboard\M.txt 
	FileAppend, ", %A_AppData%\DevKeyboard\M.txt 

IfNotExist %A_AppData%\DevKeyboard\Comma.txt 
	FileAppend, &&, %A_AppData%\DevKeyboard\Comma.txt 

IfNotExist %A_AppData%\DevKeyboard\Semicolon.txt 
	FileAppend, true, %A_AppData%\DevKeyboard\Semicolon.txt 

IfNotExist %A_AppData%\DevKeyboard\Q.txt 
	FileAppend,, %A_AppData%\DevKeyboard\Q.txt 

IfNotExist %A_AppData%\DevKeyboard\W.txt 
	FileAppend,, %A_AppData%\DevKeyboard\W.txt 

IfNotExist %A_AppData%\DevKeyboard\E.txt 
	FileAppend,, %A_AppData%\DevKeyboard\E.txt 

IfNotExist %A_AppData%\DevKeyboard\R.txt 
	FileAppend,, %A_AppData%\DevKeyboard\R.txt 

IfNotExist %A_AppData%\DevKeyboard\T.txt 
	FileAppend,, %A_AppData%\DevKeyboard\T.txt 

IfNotExist %A_AppData%\DevKeyboard\Y.txt 
	FileAppend,, %A_AppData%\DevKeyboard\Y.txt 

IfNotExist %A_AppData%\DevKeyboard\U.txt 
	FileAppend,, %A_AppData%\DevKeyboard\U.txt 

IfNotExist %A_AppData%\DevKeyboard\I.txt 
	FileAppend,, %A_AppData%\DevKeyboard\I.txt 

IfNotExist %A_AppData%\DevKeyboard\O.txt 
	FileAppend,, %A_AppData%\DevKeyboard\O.txt 

IfNotExist %A_AppData%\DevKeyboard\P.txt 
	FileAppend,, %A_AppData%\DevKeyboard\P.txt 

IfNotExist %A_AppData%\DevKeyboard\OpenAuto.txt 
	FileAppend,, %A_AppData%\DevKeyboard\OpenAuto.txt 

Gui, Add, Text,, Edit G:
Gui, Add, Text,, Edit H:
Gui, Add, Text,, Edit F:
Gui, Add, Text,, Edit J:
Gui, Add, Text,, Edit D:
Gui, Add, Text,, Edit K:
Gui, Add, Text,, Edit S:
Gui, Add, Text,, Edit A:
Gui, Add, Text,, Edit L:
Gui, Add, Text,, Edit Z:
Gui, Add, Text,, Edit X:
Gui, Add, Text,, Edit C:
Gui, Add, Text,, Edit Q:


Gui, Add, Edit, r1 vGEdit ym
Gui, Add, Edit, r1 vHEdit
Gui, Add, Edit, r1 vFEdit
Gui, Add, Edit, r1 vJEdit
Gui, Add, Edit, r1 vDEdit
Gui, Add, Edit, r1 vKEdit
Gui, Add, Edit, r1 vSEdit
Gui, Add, Edit, r1 vAEdit
Gui, Add, Edit, r1 vLEdit 
Gui, Add, Edit, r1 vZEdit
Gui, Add, Edit, r1 vXEdit
Gui, Add, Edit, r1 vCEdit
Gui, Add, Edit, r1 vQEdit

Gui, Add, Text, ym, Edit W:
Gui, Add, Text,, Edit E:
Gui, Add, Text,, Edit R:
Gui, Add, Text,, Edit T:
Gui, Add, Text,, Edit Y:
Gui, Add, Text,, Edit U:
Gui, Add, Text,, Edit I:
Gui, Add, Text,, Edit O:
Gui, Add, Text,, Edit P:
Gui, Add, Text,, Edit V:
Gui, Add, Text,, Edit B:
Gui, Add, Text,, Edit N:
Gui, Add, Text,, Edit M:


Gui, Add, Edit, r1 vWEdit ym
Gui, Add, Edit, r1 vEEdit
Gui, Add, Edit, r1 vREdit
Gui, Add, Edit, r1 vTEdit
Gui, Add, Edit, r1 vYEdit
Gui, Add, Edit, r1 vUEdit
Gui, Add, Edit, r1 vIEdit
Gui, Add, Edit, r1 vOEdit
Gui, Add, Edit, r1 vPEdit
Gui, Add, Edit, r1 vVEdit
Gui, Add, Edit, r1 vBEdit
Gui, Add, Edit, r1 vNEdit
Gui, Add, Edit, r1 vMEdit

; +Section creates a "section", so further columning done with ys or ym
; (instead of ym and xm) works relative to only that section and the objects 
; int it. In short, useful for nesting columns.
Gui, Add, Text, ym +Section, Edit Comma:
Gui, Add, Text,, Hold Down Time:


Gui, Add, Edit, r1 vCommaEdit ym
Gui, Add, Edit, R1 vTimeSetting 

Gui, Add, Checkbox, xs vSemicolonEdit, Enable semicolon shortcut key
Gui, Add, Checkbox, vOpenAutoEdit, Enable AutoStart
Gui, Add, Text,, DevKeyboard Version 1.4
Gui, Add, Button, gYouPressed, Save


FileRead, FileContents, %A_AppData%\DevKeyboard\time.txt
time = %FileContents%

FileRead, FileContentsG, %A_AppData%\DevKeyboard\G.txt
gkey = %FileContentsG%

FileRead, FileContentsH, %A_AppData%\DevKeyboard\H.txt
hkey = %FileContentsH%

FileRead, FileContentsF, %A_AppData%\DevKeyboard\F.txt
fkey = %FileContentsF%

FileRead, FileContentsJ, %A_AppData%\DevKeyboard\J.txt
jkey = %FileContentsJ%

FileRead, FileContentsD, %A_AppData%\DevKeyboard\D.txt
dkey = %FileContentsD%

FileRead, FileContentsK, %A_AppData%\DevKeyboard\K.txt
kkey = %FileContentsK%

FileRead, FileContentsS, %A_AppData%\DevKeyboard\S.txt
skey = %FileContentsS%

FileRead, FileContentsA, %A_AppData%\DevKeyboard\A.txt
akey = %FileContentsA%

FileRead, FileContentsL, %A_AppData%\DevKeyboard\L.txt
lkey = %FileContentsL%

FileRead, FileContentsZ, %A_AppData%\DevKeyboard\Z.txt
zkey = %FileContentsZ%

FileRead, FileContentsX, %A_AppData%\DevKeyboard\X.txt
xkey = %FileContentsX%

FileRead, FileContentsC, %A_AppData%\DevKeyboard\C.txt
ckey = %FileContentsC%

FileRead, FileContentsV, %A_AppData%\DevKeyboard\V.txt
vkey = %FileContentsV%

FileRead, FileContentsB, %A_AppData%\DevKeyboard\B.txt
bkey = %FileContentsB%

FileRead, FileContentsN, %A_AppData%\DevKeyboard\N.txt
nkey = %FileContentsN%

FileRead, FileContentsM, %A_AppData%\DevKeyboard\M.txt
mkey = %FileContentsM%

FileRead, FileContentsComma, %A_AppData%\DevKeyboard\Comma.txt
commakey = %FileContentsComma%

FileRead, FileContentsSemicolon, %A_AppData%\DevKeyboard\Semicolon.txt
semicolonkey = %FileContentsSemicolon%

FileRead, FileContentsQ, %A_AppData%\DevKeyboard\Q.txt
qkey = %FileContentsQ%

FileRead, FileContentsW, %A_AppData%\DevKeyboard\W.txt
wkey = %FileContentsW%

FileRead, FileContentsE, %A_AppData%\DevKeyboard\E.txt
ekey = %FileContentsE%

FileRead, FileContentsR, %A_AppData%\DevKeyboard\R.txt
rkey = %FileContentsR%

FileRead, FileContentsT, %A_AppData%\DevKeyboard\T.txt
tkey = %FileContentsT%

FileRead, FileContentsY, %A_AppData%\DevKeyboard\Y.txt
ykey = %FileContentsY%

FileRead, FileContentsU, %A_AppData%\DevKeyboard\U.txt
ukey = %FileContentsU%

FileRead, FileContentsI, %A_AppData%\DevKeyboard\I.txt
ikey = %FileContentsI%

FileRead, FileContentsO, %A_AppData%\DevKeyboard\O.txt
okey = %FileContentsO%

FileRead, FileContentsP, %A_AppData%\DevKeyboard\P.txt
pkey = %FileContentsP%

FileRead, FileContentsOpenAuto, %A_AppData%\DevKeyboard\OpenAuto.txt
openautokey = %FileContentsOpenAuto%

if var FileContentsOpenAuto = "true"
	{
		IfNotExist %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\DevKeyboard.lnk
			FileCreateShortcut, %A_ScriptDir%\DevKeyboard.exe, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\DevKeyboard.lnk
	}
	Else {
		IfExist %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\DevKeyboard.lnk
			FileDelete, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\DevKeyboard.lnk
	}



Menu, Tray, Icon, %A_ScriptDir%\Power-ON.ico, 1, 1


Menu, tray, add  ; Creates a separator line.
Menu, tray, add, Settings, settings


#j:: 
Suspend
SoundPlay, sound.wav
if A_IsSuspended = 1
Menu, Tray, Icon, %A_ScriptDir%\Power-OFF.ico, 1, 1
Else
Menu, Tray, Icon, %A_ScriptDir%\Power-ON.ico, 1, 1
Return


settings:
GuiControl,, TimeSetting, %FileContents%
GuiControl,, GEdit, %FileContentsG%
GuiControl,, HEdit, %FileContentsH%
GuiControl,, FEdit, %FileContentsF%
GuiControl,, JEdit, %FileContentsJ%
GuiControl,, DEdit, %FileContentsD%
GuiControl,, KEdit, %FileContentsK%
GuiControl,, SEdit, %FileContentsS%
GuiControl,, AEdit, %FileContentsA%
GuiControl,, LEdit, %FileContentsL%
GuiControl,, ZEdit, %FileContentsZ%
GuiControl,, XEdit, %FileContentsX%
GuiControl,, CEdit, %FileContentsC%
GuiControl,, VEdit, %FileContentsV%
GuiControl,, BEdit, %FileContentsB%
GuiControl,, NEdit, %FileContentsN%
GuiControl,, MEdit, %FileContentsM%
GuiControl,, CommaEdit, %FileContentsComma%
GuiControl,, QEdit, %FileContentsQ%
GuiControl,, WEdit, %FileContentsW%
GuiControl,, EEdit, %FileContentsE%
GuiControl,, REdit, %FileContentsR%
GuiControl,, TEdit, %FileContentsT%
GuiControl,, YEdit, %FileContentsY%
GuiControl,, UEdit, %FileContentsU%
GuiControl,, IEdit, %FileContentsI%
GuiControl,, OEdit, %FileContentsO%
GuiControl,, PEdit, %FileContentsP%

if var FileContentsSemicolon = "true"
{
	GuiControl,, SemicolonEdit, 1
}

if var FileContentsOpenAuto = "true"
{
	GuiControl,, OpenAutoEdit, 1
}

Gui, +Resize
Gui, Show,, Settings
return

YouPressed:
FileCreateDir, %A_AppData%\DevKeyboard
GuiControlGet, TimeSetting
VarSig = %TimeSetting%
FileDelete, %A_AppData%\DevKeyboard\time.txt
FileAppend, %A_AppData%\DevKeyboard\time.txt
FileAppend, %VarSig%, %A_AppData%\DevKeyboard\time.txt

GuiControlGet, GEdit
GNew = %GEdit%
FileDelete, %A_AppData%\DevKeyboard\G.txt
FileAppend, %A_AppData%\DevKeyboard\G.txt
FileAppend, %GNew%, %A_AppData%\DevKeyboard\G.txt

GuiControlGet, HEdit
HNew = %HEdit%
FileDelete, %A_AppData%\DevKeyboard\H.txt
FileAppend, %A_AppData%\DevKeyboard\H.txt
FileAppend, %HNew%, %A_AppData%\DevKeyboard\H.txt

GuiControlGet, FEdit
FNew = %FEdit%
FileDelete, %A_AppData%\DevKeyboard\F.txt
FileAppend, %A_AppData%\DevKeyboard\F.txt
FileAppend, %FNew%, %A_AppData%\DevKeyboard\F.txt

GuiControlGet, JEdit
JNew = %JEdit%
FileDelete, %A_AppData%\DevKeyboard\J.txt
FileAppend, %A_AppData%\DevKeyboard\J.txt
FileAppend, %JNew%, %A_AppData%\DevKeyboard\J.txt

GuiControlGet, DEdit
DNew = %DEdit%
FileDelete, %A_AppData%\DevKeyboard\D.txt
FileAppend, %A_AppData%\DevKeyboard\D.txt
FileAppend, %DNew%, %A_AppData%\DevKeyboard\D.txt

GuiControlGet, KEdit
KNew = %KEdit%
FileDelete, %A_AppData%\DevKeyboard\K.txt
FileAppend, %A_AppData%\DevKeyboard\K.txt
FileAppend, %KNew%, %A_AppData%\DevKeyboard\K.txt

GuiControlGet, SEdit
SNew = %SEdit%
FileDelete, %A_AppData%\DevKeyboard\S.txt
FileAppend, %A_AppData%\DevKeyboard\S.txt
FileAppend, %SNew%, %A_AppData%\DevKeyboard\S.txt

GuiControlGet, AEdit
ANew = %AEdit%
FileDelete, %A_AppData%\DevKeyboard\A.txt
FileAppend, %A_AppData%\DevKeyboard\A.txt
FileAppend, %ANew%, %A_AppData%\DevKeyboard\A.txt

GuiControlGet, LEdit
LNew = %LEdit%
FileDelete, %A_AppData%\DevKeyboard\L.txt
FileAppend, %A_AppData%\DevKeyboard\L.txt
FileAppend, %LNew%, %A_AppData%\DevKeyboard\L.txt

GuiControlGet, ZEdit
ZNew = %ZEdit%
FileDelete, %A_AppData%\DevKeyboard\Z.txt
FileAppend, %A_AppData%\DevKeyboard\Z.txt
FileAppend, %ZNew%, %A_AppData%\DevKeyboard\Z.txt

GuiControlGet, XEdit
XNew = %XEdit%
FileDelete, %A_AppData%\DevKeyboard\X.txt
FileAppend, %A_AppData%\DevKeyboard\X.txt
FileAppend, %XNew%, %A_AppData%\DevKeyboard\X.txt

GuiControlGet, CEdit
CNew = %CEdit%
FileDelete, %A_AppData%\DevKeyboard\C.txt
FileAppend, %A_AppData%\DevKeyboard\C.txt
FileAppend, %CNew%, %A_AppData%\DevKeyboard\C.txt

GuiControlGet, VEdit
VNew = %VEdit%
FileDelete, %A_AppData%\DevKeyboard\V.txt
FileAppend, %A_AppData%\DevKeyboard\V.txt
FileAppend, %VNew%, %A_AppData%\DevKeyboard\V.txt

GuiControlGet, BEdit
BNew = %BEdit%
FileDelete, %A_AppData%\DevKeyboard\B.txt
FileAppend, %A_AppData%\DevKeyboard\B.txt
FileAppend, %BNew%, %A_AppData%\DevKeyboard\B.txt

GuiControlGet, NEdit
NNew = %NEdit%
FileDelete, %A_AppData%\DevKeyboard\N.txt
FileAppend, %A_AppData%\DevKeyboard\N.txt
FileAppend, %NNew%, %A_AppData%\DevKeyboard\N.txt

GuiControlGet, MEdit
MNew = %MEdit%
FileDelete, %A_AppData%\DevKeyboard\M.txt
FileAppend, %A_AppData%\DevKeyboard\M.txt
FileAppend, %MNew%, %A_AppData%\DevKeyboard\M.txt

GuiControlGet, CommaEdit
CommaNew = %CommaEdit%
FileDelete, %A_AppData%\DevKeyboard\Comma.txt
FileAppend, %A_AppData%\DevKeyboard\Comma.txt
FileAppend, %CommaNew%, %A_AppData%\DevKeyboard\Comma.txt

GuiControlGet, QEdit
QNew = %QEdit%
FileDelete, %A_AppData%\DevKeyboard\Q.txt
FileAppend, %A_AppData%\DevKeyboard\Q.txt
FileAppend, %QNew%, %A_AppData%\DevKeyboard\Q.txt

GuiControlGet, WEdit
WNew = %WEdit%
FileDelete, %A_AppData%\DevKeyboard\W.txt
FileAppend, %A_AppData%\DevKeyboard\W.txt
FileAppend, %WNew%, %A_AppData%\DevKeyboard\W.txt

GuiControlGet, EEdit
ENew = %EEdit%
FileDelete, %A_AppData%\DevKeyboard\E.txt
FileAppend, %A_AppData%\DevKeyboard\E.txt
FileAppend, %ENew%, %A_AppData%\DevKeyboard\E.txt

GuiControlGet, REdit
RNew = %REdit%
FileDelete, %A_AppData%\DevKeyboard\R.txt
FileAppend, %A_AppData%\DevKeyboard\R.txt
FileAppend, %RNew%, %A_AppData%\DevKeyboard\R.txt

GuiControlGet, TEdit
TNew = %TEdit%
FileDelete, %A_AppData%\DevKeyboard\T.txt
FileAppend, %A_AppData%\DevKeyboard\T.txt
FileAppend, %TNew%, %A_AppData%\DevKeyboard\T.txt

GuiControlGet, YEdit
YNew = %YEdit%
FileDelete, %A_AppData%\DevKeyboard\Y.txt
FileAppend, %A_AppData%\DevKeyboard\Y.txt
FileAppend, %YNew%, %A_AppData%\DevKeyboard\Y.txt

GuiControlGet, UEdit
UNew = %UEdit%
FileDelete, %A_AppData%\DevKeyboard\U.txt
FileAppend, %A_AppData%\DevKeyboard\U.txt
FileAppend, %UNew%, %A_AppData%\DevKeyboard\U.txt

GuiControlGet, IEdit
INew = %IEdit%
FileDelete, %A_AppData%\DevKeyboard\I.txt
FileAppend, %A_AppData%\DevKeyboard\I.txt
FileAppend, %INew%, %A_AppData%\DevKeyboard\I.txt

GuiControlGet, OEdit
ONew = %OEdit%
FileDelete, %A_AppData%\DevKeyboard\O.txt
FileAppend, %A_AppData%\DevKeyboard\O.txt
FileAppend, %ONew%, %A_AppData%\DevKeyboard\O.txt

GuiControlGet, PEdit
PNew = %PEdit%
FileDelete, %A_AppData%\DevKeyboard\P.txt
FileAppend, %A_AppData%\DevKeyboard\P.txt
FileAppend, %PNew%, %A_AppData%\DevKeyboard\P.txt

GuiControlGet, SemicolonEdit
SemicolonNew = %SemicolonEdit%
FileDelete, %A_AppData%\DevKeyboard\Semicolon.txt
FileAppend, %A_AppData%\DevKeyboard\Semicolon.txt
if SemicolonEdit = 1 
{
	FileAppend, true, %A_AppData%\DevKeyboard\Semicolon.txt
}
Else
	FileAppend,, %A_AppData%\DevKeyboard\Semicolon.txt

GuiControlGet, OpenAutoEdit
OpenAutoNew = %OpenAutoEdit%
FileDelete, %A_AppData%\DevKeyboard\OpenAuto.txt
FileAppend, %A_AppData%\DevKeyboard\OpenAuto.txt
if OpenAutoEdit = 1 
{
	FileAppend, true, %A_AppData%\DevKeyboard\OpenAuto.txt
}
Else
	FileAppend,, %A_AppData%\DevKeyboard\OpenAuto.txt

FileRead, FileContents, %A_AppData%\DevKeyboard\time.txt
time = %FileContents%

MsgBox Saved
Gui Submit

Reload
return

$g::
send {g}

if var gkey 
{
	KeyWait g, t%time%
	if errorlevel
		send {BS 1}{Raw}%gkey%
		KeyWait, g, U
}
Return

$h::
send {h}

if var hkey 
{
	KeyWait h, t%time%
	if errorlevel
		send {BS 1}{Raw}%hkey%
		KeyWait, h, U
}
Return

$f::
send {f}

if var fkey 
{	
	KeyWait f, t%time%
	if errorlevel
		send {BS 1}{Raw}%fkey%
		KeyWait, f, U
	Return
}
Return

$j::
send {j}

if var jkey 
{
	KeyWait j, t%time%
	if errorlevel
		send {BS 1}{Raw}%jkey%
		KeyWait, j, U
	Return
}
Return

$d::
send {d}

if var dkey 
{
	KeyWait d, t%time%
	if errorlevel
		send {BS 1}{Raw}%dkey%
		KeyWait, d, U
	Return
}
Return

$k::
send {k}

if var kkey
{
	KeyWait k, t%time%
	if errorlevel
		send {BS 1}{Raw}%kkey%
		KeyWait, k, U
}
Return

$s::
send {s}

if var skey 
{
	KeyWait s, t%time%
	if errorlevel
		send {BS 1}{Raw}%skey%
		KeyWait, s, U
}
Return

$a::
send {a}

if var akey 
{
	KeyWait a, t%time%
	if errorlevel
		send {BS 1}{Raw}%akey%
		KeyWait, a, U
}
Return

$`;::
send {;}

if var semicolonkey
{
	KeyWait `;, t%time%
	if errorlevel
		send {BS 1}{End}{Raw};
		KeyWait, `;, U
}
Return

$l::
send {l}

if var lkey 
{
	KeyWait l, t%time%
	if errorlevel
		send {BS 1}{Raw}%lkey%
		KeyWait, l, U
}
Return

$z::
send {z}

if var zkey 
{
	KeyWait z, t%time%
	if errorlevel
		send {BS 1}{Raw}%zkey%
		KeyWait, z, U
}
Return

$x::
send {x}

if var xkey 
{
	KeyWait x, t%time%
	if errorlevel
		send {BS 1}{Raw}%xkey%
		KeyWait, x, U
}
Return

$c::
send {c}

if var ckey 
{
	KeyWait c, t%time%
	if errorlevel
		send {BS 1}{Raw}%ckey%
		KeyWait, c, U
}
Return

$v::
send {v}

if var vkey 
{
	KeyWait v, t%time%
	if errorlevel
		send {BS 1}{Raw}%vkey%
		KeyWait, v, U
}
Return

$b::
send {b}

if var bkey 
{
	KeyWait b, t%time%
	if errorlevel
		Send {BS 1}{Raw}%bkey%
		KeyWait, b, U
}
Return

$n::
send {n}

if var nkey 
{
	KeyWait n, t%time%
	if errorlevel
		send {BS 1}{Raw}%nkey%
		KeyWait, n, U
}
Return

$m::
send {m}

if var mkey 
{
	KeyWait m, t%time%
	if errorlevel
		send {BS 1}{Raw}%mkey%
		KeyWait, m, U
}
Return

$,::
send {,}

if var commakey 
{
	KeyWait `,, t%time%
	if errorlevel
		send {BS 1}{Raw}%commakey%
		KeyWait, `,, U
}
Return

$q::
send {q}

if var qkey 
{
	KeyWait q, t%time%
	if errorlevel
		send {BS 1}{Raw}%qkey%
		KeyWait, q, U
}
Return

$w::
send {w}

if var wkey 
{
	KeyWait w, t%time%
	if errorlevel
		send {BS 1}{Raw}%wkey%
		KeyWait, w, U
}
Return

$e::
send {e}

if var ekey 
{
	KeyWait e, t%time%
	if errorlevel
		send {BS 1}{Raw}%ekey%
		KeyWait, e, U
}
Return

$r::
send {r}

if var rkey 
{
	KeyWait r, t%time%
	if errorlevel
		send {BS 1}{Raw}%rkey%
		KeyWait, r, U
}
Return

$t::
send {t}

if var tkey 
{
	KeyWait t, t%time%
	if errorlevel
		send {BS 1}{Raw}%tkey%
		KeyWait, t, U
}
Return

$y::
send {y}

if var ykey 
{
	KeyWait y, t%time%
	if errorlevel
		send {BS 1}{Raw}%ykey%
		KeyWait, y, U
}
Return

$u::
send {u}

if var ukey 
{
	KeyWait u, t%time%
	if errorlevel
		send {BS 1}{Raw}%ukey%
		KeyWait, u, U
}
Return

$i::
send {i}

if var ikey 
{
	KeyWait i, t%time%
	if errorlevel
		send {BS 1}{Raw}%ikey%
		KeyWait, i, U
}
Return

$o::
send {o}

if var okey 
{
	KeyWait o, t%time%
	if errorlevel
		send {BS 1}{Raw}%okey%
		KeyWait, o, U
}
Return

$p::
send {p}

if var pkey 
{
	KeyWait p, t%time%
	if errorlevel
		send {BS 1}{Raw}%pkey%
		KeyWait, p, U
}
Return