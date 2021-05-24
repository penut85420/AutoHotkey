#MaxThreadsPerHotkey 2
#HotkeyInterval 128

; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

; 左鍵連點
~R::
while GetKeyState("R", "P") {
    MouseClick, left
    Sleep, 40
}
return

; 右鍵連點
~D::
while GetKeyState("D", "P") {
    MouseClick, right
    Sleep, 40
}
return
