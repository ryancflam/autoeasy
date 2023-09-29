#SingleInstance Force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

global delay_ms := 100
Hotkey ], easy_key
Hotkey [, reset_key
Hotkey \, reset_from_death_key

press_key(key, presses := 1, delay_after := 0, delay_before := 0)
{
    Loop %presses%
    {
        Sleep %delay_before%
        Send {%key%}
        Sleep %delay_after%
    }
}

easy()
{
    press_key("Esc", 1, delay_ms)
    press_key("Tab", 3, delay_ms)
    press_key("Enter", 1, delay_ms)
    press_key("Tab", 2, delay_ms)
    press_key("Enter", 3, delay_ms)
    press_key("Esc")
}

reset()
{
    press_key("Esc", 1, delay_ms)
    press_key("Tab", 1, delay_ms)
    press_key("Enter")
}

reset_from_death()
{
    press_key("Tab", 1, delay_ms, (1000 + delay_ms))
    press_key("Tab", 1, delay_ms)
    press_key("Enter", 1, (1000 + delay_ms))
    press_key("Tab", 1, delay_ms)
    press_key("Enter")
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
