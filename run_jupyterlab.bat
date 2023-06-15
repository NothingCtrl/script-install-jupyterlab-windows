@echo OFF
@title Jupyter LAB :8888
rem ====================================
set PYTHON_VENV=venv
set DATA_DIR=data
rem ====================================

call %PYTHON_VENV%\Scripts\activate.bat
if exist %DATA_DIR%\ (
    cd %DATA_DIR%
    jupyter-lab
) else (
    mkdir %DATA_DIR%
    cd %DATA_DIR%
    jupyter-lab
)