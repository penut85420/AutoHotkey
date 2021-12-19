#MaxThreadsPerHotkey 2
#HotkeyInterval 128

Release(Re:=True) {
	Send, {1 Up}
    Send, {2 Up}
    Send, {3 Up}
    Send, {4 Up}
    Send, {LButton Up}
    Send, {RButton Up}
    Send, {Tab Up}
    if Re {
        Reload
    }
}

UseSkills() {
    Send, {1 Down}
    Send, {2 Down}
    Send, {3 Down}
    Send, {4 Down}
    Send, {3 Up}
}

Attacking(X) {
    Send, {Tab Down}
    Send, {LButton Down}
    Sleep, %X%
    Send, {LButton Up}
    Send, {Tab Up}
}

Moving() {
    Send, {RButton Down}
    Sleep, 3500
    Send, {RButton Up}
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

; 左鍵連點
~R::
while GetKeyState("R", "P") {
    Send, QWERTYUIOPasdfghjklzxcvbnm
    MouseClick, left
}
return
