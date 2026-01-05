@echo off
REM Cross-platform wrapper for generate_sidebar.py (Windows)

echo Generating Docsify sidebar...
echo.

REM Try python3 first
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    python3 generate_sidebar.py
    exit /b %errorlevel%
)

REM Fall back to python
python --version >nul 2>&1
if %errorlevel% == 0 (
    python generate_sidebar.py
    exit /b %errorlevel%
)

REM If neither works, show error
echo Error: Python not found!
echo.
echo Please install Python 3.11 or higher from python.org
echo.
exit /b 1
