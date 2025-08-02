# 💻 Dotfiles 💻

### First of all, take a look at the github-generated summary

> [!WARNING]
> Note that this only works with 64-bit computers

> [!NOTE]
> Not tested on windows 10

> [!IMPORTANT]
> Install Powershell 7 using `winget install Microsoft.PowerShell`





<details><summary>Install scoop first! (if you don't have it)</summary>
    
```pwsh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```
>This will add scoop to your computer + PATH
</details>

Install git with `scoop install git` (If you don't have it!)


Making things simple, clone the repo and enter on it's folder. To do so, do the following:
```pwsh
git clone https://github.com/LUISMAGAIVER341/---Dotfiles--- --depth 1
#Let's cd on it for making it easier!
cd ---Dotfiles---
```

Install the apps needed (Plus fonts and other stuff that we will set up!)
```pwsh
scoop import ./Scoopfile.json
```

(The Scoopfile contains also vscode, obs-studio, git, rustup, go and other stuff. If you have obs and vscode, you can remove it from Scoopfile or uninstalling from your system before)

# 🎚️ CAVA installation 🎚️
### Download [CAVA](https://github.com/karlstav/cava/releases) (cava_win.zip)
### Copy everything inside the `cava_win.zip` file and add it to your [`PATH`](https://www.youtube.com/watch?v=gb9e3m98avk&pp=0gcJCfwAo7VqN5tD) (click on it to see a tutorial!)


This repository is basically my `.config` under my `User` directory so you can just copy it to your `~/.config` folder.
```pwsh
cd ~ #Just in case you aren't
mkdir .config #Just in case it doesn't exist
copy <PATH/TO/THIS/REPO>/* .config/
```
Ok! Next, we need to install oh-my-posh and for so, `winget install JanDeDobbeleer.OhMyPosh --source winget --scope user --force` (Force the ohmyposh instalation as User-Wide only)

We also need to modify pwsh's profile (aka `$PROFILE`)
```pwsh
#Add this to your $PROFILE
Show-ColorScript

oh-my-posh init pwsh --config ~/.config/devkid.yaml | Invoke-Expression
```

<details>
    <summary>In case $PROFILE doesn't exist:</summary>

```pwsh
if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force
}
```
</details>

Well, you realised the presence of `Show-ColorScript` but it isn't installed.
Let's do it!
```pwsh
Install-Module -Name ps-color-scripts -Scope CurrentUser
```

Next, we need to run the following on pwsh (may be as admin):
```pwsh
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
```


Cool! Next, let's configure the terminal!

Copy the following JSON for `~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
<details><summary>Expand this to see the JSON</summary>

```json

{
    "$help": "https://aka.ms/terminal-documentation",
    "$schema": "https://aka.ms/terminal-profiles-schema",
    "actions": [],
    "copyFormatting": "none",
    "copyOnSelect": false,
    "defaultProfile": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
    "keybindings": 
    [
        {
            "id": "Terminal.CopyToClipboard",
            "keys": "ctrl+c"
        },
        {
            "id": "Terminal.PasteFromClipboard",
            "keys": "ctrl+v"
        },
        {
            "id": "Terminal.DuplicatePaneAuto",
            "keys": "alt+shift+d"
        }
    ],
    "launchMode": "focus",
    "newTabMenu": 
    [
        {
            "type": "remainingProfiles"
        }
    ],
    "profiles": 
    {
        "defaults": 
        {
            "colorScheme": "Catppuccin Macchiato",
            "font": 
            {
                "face": "Cascadia Mono NF"
            },
            "opacity": 90,
            "scrollbarState": "visible",
            "useAcrylic": true
        },
        "list": 
        [
            {
                "commandline": "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
                "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
                "hidden": false,
                "name": "Windows PowerShell"
            },
            {
                "commandline": "%SystemRoot%\\System32\\cmd.exe",
                "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
                "hidden": false,
                "name": "Prompt de comando"
            },
            {
                "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
                "hidden": false,
                "name": "Azure Cloud Shell",
                "source": "Windows.Terminal.Azure"
            },
            {
                "guid": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
                "hidden": false,
                "name": "PowerShell",
                "source": "Windows.Terminal.PowershellCore"
            }
        ]
    },
    "schemes": 
    [
        {
            "background": "#EFF1F5",
            "black": "#5C5F77",
            "blue": "#1E66F5",
            "brightBlack": "#ACB0BE",
            "brightBlue": "#1E66F5",
            "brightCyan": "#179299",
            "brightGreen": "#40A02B",
            "brightPurple": "#EA76CB",
            "brightRed": "#D20F39",
            "brightWhite": "#BCC0CC",
            "brightYellow": "#DF8E1D",
            "cursorColor": "#DC8A78",
            "cyan": "#179299",
            "foreground": "#4C4F69",
            "green": "#40A02B",
            "name": "Catppuccin Latte",
            "purple": "#EA76CB",
            "red": "#D20F39",
            "selectionBackground": "#ACB0BE",
            "white": "#ACB0BE",
            "yellow": "#DF8E1D"
        },
        {
            "background": "#24273A",
            "black": "#494D64",
            "blue": "#8AADF4",
            "brightBlack": "#5B6078",
            "brightBlue": "#8AADF4",
            "brightCyan": "#8BD5CA",
            "brightGreen": "#A6DA95",
            "brightPurple": "#F5BDE6",
            "brightRed": "#ED8796",
            "brightWhite": "#A5ADCB",
            "brightYellow": "#EED49F",
            "cursorColor": "#F4DBD6",
            "cyan": "#8BD5CA",
            "foreground": "#CAD3F5",
            "green": "#A6DA95",
            "name": "Catppuccin Macchiato",
            "purple": "#F5BDE6",
            "red": "#ED8796",
            "selectionBackground": "#5B6078",
            "white": "#B8C0E0",
            "yellow": "#EED49F"
        }
    ],
    "themes": []
}
```
</details>