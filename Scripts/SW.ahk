#MaxThreadsPerHotkey 2
#HotkeyInterval 128

Release(Re:=True) {
    Send, {Left Up}
    Send, {Right Up}
    Send, {LButton Up}
    Send, {Numpad1 Up}
    Reload
}

; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

; 彈起所有按鍵
~F11::
cont := False
cont2 := False
Release()
return

GoLeft() {
    Send, {Left Down}
    Sleep, 1000
    Send, {Left Up}
}

GoRight() {
    Send, {Right Down}
    Sleep, 1000
    Send, {Right Up}
}

~F8::
if cont {
    cont := false
    Release()
} else {
    cont := true
    while cont {
        GoLeft()
        GoRight()
    }
    Release()
}
return

~F9::
if cont {
    cont := false
    Release()
} else {
    cont := true
    while cont {
        Send, {LButton Down}
        Sleep, 100
        Send, {LButton Up}
        Sleep, 1000
    }
    Release()
}
return

~F10::
if cont {
    cont := false
    Release()
} else {
    cont := true
    while cont {
        MouseMove, 600, 300
        Sleep, 350
        Send, {LButton Down}
        Sleep, 100
        Send, {LButton Up}
        Sleep, 100
        Send, {LButton Down}
        Sleep, 100
        Send, {LButton Up}
        Sleep, 100
        Send, {LButton Down}
        Sleep, 100
        Send, {LButton Up}
        MouseMove, 600, 400
        Sleep, 200
        Send, {LButton Down}
        Sleep, 200
        Send, {LButton Up}
        Sleep, 250
        Send, {Numpad1 Down}
        Sleep, 200
        Send, {Numpad1 Up}
        Sleep, 200
        MouseMove, 650, 770
        Sleep, 200
        Send, {LButton Down}
        Sleep, 200
        Send, {LButton Up}
        Sleep, 500
    }
}
; 600 300
; 600 400
; 650 750
return
