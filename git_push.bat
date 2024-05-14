@echo off
SET /p commitMessage="请输入提交信息: "
IF "%commitMessage%"=="" (
    echo 提交信息不能为空。
    exit /b
)

git add .
git commit -m "%commitMessage%"
IF %ERRORLEVEL% NEQ 0 (
    echo 提交失败，请检查提交信息是否正确。
    exit /b
)

SET /p branchName="请输入要推送的分支名称 (默认为 main): "
IF "%branchName%"=="" (
    SET branchName=main
)

git pull origin %branchName%
git push origin %branchName%
IF %ERRORLEVEL% NEQ 0 (
    echo 推送失败，请检查分支名称和网络连接。
    exit /b
)

pause