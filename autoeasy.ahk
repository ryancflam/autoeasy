#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

global delay_ms := 100
Hotkey, ], easy_key
Hotkey, [, reset_key
Hotkey, \, reset_from_death_key

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

reset_from_death()
{
    sleep, (1000 + delay_ms)
    send, {Tab}
    sleep, %delay_ms%
    send, {Tab}
    sleep, %delay_ms%
    send, {Enter}
    sleep, (1000 + delay_ms)
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
    reset_from_death_key:
        reset_from_death()
        return
}
