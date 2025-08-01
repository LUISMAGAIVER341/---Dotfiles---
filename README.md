# 💻 Dotfiles 💻

### First of all, take a look at the github-generated summary

> [!WARNING]
> Note that this only works with 64-bit computers

> [!NOTE]
> Not tested on windows 10

> [!IMPORTANT]
> Install Powershell 7 using `winget install Microsoft.PowerShell`





<details>
    <summary>Install scoop first! (if you don't have it)</summary>

    
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

This repository is basically my `.config` under my `User` directory so you can just copy it to your `~/.config` folder.
```pwsh
cd ~ #Just in case you aren't
mkdir .config #Just in case it doesn't exist
copy <PATH/TO/THIS/REPO> .config/
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

Copy the following json for `~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
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
            "colorScheme": "One Half Dark",
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
    "schemes": [],
    "themes": []
}
```
