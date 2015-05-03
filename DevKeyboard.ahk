Menu, Tray, Icon, %A_ScriptDir%\Power-ON.ico, 1, 1

Gui, Add, Text,, Hold Down Time:
Gui, Add, Edit, R1 w100 vTimeSetting
Gui, Add, Button, gYouPressed, Save

FileRead, FileContents, %A_AppData%\DevKeyboard\time.txt
time = %FileContents%

Menu, tray, add  ; Creates a separator line.
Menu, tray, add, Settings, settings


#j:: 
Suspend
if A_IsSuspended = 1
Menu, Tray, Icon, %A_ScriptDir%\Power-OFF.ico, 1, 1
Else
Menu, Tray, Icon, %A_ScriptDir%\Power-ON.ico, 1, 1
Return

#k::
Run, Prototype #1.exe, %A_ScriptDir%, Max
ExitApp
Return

settings:
GuiControl,, TimeSetting, %FileContents%
Gui, Show, w200 h115, Settings
return

YouPressed:
FileCreateDir, %A_AppData%\DevKeyboard
GuiControlGet, TimeSetting
VarSig = %TimeSetting%
FileDelete, %A_AppData%\DevKeyboard\time.txt
FileAppend, %A_AppData%\DevKeyboard\time.txt
FileAppend, %VarSig%, %A_AppData%\DevKeyboard\time.txt

FileRead, FileContents, %A_AppData%\DevKeyboard\time.txt
time = %FileContents%
MsgBox %time%

MsgBox Saved
Gui Submit
return

$g::
send {g}	
KeyWait g, t%time%
if errorlevel
	send {BS 1}{<}
	KeyWait, g, U
Return

$h::
send {h}	
KeyWait h, t%time%
if errorlevel
	send {BS 1}{>}
	KeyWait, h, U
Return

$f::
send {f}	
KeyWait f, t%time%
if errorlevel
	send {BS 1}{{}
	KeyWait, f, U
Return

$j::
send {j}
KeyWait j, t%time%
if errorlevel
	send {BS 1}{}}
	KeyWait, j, U
Return

$d::
send {d}
KeyWait d, t%time%
if errorlevel
	send {BS 1}{(}
	KeyWait, d, U
Return

$k::
send {k}
KeyWait k, t%time%
if errorlevel
	send {BS 1}{)}
	KeyWait, k, U
Return

$s::
send {s}
KeyWait s, t%time%
if errorlevel
	send {BS 1}{[}
	KeyWait, s, U
Return

$a::
send {a}
KeyWait a, t%time%
if errorlevel
	send {BS 1}{!}
	KeyWait, a, U
Return

$`;::
send {;}
KeyWait `;, t%time%
if errorlevel
	send {BS 1}{Right}{;}
	KeyWait, `;, U
Return

$l::
send {l}
KeyWait l, t%time%
if errorlevel
	send {BS 1}{]}
	KeyWait, l, U
Return

$z::
send {z}
KeyWait z, t%time%
if errorlevel
	send {BS 1}{``}
	KeyWait, z, U
Return

$x::
send {x}
KeyWait x, t%time%
if errorlevel
	send {BS 1}{+}
	KeyWait, x, U
Return

$c::
send {c}
KeyWait c, t%time%
if errorlevel
	send {BS 1}{&}
	KeyWait, c, U
Return

$v::
send {v}
KeyWait v, t%time%
if errorlevel
	send {BS 1}{=}
	KeyWait, v, U
Return

$b::
send {b}
KeyWait b, t%time%
if errorlevel
	send {BS 1}{|}{|}
	KeyWait, b, U
Return

$n::
send {n}
KeyWait n, t%time%
if errorlevel
	send {BS 1}{=}{=}
	KeyWait, n, U
Return

$m::
send {m}
KeyWait m, t%time%
if errorlevel
	send {BS 1}{"}
	KeyWait, m, U
Return

$,::
send {,}
KeyWait `,, t%time%
if errorlevel
	send {BS 1}{&}{&}
	KeyWait, `,, U
Return

