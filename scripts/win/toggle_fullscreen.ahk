LWin & F::
    WinGetPos, X, Y,,, A
    if (Y > -5)
        Send {LWin Down}{Up Down}
    else
        Send {Lwin Down}{Down Down}
    Return
