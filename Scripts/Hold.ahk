~CapsLock::
if flag {
	Send, {LButton Down}
    flag := False
} else {
    Send, {LButton Up}
    flag := True
}
return
