# check_windows_service
checking windows services with a powershell script

## Example output:
```
.\check_windows_service.ps1
icinga2 is running.
```
```
.\check_windows_service.ps1
icinga2 is stopped.
```


## Installation:
```sh
open this page: https://raw.githubusercontent.com/xmarzl/check_windows_service/main/check_windows_service.ps1
CTRL + A, CTRL + C (Select all and copy)
WIN + R -> insert "notepad"
CTRL + V (paste)
CTRL + S (save)
Navigate to C:\ProgramFiles\ICINGA2\sbin
Filetyp: All Files
Filename: check_windows_service.ps1
Press save
```
## 

| Parameter         | Description                 |
| ----------------- | --------------------------- |
| -service_name     | name of service             |
| usage | .\check_windows_service.ps1 -service_name <servicename> |

Example:
```powershell
.\check_windows_service.ps1 -service_name icinga2
```
