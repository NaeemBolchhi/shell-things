# Shell Things
Custom menus, commands, and features for Nilesoft Shell.

## Table of contents

- [Download from clipboard](#download-from-clipboard)

--------------------

### Download from clipboard

* Prerequisites:
    * WGET: `winget install JernejSimoncic.Wget`

```
item(where=str.len(clipboard.get)>0 title='Download from clipboard' image=image.svg('<svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 300 300"><g fill="@(theme.isdark ? '#fff':'#000')"><path d="M225 15c33.08 0 60 26.92 60 60v150c0 33.08-26.92 60-60 60H75c-33.08 0-60-26.92-60-60V75c0-33.08 26.92-60 60-60h150m0-15H75C33.58 0 0 33.58 0 75v150c0 41.42 33.58 75 75 75h150c41.42 0 75-33.58 75-75V75c0-41.42-33.58-75-75-75Z"/><path d="M225 79c33.08 0 60 26.92 60 60v86c0 33.08-26.92 60-60 60H75c-33.08 0-60-26.92-60-60v-86c0-33.08 26.92-60 60-60h150m0-15H75C33.58 64 0 97.58 0 139v86c0 41.42 33.58 75 75 75h150c41.42 0 75-33.58 75-75v-86c0-41.42-33.58-75-75-75Z"/></g><g fill="@image.color2"><rect width="15" height="100" x="142.5" y="123.45" rx="7" ry="7"/><rect width="15" height="61" x="126.24" y="186.08" rx="7" ry="7" transform="rotate(-45 133.738 216.574)"/><rect width="15" height="61" x="158.76" y="186.08" rx="7" ry="7" transform="rotate(45 166.26 216.577)"/></g></svg>') cmd='cmd.exe' args='/C TITLE Download clipboard && echo. && echo Download Clipboard via WGet && PUSHD "@sel.dir" && echo. && WGET "@clipboard.get"')
```