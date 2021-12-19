#MaxThreadsPerHotkey 2
#HotkeyInterval 128

Release(Re:=True) {
	Send, {1 Up}
    Send, {2 Up}
    Send, {3 Up}
    Send, {4 Up}
    Send, {LButton Up}
    Send, {RButton Up}
    Send, {Tab Up}
    if Re {
        Reload
    }
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

; 離開腳本
F12::
ExitApp

; 暫停腳本
Pause::Suspend

; 彈起所有按鍵
~F11::
cont := False
cont2 := False
Release()
return

; 恐懼獵疊一下層數開始轉
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

; 恐懼獵疊一下層數開始轉
*~W::
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

; 恐懼獵開場疊層數後開始轉
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

; 左鍵連點
~R::
while GetKeyState("R", "P") {
    MouseClick, left
    Sleep, 40
}
return

; 右鍵連點
~D::
while GetKeyState("D", "P") {
    MouseClick, right
    Sleep, 40
}
return

; 天拳聖教
; ~Z::
; if cont {
;     cont := false
;     Release()
; } else {
;     cont := true
;     Send, {1 Down}
;     Send, {2 Down}
;     Send, {3 Down}
;     while cont {
;         MouseClick, left
;         Sleep, 40
;     }
;     Release()
; }
; return

; 三光聖教六個技能連按
; ~X::
; if cont {
;     cont := false
;     Release()
; } else {
;     cont := true
;     while cont {
;         Send, 1
;         Send, 2
;         Send, 3
;         Send, 4
;         MouseClick, left
;         MouseClick, right
;         Sleep, 20
;     }
;     Release()
; }
; return

; 按下強制行走鍵解除腳本
~E::
if cont {
    cont := False
    Release()
}
Return

; 拆解裝備
~U::
MouseClick, Left
Send, {Enter}
Return

; 火鳥秘術師：二技連點
; ~V::
; if cont2 {
;     cont2 := false
;     Release()
; } else {
;     cont2 := true
;     Send, {Tab Down}
;     Send, 1
;     Send, 2
;     Send, 4
;     Click, Left
;     Click, Right
;     Send, {Tab Up}
;     while cont2 {
;         Send, 2
;         Sleep, 20
;     }
;     Release()
; }
; return

; 回城中斷火鳥連點
~T::
cont2 := False
Return

; 開啟地圖中斷火鳥連點
~M::
cont2 := False
Return
