 ; Default Headers
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
_____________________________________________________________________________________________________
_____________________________________________________________________________________________________


 ; Instructions
 ; Set to XButton2 (mouse button 5) by default.
 ; To customise, carefully swap both instances of XButton2 for another key in the script.
 ; e.g. XButton1 MButton WheelDown Delete LAlt Numpad0
 ; Grave/Tilde use SC029 (caution: special character. can break when bound to discord/steam overlay)
 ; For a complete list visit https://www.autohotkey.com/docs/KeyList.htm

 ; To autorun with Windows: 	press 'Win + R', in the field enter: shell:startup
 ; 				save/copy this file to the startup folder that appears





#if WinActive("ahk_class UnrealWindow") ; Script will only engage if DbD is active.

 ; Suspend:Pause, ; Remove semi-colon at start of line to enable pause function that is toggled by 'pause' key.


$XButton2:: ; 1 <----
Loop
{
	if not GetKeyState("XButton2", "P") ; 2 <----
		break
	Send, {a Down}
	Send, {space Down}
    	Sleep, 30
	Send, {a Up}
	Send, {space Up}
	Sleep, 30
	Send, {d Down}
	Send, {space Down}
	Sleep, 30
	Send, {d Up}
	Send, {space Up}
	Sleep, 30
}
return
