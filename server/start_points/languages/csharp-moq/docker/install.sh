#!/bin/sh
set -e

apk add --update openssl
wget http://dist.nuget.org/win-x86-commandline/latest/nuget.exe
mono --runtime=v4.5 nuget.exe restore -PackagesDirectory .
mkdir /moq
mv Moq.*                        /moq
mv Castle.Core.*                /moq
mv NUnit.*/lib                  /moq
mv NUnit.ConsoleRunner.*/tools  /moq
