# 🎙️ Mute-Mic-Win11

Simple keyboard shortcut to mute/unmute your microphone on Windows 11 using AutoHotkey v2.

## ✨ Features

- **Quick shortcut**: `Win + Alt + V` to toggle microphone
- **Visual notification**: Shows a tooltip indicating current state
- **Lightweight**: No background resource consumption
- **Compatible**: Windows 10/11

## 📋 Requirements

1. **AutoHotkey v2.0** - [Download here](https://apps.microsoft.com/detail/9plqfdg8hh9d?hl=es-ES&gl=ES)
2. **NirCmd** - [Download here](https://www.nirsoft.net/utils/nircmd.html)

## 🚀 Installation

### Step 1: Install AutoHotkey v2.0
Choose one of the following options:
- **Option A**: Install from [Microsoft Store](https://apps.microsoft.com/detail/9plqfdg8hh9d?hl=es-ES&gl=ES) (recommended)
- **Option B**: Download and install from [autohotkey.com](https://www.autohotkey.com/)

### Step 2: Download NirCmd
1. Download NirCmd from [nirsoft.net](https://www.nirsoft.net/utils/nircmd.html)
2. Extract the `nircmd.exe` file to a folder of your choice
3. **Important**: Right-click on `nircmd.exe` → Properties → Unblock (if the option appears)

### Step 3: Configure the script
1. Download the `toggle_mic.ahk` file from this repository
2. Open the file with a text editor
3. Modify the NirCmd executable path on line 7:
   ```autohotkey
   exe := "C:\PATH\TO\YOUR\FOLDER\nircmd.exe"
   ```
4. Save the file

### Step 4: Run
1. Double-click on `toggle_mic.ahk` to run the script
2. You'll see the AutoHotkey icon in the system tray
3. Press `Win + Alt + V` to test

## ⌨️ Usage

- **Win + Alt + V**: Toggle between mute/unmute microphone
- A tooltip will appear showing:
  - 🎙️ **Microphone on**
  - 🔇 **Microphone off**

## 🔧 Run at Windows Startup

To make the script run automatically when Windows starts:

1. Press `Win + R` and type: `shell:startup`
2. Copy the `toggle_mic.ahk` file (or a shortcut) to that folder
3. The script will run automatically every time you start Windows

## 📝 Customization

### Change the keyboard shortcut
Edit line 6 of the script:
```autohotkey
#!v::  ; Win + Alt + V
```

Available symbols:
- `#` = Win
- `!` = Alt
- `^` = Ctrl
- `+` = Shift

Examples:
- `^!m::` = Ctrl + Alt + M
- `#m::` = Win + M
- `^+v::` = Ctrl + Shift + V

### Change tooltip duration
Modify the value in the line with `SetTimer`:
```autohotkey
SetTimer(() => ToolTip(), -1500)  ; 1500 = 1.5 seconds
```

## ⚠️ Troubleshooting

### The script doesn't work
1. Verify you're using **AutoHotkey v2.0** (not v1.1)
2. Make sure the path to `nircmd.exe` is correct
3. Unblock `nircmd.exe` (Properties → Unblock)
4. Run the script as administrator

### The state is displayed backwards
If the messages are inverted, change line 4:
```autohotkey
global micMuted := true  ; Change false to true
```

## 📄 License

MIT License - Feel free to use and modify this script.

## 🤝 Contributions

Contributions are welcome. Feel free to open an issue or pull request.

## 💡 Credits

- [AutoHotkey](https://www.autohotkey.com/) - Automation framework
- [NirCmd](https://www.nirsoft.net/utils/nircmd.html) - NirSoft command-line tool
