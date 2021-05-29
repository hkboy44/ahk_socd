#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
#HotkeyInterval, 10
#MaxHotkeysPerInterval 10


SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

  
;SOCD Hotkey
; replace w/f with the left/right key of your choice
; e.g.  a - left  d - right
;
;   $a:: ;left down
;     critical
;     If GetKeyState("d", "L")
;       SendInput {d up}
;     else
;       SendInput {a down}
;     return
;
;  ...... 

  $w:: ;left down
    critical
    If GetKeyState("f", "L")
      SendInput {f up}
    else
      SendInput {w down}
    return

  $w up:: ;left up
    critical
    If GetKeyState("f", "P")
      SendInput {f down} 
    SendInput {w up}
    return

  $f:: ;right down
    critical
    If GetKeyState("w", "L")
      SendInput {w up}
    else
      SendInput {f down}
    return

  $f up:: ;right up
    critical
    If GetKeyState("w", "P")
      SendInput {w down}
    SendInput {f up}
    return

