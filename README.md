# Shell Things
Custom menus and commands for Nilesoft Shell.

## Table of contents

- [Download from clipboard](#download-from-clipboard)
- [Update modified date](#update-modified-date)
- [View in Edge PDF Reader](#view-in-edge-pdf-reader)

--------------------

### Download from clipboard

* Prerequisites:
    * WGET: `winget install JernejSimoncic.Wget`
* Shell Code:
```
item(where=str.len(clipboard.get)>0 title='Download from clipboard' image=image.svg('<svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 300 300"><g fill="@(theme.isdark ? '#fff':'#000')"><path d="M225 15c33.08 0 60 26.92 60 60v150c0 33.08-26.92 60-60 60H75c-33.08 0-60-26.92-60-60V75c0-33.08 26.92-60 60-60h150m0-15H75C33.58 0 0 33.58 0 75v150c0 41.42 33.58 75 75 75h150c41.42 0 75-33.58 75-75V75c0-41.42-33.58-75-75-75Z"/><path d="M225 79c33.08 0 60 26.92 60 60v86c0 33.08-26.92 60-60 60H75c-33.08 0-60-26.92-60-60v-86c0-33.08 26.92-60 60-60h150m0-15H75C33.58 64 0 97.58 0 139v86c0 41.42 33.58 75 75 75h150c41.42 0 75-33.58 75-75v-86c0-41.42-33.58-75-75-75Z"/></g><g fill="@image.color2"><rect width="15" height="100" x="142.5" y="123.45" rx="7" ry="7"/><rect width="15" height="61" x="126.24" y="186.08" rx="7" ry="7" transform="rotate(-45 133.738 216.574)"/><rect width="15" height="61" x="158.76" y="186.08" rx="7" ry="7" transform="rotate(45 166.26 216.577)"/></g></svg>') cmd='cmd.exe' args='/C TITLE Download clipboard && echo. && echo Download Clipboard via WGet && PUSHD "@sel.dir" && echo. && WGET "@clipboard.get"' parent='File manage' pos=bottom)
```
* Location:
    * Appears as the last item in the `File manage` menu.

### Update modified date

* Prerequisites:
    * PowerShell: Download [this PowerShell script](./scripts/update_modified_date.ps1) and place it as `%SystemDrive%\Program Files\Nilesoft Shell\scripts\update_modified_date.ps1`.
* Shell Code:
```
item(mode='multiple' title='Update date modified' image=image.svg('<svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 300 300"><path fill="@(theme.isdark ? '#fff':'#000')" d="M150 15c36.06 0 69.96 14.04 95.46 39.54S285 113.94 285 150s-14.04 69.96-39.54 95.46S186.06 285 150 285s-69.96-14.04-95.46-39.54S15 186.06 15 150s14.04-69.96 39.54-95.46S113.94 15 150 15m0-15C67.16 0 0 67.16 0 150s67.16 150 150 150 150-67.16 150-150S232.84 0 150 0Z"/><g fill="@image.color2"><path d="M150 62.5c4.14 0 7.5 3.36 7.5 7.5v80c0 4.14-3.36 7.5-7.5 7.5-4.14 0-7.5-3.36-7.5-7.5V70c0-4.14 3.36-7.5 7.5-7.5Z"/><path d="M144.69 144.69a7.502 7.502 0 0 1 10.61 0l42.43 42.43a7.502 7.502 0 1 1-10.61 10.61l-42.43-42.43a7.502 7.502 0 0 1 0-10.61Z"/></g></svg>') window='hidden' cmd='PowerShell.exe' args='-NoProfile -NonInteractive -NoLogo -ExecutionPolicy Bypass -File "@sys.prog\Nilesoft Shell\scripts\update_date_modified.ps1" @sel(true)' parent='File manage' pos=2)
```
* Location:
    * Appears as the third item in the `File manage` menu.

### View in Edge PDF Reader

* Prerequisites:
    * None
* Shell Code:
```
item(type='file' find='.pdf' mode='multiple' title='View in Edge PDF Reader' image='@sys.prog32\Microsoft\Edge\Application\msedge.exe,0' window='hidden' cmd='cmd.exe' args='/c for %F in (@sel(true)) do start "" "@sys.prog32\Microsoft\Edge\Application\msedge.exe" --app="file:///%~F"' pos=1)
```
* Location:
    * Appears in the main menu as the second item.