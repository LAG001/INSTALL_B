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
exit
