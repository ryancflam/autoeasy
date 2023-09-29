#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

global delay_ms := 100
Hotkey, ], easy_key
Hotkey, [, reset_key

easy()
{
    send, {Esc}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Enter}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Enter}
    sleep, %delay_ms%
    send, {Enter}
    sleep, %delay_ms%
    send, {Enter}
    sleep, %delay_ms%
    send, {Esc}
}

reset()
{
    send, {Esc}
    sleep, %delay_ms%
    send, {Tab} 
    sleep, %delay_ms%
    send, {Enter}
}

#IfWinActive, Minecraft
{
    easy_key:
        easy()
        return
    reset_key:
        reset()
        return
}
