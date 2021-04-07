#MaxThreadsPerHotkey 2
#HotkeyInterval 128
#MaxHotkeysPerInterval 4096

delay := 100

~Pause::
if flag {
	flag := false
	Reload
} else {
	flag := true
}
return

~CapsLock::
if flag {
	flag := false
	cont := false
	Send, {W Up}
	Send, {S Up}
	SoundBeep, 700, %delay%
	SoundBeep, 500, %delay%
	Reload
} else {
	flag := true
	SoundBeep, 500, %delay%
	SoundBeep, 700, %delay%
}
return

Hello(X) {
    global flag
    if flag {
        if cont {
            cont := false
        } else {
            cont := true
            while cont and flag {
                Click, Down
                Sleep, 250
                Click, Up
                Sleep, %X%
                Click, Down
                Sleep, 250
                Click, Up
                Sleep, 250
            }
        }
    }
}

~Numpad1::
Hello(1750)
return

~Numpad2::
Hello(2750)
return

~Numpad3::
Hello(3750)
return

~Numpad4::
Hello(4750)
return

~Numpad5::
Hello(5750)
return

~Numpad6::
Hello(6750)
return

~Numpad7::
Hello(7750)
return

~Numpad8::
Hello(8750)
return

~Numpad9::
Hello(9750)
return

~Home::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
			Send, {A Down}
			Sleep, 2000
			Send, {A Up}
			if cont {
				Send, {D Down}
				Sleep, 2000
				Send, {D Up}
			}
		}
		Send, {A Up}
		Send, {D Up}
	}
}
return
