#MaxThreadsPerHotkey 2
#HotkeyInterval 128

Release() {
	Send, {1 Up}
    Send, {2 Up}
    Send, {3 Up}
    Send, {4 Up}
    Send, {LButton Up}
    Send, {RButton Up}
    Send, {Tab Up}
    Reload
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

F12::
ExitApp

Pause::Suspend

~F11::
cont := False
Release()
return

*~MButton::
if cont {
    cont := false
    Release()
} else {
    cont := true
    UseSkills()
    while cont {
        Attacking(500)
        Moving()
    }
    Release()
}
return

~A::
if cont {
    cont := false
    Release()
} else {
    cont := true
    Attacking(2500)
    UseSkills()
    while cont {
        Moving()
        Attacking(500)
    }
    Release()
}
return

~R::
while GetKeyState("R", "P") {
    MouseClick, left
    Sleep, 40
}
return

~D::
while GetKeyState("D", "P") {
    MouseClick, right
    Sleep, 40
}
return

~W::
if cont {
    cont := false
    Release()
} else {
    cont := true
    Send, {1 Down}
    Send, {2 Down}
    Send, {3 Down}
    while cont {
        MouseClick, left
        Sleep, 40
    }
    Release()
}
return

~X::
if cont {
    cont := false
    Release()
} else {
    cont := true
    while cont {
        Send, 1
        Send, 2
        Send, 3
        Send, 4
        MouseClick, left
        MouseClick, right
        Sleep, 20
    }
    Release()
}
return

~E::
if cont {
    cont := False
    Release()
}
Return

~U::
MouseClick, Left
Send, {Enter}
Return
