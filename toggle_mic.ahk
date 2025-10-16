#Requires AutoHotkey v2.0

; Variable global para rastrear el estado
global micMuted := false

#!v:: {
    exe := "C:\Users\Paul\Documents\Tools\nircmd-x64\nircmd.exe"
    
    if !FileExist(exe) {
        MsgBox("No se encontró NirCmd en: " exe)
        return
    }

    try {
        ; Alternar el micrófono
        RunWait(exe " mutesysvolume 2 default_record", , "Hide")
        
        ; Cambiar el estado
        global micMuted
        micMuted := !micMuted
        
        ; Mostrar el estado actual (invertido)
        if micMuted {
            ToolTip("🎙️ Micrófono encendido")
        } else {
            ToolTip("🔇 Micrófono apagado")
        }
        
        SetTimer(() => ToolTip(), -1500)
    } catch as e {
        MsgBox("Error: " e.Message)
    }
}