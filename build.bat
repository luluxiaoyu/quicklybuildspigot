@echo off
IF NOT EXIST BuildSpigot (
    mkdir BuildSpigot
)
cd BuildSpigot
curl -z BuildTools.jar -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
set /p Input=��������Ҫ���ص�Spigot�汾: || set Input=latest
java -jar BuildTools.jar --rev %Input%
pause