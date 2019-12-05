; @REM 20191205
@REM https://stackoverflow.com/questions/25648155/windows-command-line-to-read-version-info-of-an-executable-file
wmic datafile where name="C:\\Windows\\System32\\termsrv.dll" get Version /value
