#MaxThreadsPerHotkey 2
#HotkeyInterval 128

~ScrollLock::
if cont {
    cont := false
    SoundBeep, 700, 100
	SoundBeep, 500, 100
    Reload
} else {
    cont := true
    SoundBeep, 500, 100
	SoundBeep, 700, 100
    while cont {
        Send, {e Down}
        Sleep, 1000
        Send, {e Up}
        Sleep, 60000
    }
}
return

*~Pause::
if cont {
    cont := false
    SoundBeep, 700, %delay%
	SoundBeep, 500, %delay%
    Send, {LShift Up}
    Send, {w Up}
} else {
    cont := true
    SoundBeep, 500, %delay%
	SoundBeep, 700, %delay%
    Send, {LShift Down}
    Send, {w Down}
}
return
