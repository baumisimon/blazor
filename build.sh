#!/bin/sh
curl -sSLO https://download.visualstudio.microsoft.com/download/pr/17b6759f-1af0-41bc-ab12-209ba0377779/e8d02195dbf1434b940e0f05ae086453/dotnet-sdk-6.0.100-linux-x64.tar.gz

DOTNET_FILE=dotnet-sdk-6.0.100-linux-x64.tar.gz
export DOTNET_ROOT=$(pwd)/dotnetLatest
mkdir -p "$DOTNET_ROOT" && tar zxf "$DOTNET_FILE" -C "$DOTNET_ROOT"
export PATH=$PATH:$DOTNET_ROOT

./dotnetLatest/dotnet --version
./dotnetLatest/dotnet publish -c Release -o output