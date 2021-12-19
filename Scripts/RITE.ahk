; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

; 重置腳本
F9::Reload

F8::
Send, {LButton}
MouseMove, 0, 191, 1, R
Send, {LShift Down}
Send, {LButton}
Send, {LShift Up}
Sleep, 100
Send, {RButton}
Sleep, 100
Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
MouseMove, 0, -170, 0, R
Return
