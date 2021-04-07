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

~RAlt::
if flag2 {
	flag2 := false
	SoundBeep, 700, %delay%
	SoundBeep, 500, %delay%
} else {
	flag2 := true
	SoundBeep, 500, %delay%
	SoundBeep, 700, %delay%
}
return

~Space::
if flag2 {
	while GetKeyState("Space", "P") {
		Send, {Space}
	}
}
return

~Home::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
			MouseClick, left
		}
	}
}
return

~LButton::
if flag {
	while GetKeyState("LButton", "P") {
		MouseClick, left
	}
}
return

Hello(X, Y:=-1, I:=0) {
	global flag
	if Y = -1
		Y = %X%

	if flag
		while GetKeyState(X, "P") {
			Send %Y%
			Sleep, %I%
		}
}

~2::
Hello("2")
return

~3::
Hello("3")
return

~4::
Hello("4")
return

~XButton2::
Hello("XButton2", "1")
return

~XButton1::
Hello("XButton1", "3")
return

~E::
Hello("E", "e")
return

~F::
Hello("F", "f")
return

~V::
Hello("V", "v", 1550)
return

~X::
Hello("X", "xy")
return

~ScrollLock::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont {
			Send 4
			Sleep, 1500
			Send, {W Down}
			Sleep, 1500
			Send, {W Up}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
			if cont {
				Send, {W Down}
				Sleep, 1500
				Send, {W Up}
			}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
			if cont {
				Send, {W Down}
				Sleep, 1500
				Send, {W Up}
			}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
			if cont {
				Send, {W Down}
				Sleep, 1500
				Send, {W Up}
			}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
			if cont {
				Send, {W Down}
				Sleep, 1500
				Send, {W Up}
			}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
			if cont {
				Send, {W Down}
				Sleep, 1500
				Send, {W Up}
			}
			if cont {
				Send, {S Down}
				Sleep, 1500
				Send, {S Up}
			}
		}
	}
}
return

~BackSpace::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
			Click, Down
			Sleep, 250
			Click, Up
			Sleep, 2750
			Click, Down
			Sleep, 250
			Click, Up
			Sleep, 250
		}
	}
}
return

~Insert::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
			Send, 1
			Sleep, 100
		}
	}
}
return

~End::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
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
}
return

Foo1() {
	Send, {W Down}
	Sleep, 2500
	Send, {W Up}
}

Foo2() {
	Send, {S Down}
	Sleep, 2700
	Send, {S Up}
}

Foo3() {
	Send, 1
	Sleep, 900
	Send, 1
	Sleep, 900
	Send, 1
	Sleep, 900
}

Fooo() {
	global cont
	Foo1()
	Foo2()
	Foo3()
}

~Delete::
if flag {
	if cont {
		cont := false
	} else {
		cont := true
		while cont and flag {
			Loop, 5 {
				Fooo()
			}
			Foo1()
			Send, 4
			Sleep, 900
			Foo2()
			Foo3()
		}
	}
}
return
