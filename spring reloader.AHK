#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
#UseHook Off;
;#MaxHotkeysPerInterval 2
#Persistent
; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;CoordMode, Mouse, relative
CoordMode, Mouse, Screen; to proove i not cheat i use the whole screen not the window, very important.

SetTitleMatchMode 2
#If WinActive("Tech Annihilation") || WinActive("Balanced Annihilation V9") || WinActive("Balanced Annihilation V10") || WinActive("Tech Annihilation v3") || WinActive("Spring 103") || WinActive("Spring 104") || WinActive("Spring 105") || WinActive("Planet Annihilation v3")

;So activate it on your base aand adjust altitue to save the camera after start:
;-Take position and on your marks press alt+e 2 times
;-Then change the shortcut in the script named: i use - but it should be a key avaialble you dont usually use in the spring game.
;-Normally the key r is used then to return or exit the base you marked with alt+e
;-If something goes wrong, and it will, retry alt+e, but not too early, its unecessary.
;-To continue to use the script as always, simply press r with/wo modifiers: r/+r/!r
;The script switch itself all the other keys its normal, to come back at base press simply r,
; let press down the r key could produce something, it will hide the middle reticul, and let move al ittle bit around the mouse with the screen while locking the extrem location until you pres the wheel, pres middle button 2 times to reactive the default behavior, switch middle button for view the mouse or the middle cross as reticul in the browser.

;If you like the inverted mouse and in case the game reinit settings and/or mouse default settings, or to be a little bit more random in this point of view, as you prefer.
;-----------------------------------------
;Soon much widget are going to be added in the archive and widget ba section in main offi discord.
WheelUp::Send, {WheelDown}
WheelDown::Send, {WheelUp}

+WheelUp::Send, +{WheelDown}
+WheelDown::Send, +{WheelUp}

;the only way it ould be broken as old widget alone, is the widget is reloaded though one or several times in he game
;specscript cheat
global reverseme:=true


r::
if (reverseme)
{

;else{
;}
Send,!e
Send,y
Send,{click}
Send,~r
;Sleep,50
Sleep,100
aastate:=GetKeyState("r","P")
if (aastate = 1){
    Send,{MButton Down}
}

reverseme:=false
;Sleep,100
Send,{WheelDown}
;Send,{WheelDown}
;Sleep,100
Send,{WheelDown}
;Sleep,100
Send,~{WheelDown}
;Sleep,100
Send,{WheelDown}
Sleep,800
;Send,~{r Down}
;Sleep,100
;Send,~{r Up}
;if problems delete this line
;Send,~r
Sleep,1000
;aastate:=GetKeyState("r","P")
;if (aastate = 1){
;    Send,{MButton Down}
;    
;}
Send,y

Send,r
;Sleep,1000
;Send,!e
}
else
{
Send,{MButton Up}
reverseme:=true
Send, {NumpadAdd}
Send, _ 
Send,~y
;Sleep,200
;Send,~r
}
return

;+r::
;Send,r
;;Send,y
;return
#if


;Remark:In the BAR game, alt+e is more used to return to origin, as my return key, -, is not appropriated and modifiers seems changed in this engine.
