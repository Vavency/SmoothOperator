for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H
del "%resourcepacks%\%v1.18%.zip.bak"
ren "%resourcepacks%\%v1.18%.zip" "%v1.18%.zip.bak"
cd "Java 1.18"
@ECHO on
"C:\Program Files\7-Zip\7z.exe" a -y -tzip "..\%resourcepacks%\%v1.18%.zip" "*" -mx5
pause
