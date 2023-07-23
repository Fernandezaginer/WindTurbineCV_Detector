@echo off
echo Installing all python modules ...
echo This will take a time ...
set "modules=tqdm torch torchvision"
set "python_path=python"

for %%i in (%modules%) do (
    %python_path% -m pip show %%i > nul 2>&1
    if not errorlevel 1 (
        echo %%i is installed.
    ) else (
		echo installing %%i
        pip install %%i
    )
)
