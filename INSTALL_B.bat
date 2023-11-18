@echo off
Mode 52,16
title LAG
set Version=1.0
set DevBuild=No
cd %tmp%

::Begin Log
set error="%tmp%\LAGError.txt"
set log="%tmp%\LAGLog.txt"
echo log_started >%log% 2>%error%

::Enable Delayed Expansion
setlocal EnableDelayedExpansion

::Enable ANSI escape sequences
for /f "tokens=3" %%a in ('Reg query HKCU\CONSOLE /v VirtualTerminalLevel 2^>nul') do set /a "ANSI=%%a"
if "%ANSI%" neq "1" (
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f
start "" "%~s0"
exit /b
)

::Choice Prompt Setup
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

:DarkMode
for /f "tokens=3 skip=2" %%a in ('Reg query "HKCU\Software\LAG" /v DarkMode 2^>nul') do set /a "DarkMode=%%a"
if "%DarkMode%" equ "1" (
::Text Color Red
set col1=[91m
::Highlight Color Blue
set col2=[94m
color fc
) else (
::Text Color White
set col1=[97m
::Highlight Color Red
set col2=[31m
color f
)
if "%~1" equ "change" goto:eof

::Check For PowerShell
if not exist "%windir%\system32\WindowsPowerShell\v1.0\powershell.exe" (
call:LAGLogo
echo.
echo %BS%               Missing PowerShell 1.0
echo %BS%             press C to continue anyway
choice /c:"CQ" /n /m "%BS%               [C] Continue  [Q] Quit" & if !errorlevel! equ 2 exit /b
)

::Run CMD in 32-Bit
set SystemPath=%SystemRoot%\System32
if not "%ProgramFiles(x86)%"=="" (if exist %SystemRoot%\Sysnative\* set SystemPath=%SystemRoot%\Sysnative)
if "%processor_architecture%" neq "AMD64" (start "" /I "%SystemPath%\cmd.exe" /c "%~s0" & exit /b)

::Check For Updates
curl -g -k -L -# -o "%tmp%\latestVersion.bat" "https://raw.githubusercontent.com/LAG001/INSTALL_B/main/Files/Version" >nul 2>&1
call "%tmp%\latestVersion.bat"
if "%DevBuild%" neq "Yes" if "%Version%" lss "!latestVersion!" (cls
	call:LAGLogo
	echo.
	echo             Warning, LAG isn't updated.
	echo        Would you like to update to version %col2%!latestVersion!?
	echo.
	choice /c:"YN" /n /m "%BS%                   [Y] Yes  [N] No"
	if !errorlevel! equ 1 (
		curl -L -o "%~s0" "https://github.com/LAG001/INSTALL_B/releases/latest/download/INSTALL_B.bat" >nul 2>&1
		call "%~s0"
	)
)


:Home
Mode 52,16
cls
echo.
echo       %col1%Speed up %col2%performance%col1%, %col2%latency%col1%, and %col2%ping%col1%
echo %BS%     %col1%______ _____ ___ ___ _______    %col2%___   ___%col1%
echo %BS%    ^|\   __\   ___\  \\  \\   _  \  %col2%^|\  \ /  /^|%col1%
echo %BS%    \ \  \__\  \__^|\  \\  \\  \\  \ %col2%\ \  \  / /%col1%
echo %BS%     \ \   __\  \   \   _  \\  \\  \ %col2%\ \   / /%col1%
echo %BS%      \ \  \__\  \___\  \\  \\  \\  \%col2% \/   \/%col1%
echo %BS%       \ \_____\______\  \\__\\______\%col2%/  \  \%col1%
echo %BS%        \^|_____^|______^|__^|^|__^|^|______%col2%/__/ \__\%col1%
echo %BS%                                     %col2%^[__^|\^|__]%col1%
echo           %col1%[%col2%1%col1%] Optimize  [%col2%2%col1%] More
echo      [%col2%3%col1%] Undo  [%col2%4%col1%] Credits  [%col2%5%col1%] Presets
echo           [%col2%G%col1%] Game-Booster%col2% 
echo.
timeout 5
@echo off
title  BET PowerPunch By LAG
chcp 65001
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$h#$e# & echo on & for %%b in (1) do rem"') do (set "del=%%a" & set "col=%%b")
call :IsAdmin      

    sleep 800
    :lobby
    title BET. PowerPunch By LAG
    mode 60,18 > NUL
    cls

:R1
mode 72,18
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. %COL%[31m
echo.          ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
echo.          ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.          ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
echo.          ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
echo.          ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
echo.          ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
timeout 0 > nul
Cls
:R2 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. %COL%[32m
echo.          ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
echo.          ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.          ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
echo.          ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
echo.          ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
echo.          ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
timeout 0 > nul
Cls
Goto R3
:R3
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. %COL%[33m
echo.          ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
echo.          ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.          ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
echo.          ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
echo.          ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
echo.          ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO.
timeout 0 > nul 
Cls
Goto R4
:R4
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. %COL%[34m
echo.          ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
echo.          ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.          ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
echo.          ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
echo.          ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
echo.          ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO.
timeout 0 > nul 
Cls
Goto R5
:R5
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. %COL%[35m
echo.          ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
echo.          ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.          ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
echo.          ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
echo.          ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
echo.          ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO. 
ECHO.
@echo off
bcdedit /set useplatformtick yes
bcdedit /timeout 0
bcdedit /set nx optout
bcdedit /set bootux disabled
bcdedit /set bootmenupolicy standard
bcdedit /set hypervisorlaunchtype off
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set quietboot yes
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000069 true
bcdedit /set {globalsettings} custom:16000068 true
bcdedit /set linearaddress57 OptOut
bcdedit /set increaseuserva 268435328
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem Yes
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
cls     
title BET. PowerPunch By LAG
@echo off
netsh int tcp show glob
netsh int tcp reset
netsh int tcp set glob auto=re
netsh int tcp set glob ecn=ena
netsh int tcp set glob time=ena
netsh int tcp set glob init=1500
netsh int tcp set glob non=ena
netsh int tcp set glob max=2
netsh int tcp set glob pac=init
netsh interface udp set glob uro=ena
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh interface 6to4 set relay www.google.com enabled 999999999
netsh interface isatap set rou www.google.com enabled 999999999
netsh int ipv4 set glob icmpredirects=ena
netsh int ipv4 set glob taskoffload=ena
netsh int ipv4 set glob dhcpmediasense=ena
netsh int ipv4 set glob randomizeidentifiers=ena
netsh int ipv4 set glob loopbacklargemtu=ena
netsh int ipv4 set glob sourcebasedecmp=ena
netsh int ipv4 set glob reassemblyoutoforderlimit=9999
netsh int ipv4 set glob flowlabel=ena
netsh int ipv4 set glob mediasenseeventlog=ena
netsh int ipv4 set glob multicastforwarding=ena
netsh int ipv4 set glob groupforwardedfragments=ena
netsh int ipv4 set glob addressmaskreply=ena
netsh int ipv4 set glob defaultcurhoplimit=128
netsh int ipv4 set glob neighborcachelimit=999999999
netsh int ipv4 set glob routecachelimit=999999999
netsh int ipv4 set glob reassemblylimit=999999999
netsh int ipv4 set glob sourceroutingbehavior=drop
netsh int ipv4 set glob loopbackexecutionmode=adaptive
netsh int ipv6 set glob icmpredirects=ena
netsh int ipv6 set glob taskoffload=ena
netsh int ipv6 set glob dhcpmediasense=ena
netsh int ipv6 set glob randomizeidentifiers=ena
netsh int ipv6 set glob loopbacklargemtu=ena
netsh int ipv6 set glob sourcebasedecmp=ena
netsh int ipv6 set glob reassemblyoutoforderlimit=9999
netsh int ipv6 set glob flowlabel=ena
netsh int ipv6 set glob mediasenseeventlog=ena
netsh int ipv6 set glob multicastforwarding=ena
netsh int ipv6 set glob groupforwardedfragments=ena
netsh int ipv6 set glob addressmaskreply=ena
netsh int ipv6 set glob defaultcurhoplimit=128
netsh int ipv6 set glob neighborcachelimit=999999999
netsh int ipv6 set glob routecachelimit=999999999
netsh int ipv6 set glob reassemblylimit=999999999
netsh int ipv6 set glob sourceroutingbehavior=drop
netsh int ipv6 set glob loopbackexecutionmode=adaptive
cls
title BET. PowerPunch By LAG
@echo off
netsh interface tcp set heuristics enabled
netsh interface tcp set global autotuning=restricted
netsh interface ip delete arpcache
netsh int tcp set global netdma=enabled
netsh int tcp set global dca=enabled
netsh int ipv4 set glob defaultcurhoplimit=136
netsh int ipv6 set glob defaultcurhoplimit=136
set supplemental congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=3
netsh int tcp set global fastopen=enabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=restricted
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=enabled
netsh int tcp set global initialRto=3888
netsh int tcp set global rsc=enabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global autotuninglevel=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global timestamps=enabled
netsh int tcp set global nonsackrttresiliency=enabled
netsh int tcp set supplemental template=custom icw=15,8
ipconfig /flushdns
ipconfig /flushdns
cls
bcdedit /set useplatformtick yes
Cls
bcdedit /set useplatformclock false
Cls
bcdedit /set nx AlwaysOff
Cls
bcdedit /set tscsyncpolicy Enhanced
cls
bcdedit /deletevalue useplatformclock
Cls
bcdedit /set disabledynamictick yes
Cls
bcdedit /set useplatformtick yes
Cls
bcdedit /timeout 0
Cls
bcdedit /set nx optout
Cls
bcdedit /set bootux disabled
Cls
bcdedit /set bootmenupolicy standard
Cls
bcdedit /set hypervisorlaunchtype off
Cls
bcdedit /set tpmbootentropy ForceDisable
Cls
bcdedit /set quietboot yes
Cls
bcdedit /set {globalsettings} custom:16000067 true
Cls
bcdedit /set {globalsettings} custom:16000069 true
Cls
bcdedit /set {globalsettings} custom:16000068 true
Cls
::V2.0
exit




:LAGLogo
cls
echo.
echo.%col1%
echo %BS%     ______ _____ ___ ___ _______    %col2%___   ___%col1%
echo %BS%    ^|\   __\   ___\  \\  \\   _  \  %col2%^|\  \ /  /^|%col1%
echo %BS%    \ \  \__\  \__^|\  \\  \\  \\  \ %col2%\ \  \  / /%col1%
echo %BS%     \ \   __\  \   \   _  \\  \\  \ %col2%\ \   / /%col1%
echo %BS%      \ \  \__\  \___\  \\  \\  \\  \%col2% \/   \/%col1%
echo %BS%       \ \_____\______\  \\__\\______\%col2%/  \  \%col1%
echo %BS%        \^|_____^|______^|__^|^|__^|^|______%col2%/__/ \__\%col1%
echo %BS%                                     %col2%^[__^|\^|__]%col1% %Version%
goto:eof
