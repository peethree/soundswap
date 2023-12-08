^!s::
    ; open sound settings
    Run, mmsys.cpl
    WinWait, Sound

    ; target the device list (it clicks in the middle for me)
    ControlClick, SysListView321

    ; move up twice to target the speakers
    ControlSend, SysListView321, {Up 2} 

    ; initial state of set def button
    ControlGet, InitialState, Enabled,, Button2,

    ; button 2 is set default button
    ControlClick, Button2

    Sleep, 50

    ; check final state 
    ControlGet, FinalState, Enabled,, Button2
    
    ; if set default button cannot be clicked, that must mean it's already set as def
    if (FinalState == InitialState) {  
        ControlClick, SysListView321    
        ControlSend, SysListView321, {Up 1} 
        ControlClick, Button2
    }

    WinClose, Sound
    return