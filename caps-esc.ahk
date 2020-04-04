#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    ; Modify the threshold time (in milliseconds) as necessary
    If ((A_TickCount-cDown) < 250)
        Send {Blind}{Ctrl Up}{Esc}
    Else
        Send {Blind}{Ctrl Up}
Return

!Left::Send, {Home}
!Right::Send, {End}
!Up::Send, {PgUp}
!Down::Send, {PgDn}

!+Left::Send, {Shift Down}{Home}{Shift Up}
!+Right::Send, {Shift Down}{End}{Shift Up}
!+Up::Send, {Shift Down}{PgUp}{Shift Up}
!+Down::Send, {Shift Down}{PgDn}{Shift Up}
