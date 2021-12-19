#MaxThreadsPerHotkey 2
#HotkeyInterval 128
#MaxHotkeysPerInterval 4096

; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

~LButton::
while GetKeyState("LButton", "P") {
    MouseClick, left
}
return
