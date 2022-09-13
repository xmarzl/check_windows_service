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
cd /usr/lib/nagios/plugins
wget https://raw.githubusercontent.com/xmarzl/check_windows_service/main/check_windows_service.ps1
chmod 750 /usr/lib/nagios/plugins/check_windows_service.ps1
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
