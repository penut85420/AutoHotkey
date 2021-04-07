#MaxThreadsPerHotkey 2
#HotkeyInterval 128

~CapsLock::
if cont {
    cont := false
} else {
    cont := true
    while cont {
        Send, {W Down}
        Sleep, 1500
        Send, {W Up}
        if cont {
            Send, {S Down}
            Sleep, 1500
            Send, {S Up}
        }
    }
    Send, {W Up}
    Send, {S Up}
}
return
