#NoEnv
#WinActivateForce
#SingleInstance force
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

;Set lock state
SetNumLockState, On
SetNumLockState, Off
SetScrollLockState, Off

;============HOT KEYS============
; !    = alt
; ^    = ctrl
; +    = shift
; #    = win
;
; !^+  = Meh
; !^+# = Hyper

;Universal hotkeys  
esc::`
Capslock::Esc
LWin::LAlt
RWin::RAlt
LAlt::LWin
RAlt::RWin



;Application Launcher
RCtrl & d::^#k

;File Explorer
RCtrl & e::

;Open New Terminal
RCtrl & enter:: run, C:\Windows\System32\cmd.exe -admin

;Screenshot entire screen
Rctrl & s::^+!s

;Screenshot region
Rctrl & r::^+!r

;Open and/or Focus Browser
RCtrl & b::
	Process, Exist, vivaldi.exe
	vivaldiPID=%Errorlevel%
	if vivaldiPID
		WinActivate ahk_pid %vivaldiPID%
	else
		run vivaldi
return

Alt & WheelUp::Volume_Up
Alt & WheelDown::Volume_Down
Alt & MButton::Volume_Mute

F7::
	Run, "SndVol.exe" 
return

;Esperanto 
:C*:Cx::Ĉ
:C*:cx::ĉ
:C*:Gx::Ĝ
:C*:gx::ĝ
:C*:Hx::Ĥ
:C*:hx::ĥ
:C*:Jx::Ĵ
:C*:jx::ĵ
:C*:Sx::Ŝ
:C*:sx::ŝ
:C*:Ux::Ŭ
:C*:ux::ŭ

/*
;Colemak-DH
e::f
r::p
t::b
y::j
u::l
i::u
o::y
p::;

s::r
d::s
f::t
h::m
j::n
k::e
l::i
`;::o
\::#

b::\
n::k
m::h
 */
