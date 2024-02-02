@echo off

dotnet pack --configuration Release
dotnet new uninstall Retro.DotNet.Templates
dotnet new install nupkg\Retro.DotNet.Templates.0.0.2.nupkg

rd /s /q test
mkdir test
cd test

mkdir Alpha
cd Alpha
dotnet new console-retro
cd ..

mkdir Beta
cd Beta
dotnet new classlib-retro
cd ..

mkdir Gamma
cd Gamma
dotnet new worker-retro
cd ..

mkdir Delta
cd Delta
dotnet new webapi-retro
cd ..

mkdir Epsilon
cd Epsilon
dotnet new xunit-retro
cd ..

cd ..
