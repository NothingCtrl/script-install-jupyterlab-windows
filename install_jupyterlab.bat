@echo OFF
@title Install Jupyter LAB
rem ====================================
set PYTHON_VENV=venv
set DATA_DIR=data
rem ====================================

if exist %PYTHON_VENV%\ (
    @echo ==============================
    @echo The "%PYTHON_VENV%" folder is exist! Please delete it to continue install...
    @echo ==============================
    pause
) else (
    virtualenv %PYTHON_VENV%
    call %PYTHON_VENV%\Scripts\activate.bat
    pip install jupyterlab
    if exist %DATA_DIR%\ (
        @echo The "%DATA_DIR%" folder is exist!
    ) else (
        mkdir %DATA_DIR%
    )
    @echo ==============================
    @echo Install Jupyter LAB is done! Using script "run_jupyterlab.bat" to start app, all data will save in %DATA_DIR% folder.
    @echo ==============================
    pause
)
