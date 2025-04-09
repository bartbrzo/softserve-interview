@echo off
setlocal
mkdir build
cd build
cmake ..
if %ERRORLEVEL% neq 0 exit /b 1
cmake --build .
if %ERRORLEVEL% neq 0 exit /b 1
mkdir %PREFIX%\bin
copy softserve-interview.exe %PREFIX%\bin\
if %ERRORLEVEL% neq 0 exit /b 1
endlocal
