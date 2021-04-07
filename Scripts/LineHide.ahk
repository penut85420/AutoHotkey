#MaxThreadsPerHotkey 2

~CapsLock::
SoundBeep, 700, 100
Sleep, 1000
cont := !cont
loop {
    If not cont
        ExitApp, 0
    Click, right, 200, 120
    Sleep, 100
    Click, 265, 200
    Sleep, 100
    Click, 70, 80
    Sleep, 100
}
return
