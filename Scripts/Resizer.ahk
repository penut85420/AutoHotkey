Pause::
    InputBox, width, Resize, Width:, , 140, 130
    InputBox, height, Resize, Height:, , 140, 130
    WinGet, window, ID, A
    WinMove, ahk_id %window%, , , , width, height
    return