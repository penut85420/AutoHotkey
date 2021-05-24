#MaxThreadsPerHotkey 2
#HotkeyInterval 128

; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

; 重置腳本
F9::Reload

F10::
InputBox, n, Number, How many?, , 200, 100
InputBox, w, Time, How long?, , 200, 100
w *= 1000

while n > 0 {
    Send, {Numpad0}
    Sleep, 300
    Send, {Numpad0}
    Sleep, 2000
    Send, 1
    Sleep, %w%
    n -= 1
}
Return
