@echo OFF
@title Jupyter LAB Server List
rem ====================================
set BASE_DIR=%cd%
set PYTHON_VENV=venv
rem ====================================

cd %BASE_DIR%
call %PYTHON_VENV%\Scripts\activate.bat
jupyter server list
pause