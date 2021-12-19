#MaxThreadsPerHotkey 2
#HotkeyInterval 128
#MaxHotkeysPerInterval 4096

; 離開腳本
F12::
ExitApp

delay := 100

; 暫停腳本
Pause::Suspend

~CapsLock::Suspend

~Home::
if cont {
	cont := false
} else {
	cont := true
	while cont {
		MouseClick, left
	}
}
return

~LButton::
while GetKeyState("LButton", "P") {
	MouseClick, left
}
return

Hello(X, Y:=-1, I:=0) {
	if Y = -1
		Y = %X%

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
