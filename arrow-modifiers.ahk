#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Modified arrow keys to improve usability on laptop keyboards
;   ᐱ - PgUp
;   ᐯ - PgDn
;   ᐸ - Home
;   ᐳ - End
; Credit: unknown

; Alt+arrow modifiers
!Left::Send, {Home}
!Right::Send, {End}
!Up::Send, {PgUp}
!Down::Send, {PgDn}

; Alt+Shift+arrow modifiers
!+Left::Send, {Shift Down}{Home}{Shift Up}
!+Right::Send, {Shift Down}{End}{Shift Up}
!+Up::Send, {Shift Down}{PgUp}{Shift Up}
!+Down::Send, {Shift Down}{PgDn}{Shift Up}
