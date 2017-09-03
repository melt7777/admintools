# Windows commands and scripts

#############################################################
# ENABLE RDP CONNECTIONS ON SPECIFIED PORT FROM ELEVATED COMMAND PROMPT - WINDOWS 10
#############################################################

# example: for port 20000
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall add rule name="rdp" dir=in action=allow protocol=TCP localport=20000
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 0x4e20

#############################################################
# Unpack zip/rar files in deep dir structure
#############################################################
Have you ever had zip or rar files buried deep into a directory structure that you need to unpack? Instead of swearing and shaking your fist at the problem, try out this simple solution.

### Extract all zips in Windows using 7zip 

To get a list of rar files:  dir /s /b . | findstr /i .rar

for /R "C:\root\folder" %%I in ("*.zip") do ("%ProgramFiles(x86)%\7-Zip\7z.exe" x -y -o"%%~dpI" "%%~fI")

