# 🎙️ Mute-Mic-Win11

Atajo de teclado simple para silenciar/activar el micrófono en Windows 11 usando AutoHotkey v2.

## ✨ Características

- **Atajo rápido**: `Win + Alt + V` para alternar el micrófono
- **Notificación visual**: Muestra un tooltip indicando el estado actual
- **Ligero**: No consume recursos en segundo plano
- **Compatible**: Windows 10/11

## 📋 Requisitos

1. **AutoHotkey v2.0** - [Descargar aquí](https://www.autohotkey.com/)
2. **NirCmd** - [Descargar aquí](https://www.nirsoft.net/utils/nircmd.html)

## 🚀 Instalación

### Paso 1: Instalar AutoHotkey v2.0
1. Descarga e instala AutoHotkey v2.0 desde [autohotkey.com](https://www.autohotkey.com/)

### Paso 2: Descargar NirCmd
1. Descarga NirCmd desde [nirsoft.net](https://www.nirsoft.net/utils/nircmd.html)
2. Extrae el archivo `nircmd.exe` en una carpeta de tu elección
3. **Importante**: Click derecho en `nircmd.exe` → Propiedades → Desbloquear (si aparece la opción)

### Paso 3: Configurar el script
1. Descarga el archivo `toggle_mic.ahk` de este repositorio
2. Abre el archivo con un editor de texto
3. Modifica la ruta del ejecutable de NirCmd en la línea 7:
   ```autohotkey
   exe := "C:\RUTA\A\TU\CARPETA\nircmd.exe"
   ```
4. Guarda el archivo

### Paso 4: Ejecutar
1. Doble click en `toggle_mic.ahk` para ejecutar el script
2. Verás el icono de AutoHotkey en la bandeja del sistema
3. Presiona `Win + Alt + V` para probar

## ⌨️ Uso

- **Win + Alt + V**: Alterna entre silenciar/activar el micrófono
- Aparecerá un tooltip mostrando:
  - 🎙️ **Micrófono encendido**
  - 🔇 **Micrófono apagado**

## 🔧 Ejecutar al inicio de Windows

Para que el script se ejecute automáticamente al iniciar Windows:

1. Presiona `Win + R` y escribe: `shell:startup`
2. Copia el archivo `toggle_mic.ahk` (o un acceso directo) en esa carpeta
3. El script se ejecutará automáticamente cada vez que inicies Windows

## 📝 Personalización

### Cambiar el atajo de teclado
Edita la línea 6 del script:
```autohotkey
#!v::  ; Win + Alt + V
```

Símbolos disponibles:
- `#` = Win
- `!` = Alt
- `^` = Ctrl
- `+` = Shift

Ejemplos:
- `^!m::` = Ctrl + Alt + M
- `#m::` = Win + M
- `^+v::` = Ctrl + Shift + V

### Cambiar duración del tooltip
Modifica el valor en la línea con `SetTimer`:
```autohotkey
SetTimer(() => ToolTip(), -1500)  ; 1500 = 1.5 segundos
```

## ⚠️ Solución de problemas

### El script no funciona
1. Verifica que estás usando **AutoHotkey v2.0** (no v1.1)
2. Asegúrate de que la ruta a `nircmd.exe` es correcta
3. Desbloquea `nircmd.exe` (Propiedades → Desbloquear)
4. Ejecuta el script como administrador

### El estado se muestra al revés
Si los mensajes están invertidos, cambia la línea 4:
```autohotkey
global micMuted := true  ; Cambiar false por true
```

## 📄 Licencia

MIT License - Siéntete libre de usar y modificar este script.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Siéntete libre de abrir un issue o pull request.

## 💡 Créditos

- [AutoHotkey](https://www.autohotkey.com/) - Framework de automatización
- [NirCmd](https://www.nirsoft.net/utils/nircmd.html) - Herramienta de línea de comandos de NirSoft