^!t:: {  ; Ctrl + Alt + T = remove barra
    WinSetStyle("-0xC00000", "A")
}

^!r:: {  ; Ctrl + Alt + R = volta a barra
    WinSetStyle("+0xC00000 +0x80000", "A")
}
#Enter:: {
    Run("wt")
}
#!v:: {
    Run("code")
}