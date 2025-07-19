@echo off
:: Kiểm tra quyền admin
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Dang yeu cau quyen admin...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

echo ==== TAT DICH VU SysMain ====
sc stop "SysMain"
sc config "SysMain" start= disabled
echo ---- DA TAT SysMain ----
pause
