# interactive-ssh

A set of Bash and PowerShell scripts that allow interactive connections to hosts configured in ssh config.

Created to reduce profiles for ssh in Windows Terminal.

## How To Use

### Bash

Requirements

- ssh
- git
- grep(GNU grep)
- cut(GNU coreutils)
- nl(GNU coreutils)

```bash
git clone https://github.com/Hyper-W/interactive-ssh.git

cd interactive-ssh

chmod a+xr ./Bash/interactive-ssh.sh

sudo cp ./Bash/interactive-ssh.sh /usr/local/bin/interactive-ssh

interactive-ssh
```

### PowerShell/Pwsh

Requirements

- ssh
- git
- powershell or pwsh

```PowerShell
git clone https://github.com/Hyper-W/interactive-ssh.git

cd interactive-ssh
```

#### GUI

```PowerShell
explorer.exe .\PowerShell
```

If you want to use it with `powershell.exe`, double click on `interactive-ssh.bat`.

If you want to use it with `pwsh.exe`, double click on `interactive-ssh-pwsh.bat`.

#### CLI

```PowerShell
powershell.exe -ExecutionPolicy Unrestricted -File ".\interactive-ssh.ps1" # PowerShell

pwsh.exe -File ".\interactive-ssh.ps1" # Pwsh

pwsh -File "./interactive-ssh.ps1" # Pwsh on Linux
```

### Windows Terminal Profile

Add the following entry to the `list` of `profiles` in `settings.json`.

Please change `${YOUR_GUID}`, `${CLONE_PATH}` and `${YOUR_SSH_DISTRIBUTION}` to your own values.

Running the added profile will execute `interactive-ssh`.

#### WSL

```json
            {
                "commandline": "wsl.exe -d ${YOUR_SSH_DISTRIBUTION} interactive-ssh",
                "guid": "{${YOUR_GUID}}",
                "hidden": false,
                "icon": "ms-appx:///ProfileIcons/{9acb9455-ca41-5af7-950f-6bca1bc9722f}.png",
                "name": "WSL SSH"
            }
```

#### PowerShell

```json
            {
                "commandline": "powershell.exe -ExecutionPolicy Unrestricted -File ${CLONE_PATH}\\PowerShell\\interactive-ssh.ps1",
                "guid": "{${YOUR_GUID}}",
                "hidden": true,
                "icon": "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
                "name": "SSH"
            }
```

#### Pwsh

```json
            {
                "commandline": "pwsh.exe -File ${CLONE_PATH}\\PowerShell\\interactive-ssh.ps1",
                "guid": "{${YOUR_GUID}}",
                "hidden": true,
                "icon": "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
                "name": "SSH"
            }
```

### After executing the `interactive-ssh`

You will be prompted to select a hosts.

Enter the number of the host you want to connect to via ssh from among the hosts displayed.

After selection, you will be connected to the selected host via ssh.