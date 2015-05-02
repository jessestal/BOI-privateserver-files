@echo off
start compactau.exe
"%JAVA_HOME%\bin\java" -Xms512m -Xmx768m -cp jio.jar;log4j-1.2.9.jar;auagent.jar Auagent auagent.conf
Pause
