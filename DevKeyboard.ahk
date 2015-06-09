Menu, Tray, Icon, %A_ScriptDir%\Power-LOAD.ico, 1, 1

UrlDownloadToFile, http://woodmantech.com/versions/DevKeyboardVersion.txt, %A_AppData%\DevKeyboard\Latest_Version.txt

FileRead, latestversion, %A_AppData%\DevKeyboard\Latest_Version.txt

if not ErrorLevel  ; Successfully loaded.
{
    if latestversion > 1.2
	{
		MsgBox NEW UPDATE: Please press "OK" to update DevKeyboard to version %latestversion%.
			if not ErrorLevel 
			{
			Run, http://devkeyboard.woodmantech.com/update-devkeyboard.html
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


Gui, Add, Text,, Hold Down Time:
Gui, Add, Edit, R1 vTimeSetting

Gui, Add, Text,, Edit G:
Gui, Add, Edit, r1 vGEdit
Gui, Add, Text,, Edit H:
Gui, Add, Edit, r1 vHEdit
Gui, Add, Text,, Edit F:
Gui, Add, Edit, r1 vFEdit
Gui, Add, Text,, Edit J:
Gui, Add, Edit, r1 vJEdit
Gui, Add, Text,, Edit D:
Gui, Add, Edit, r1 vDEdit
Gui, Add, Text,, Edit K:
Gui, Add, Edit, r1 vKEdit
Gui, Add, Text,, Edit S:
Gui, Add, Edit, r1 vSEdit
Gui, Add, Text,, Edit A:
Gui, Add, Edit, r1 vAEdit
Gui, Add, Text,ym, Edit L:
Gui, Add, Edit, r1 vLEdit
Gui, Add, Text,, Edit Z:
Gui, Add, Edit, r1 vZEdit
Gui, Add, Text,, Edit X:
Gui, Add, Edit, r1 vXEdit
Gui, Add, Text,, Edit C:
Gui, Add, Edit, r1 vCEdit
Gui, Add, Text,, Edit V:
Gui, Add, Edit, r1 vVEdit
Gui, Add, Text,, Edit B:
Gui, Add, Edit, r1 vBEdit
Gui, Add, Text,, Edit N:
Gui, Add, Edit, r1 vNEdit
Gui, Add, Text,, Edit M:
Gui, Add, Edit, r1 vMEdit
Gui, Add, Text,, Edit Comma:
Gui, Add, Edit, r1 vCommaEdit
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

Menu, Tray, Icon, %A_ScriptDir%\Power-ON.ico, 1, 1


Menu, tray, add  ; Creates a separator line.
Menu, tray, add, Settings, settings


#j:: 
Suspend
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
Gui, Show, w270 h500, Settings
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

FileRead, FileContents, %A_AppData%\DevKeyboard\time.txt
time = %FileContents%

MsgBox Saved
Gui Submit

Reload
return

$g::
send {g}	
KeyWait g, t%time%
if errorlevel
	send {BS 1}{Raw}%gkey%
	KeyWait, g, U
Return

$h::
send {h}	
KeyWait h, t%time%
if errorlevel
	send {BS 1}{Raw}%hkey%
	KeyWait, h, U
Return

$f::
send {f}	
KeyWait f, t%time%
if errorlevel
	send {BS 1}{Raw}%fkey%
	KeyWait, f, U
Return

$j::
send {j}
KeyWait j, t%time%
if errorlevel
	send {BS 1}{Raw}%jkey%
	KeyWait, j, U
Return

$d::
send {d}
KeyWait d, t%time%
if errorlevel
	send {BS 1}{Raw}%dkey%
	KeyWait, d, U
Return

$k::
send {k}
KeyWait k, t%time%
if errorlevel
	send {BS 1}{Raw}%kkey%
	KeyWait, k, U
Return

$s::
send {s}
KeyWait s, t%time%
if errorlevel
	send {BS 1}{Raw}%skey%
	KeyWait, s, U
Return

$a::
send {a}
KeyWait a, t%time%
if errorlevel
	send {BS 1}{Raw}%akey%
	KeyWait, a, U
Return

$`;::
send {;}
KeyWait `;, t%time%
if errorlevel
	send {Right}{Raw};
	KeyWait, `;, U
Return

$l::
send {l}
KeyWait l, t%time%
if errorlevel
	send {BS 1}{Raw}%lkey%
	KeyWait, l, U
Return

$z::
send {z}
KeyWait z, t%time%
if errorlevel
	send {BS 1}{Raw}%zkey%
	KeyWait, z, U
Return

$x::
send {x}
KeyWait x, t%time%
if errorlevel
	send {BS 1}{Raw}%xkey%
	KeyWait, x, U
Return

$c::
send {c}
KeyWait c, t%time%
if errorlevel
	send {BS 1}{Raw}%ckey%
	KeyWait, c, U
Return

$v::
send {v}
KeyWait v, t%time%
if errorlevel
	send {BS 1}{Raw}%vkey%
	KeyWait, v, U
Return

$b::
send {b}
KeyWait b, t%time%
if errorlevel
	Send {BS 1}{Raw}%bkey%
	KeyWait, b, U
Return

$n::
send {n}
KeyWait n, t%time%
if errorlevel
	send {BS 1}{Raw}%nkey%
	KeyWait, n, U
Return

$m::
send {m}
KeyWait m, t%time%
if errorlevel
	send {BS 1}{Raw}%mkey%
	KeyWait, m, U
Return

$,::
send {,}
KeyWait `,, t%time%
if errorlevel
	send {BS 1}{Raw}%commakey%
	KeyWait, `,, U
Return

