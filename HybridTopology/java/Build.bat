@echo off
call mvn clean
call mvn package
::call mvn dependency:copy-dependencies -DexcludeGroupIds=storm