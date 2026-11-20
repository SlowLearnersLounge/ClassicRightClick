#Requires AutoHotkey v2.0
#SingleInstance Force
; ClassicRightClick.ahk
; Turns right-click into Shift+right-click in File Explorer and on the desktop,
; so Windows 11 always opens the classic (legacy) context menu.
; The taskbar and all other apps are left untouched.

; Window classes to target:
;   CabinetWClass     : File Explorer windows
;   Progman / WorkerW : the desktop
global TargetClasses := Map("CabinetWClass", 1, "Progman", 1, "WorkerW", 1)

IsTargetUnderMouse() {
    MouseGetPos(, , &hwnd)
    try cls := WinGetClass(hwnd)
    catch
        return false
    return TargetClasses.Has(cls)
}

#HotIf IsTargetUnderMouse()
RButton:: {
    ; Hold Shift for as long as the right button is down,
    ; so right-drag (the Copy/Move here menu) keeps working.
    Send "{Shift down}{RButton down}"
    KeyWait "RButton"
    Send "{RButton up}"
    Sleep 30          ; give the menu a moment to read the Shift state
    Send "{Shift up}"
}
#HotIf

; To temporarily get the new menu back, right-click the tray icon
; and choose "Suspend Hotkeys".
