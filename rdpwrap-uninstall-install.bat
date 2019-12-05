@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -u -r
echo ______________________________________________________________
echo.
echo You can check RDP functionality with RDPCheck program.
echo Also you can configure advanced settings with RDPConf program.
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey

@REM http://www.openmutual.org/2011/08/gnu-wget-missing-libeay32-dll-on-new-install-on-windows/
@REM https://redfern.me/skipping-certificate-checks-with-wget/
@REM https://serverfault.com/questions/171369/how-to-allow-wget-to-overwrite-files
"%~dp0wget.exe" --no-check-certificate https://raw.githubusercontent.com/zeram/rdpwrap/master/res/rdpwrap.ini --output-document="%~dp0rdpwrap.ini"
"wget.exe" --no-check-certificate https://raw.githubusercontent.com/zeram/rdpwrap/master/res/rdpwrap.ini --output-document="rdpwrap.ini"


@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -i -r
echo ______________________________________________________________
echo.
echo You can check RDP functionality with RDPCheck program.
echo Also you can configure advanced settings with RDPConf program.
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey

