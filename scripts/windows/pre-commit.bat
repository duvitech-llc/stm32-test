@echo off

REM Run Clang-format
echo Running Clang-format...

REM Format .c and .h files in Core/Src and Core/Inc directories
clang-format -i Core/Src/*.c Core/Inc/*.h

REM Check if there are any changes after formatting
git diff --exit-code
IF %ERRORLEVEL% NEQ 0 (
    echo Clang-format found style violations. Commit aborted.
    exit /b 1
)

echo All checks passed. Proceeding with commit.
exit /b 0
