#!/bin/sh
curl -sSLO https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --channel LTS --install-dir ./dotnetLatest
./dotnetLatest/dotnet --version
export PATH="$PWD/dotnetLatest:$PATH"
./dotnetLatest/dotnet nuget locals all -c
./dotnetLatest/dotnet publish -c Release -o output