@echo off
IF NOT EXIST BuildSpigot (
    mkdir BuildSpigot
)
cd BuildSpigot
curl -z BuildTools.jar -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
set /p Input=输入你想要下载的Spigot版本: || set Input=latest
java -jar BuildTools.jar --rev %Input%
pause