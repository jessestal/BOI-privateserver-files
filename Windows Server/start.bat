@echo off

Start /D Auagent run.bat
ping 1.1.1.1 -n 1 -w 1000
start /D DetectCheatServer ./DetectCheatServer/DetectCheatServerR
ping 1.1.1.1 -n 1 -w 1000
start /D GateServer ./GateServer/Gate
ping 1.1.1.1 -n 1 -w 1000
start /D ManagerServer ManagerServer/ManagerServerR
ping 1.1.1.1 -n 1 -w 1000
start /D LocalSaveServer LocalSaveServer/LocalSaveServerR
ping 1.1.1.1 -n 1 -w 1000
start /D ShareMemProc ./ShareMemProc/ShareMemProcR
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line.exe