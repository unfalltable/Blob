@echo off
SET /p commitMessage="Please enter the submission information: "
IF "%commitMessage%"=="" (
    echo The submitted information cannot be empty.
    exit /b
)

git add .
git commit -m "%commitMessage%"
IF %ERRORLEVEL% NEQ 0 (
    echo Submission failed, please check if the submission information is correct.
    exit /b
)

SET /p branchName="Please enter the name of the branch to be pushed (default to main):"
IF "%branchName%"=="" (
    SET branchName=main
)

git pull origin %branchName%
git push origin %branchName%
IF %ERRORLEVEL% NEQ 0 (
    echo Push failed, please check the branch name and network connection.
    exit /b
)

pause