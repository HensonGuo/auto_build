@ECHO OFF

REM (Clean,)? Build encfs 
echo.
echo ==================================================
echo                   BUILDING...             
echo ==================================================
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" D:\TestPrj\test.sln /p:Configuration=Release /p:Platform=x86 /p:QTDIR=E:\Qt\5.15.2 /p:DefaultQtVersion=E:\Qt\5.15.2\5.15.2\msvc2019 /t:Clean,Build
goto :build_finished



:build_finished

echo.
echo ==================================================
echo          built finished! 
echo ==================================================
echo.

goto :end



:no_msbuild

echo.
echo ==================================================
echo   MSBuild V140 is required to build this project!
echo ==================================================
echo.
exit /b 1

goto :end

:end
exit /b 0