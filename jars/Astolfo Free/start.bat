@echo off
SET JDK_PATH="C:\Program Files\Zulu\zulu-8\bin\java.exe"

echo JDK: %JDK_PATH%

SET SCRIPT_DIR=%~dp0

%JDK_PATH% -Dos.name="Windows 10" -Dos.version="10.0" ^
-XX:HeapDumpPath=%SCRIPT_DIR%Astolfo.heapdump ^
-Djava.library.path=%SCRIPT_DIR%natives ^
-Dminecraft.launcher.brand=minecraft-launcher ^
-Dminecraft.launcher.version=3.2.13 ^
-Dminecraft.client.jar=%SCRIPT_DIR%Astolfo.jar ^
-cp "%SCRIPT_DIR%libs;%SCRIPT_DIR%Astolfo.jar" ^
-Xmx4G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC ^
-XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M ^
-Dlog4j.configurationFile=%SCRIPT_DIR%assets\log_configs\client-1.7.xml ^
start.Main --username Free --version 1.8.9 ^
--gameDir "%APPDATA%\.minecraft" ^
--assetsDir "%APPDATA%\.minecraft\assets" --assetIndex 1.8 ^
--uuid 887341c45ea94dd3bae9bb00502124f1 --accessToken changeme ^
--userProperties {} --userType msa