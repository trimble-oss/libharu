@echo off

set /p Build=<build.txt
set /a Build+=1
echo %Build% >build.txt

MSBuild.exe .. /restore /p:RestorePackagesConfig=true /p:Configuration=140-Release /p:Platform=x64 /maxCpuCount

c:\work\nuget.exe pack -Version 2.2.1.%Build% LibHaru-Tekla.nuspec
