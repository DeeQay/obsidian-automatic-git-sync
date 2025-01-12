' Script to automatically pull on startup and push on closing for Obsidian.md

' Custom variables
ObsidianPath = """C:\Program Files\Obsidian\Obsidian.exe"""
ObsidianExe = 'Obsidian.exe'
PullScriptPath = """pull Obsidian.py"""
PushScriptPath = """push Obsidian.py"""
WaitTime = 5000 ' 5 seconds wait time to check if Obsidian is running

' Start Obsidian
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run ObsidianPath, 1

' Start Pull script
WshShell.Run "cmd /c start /min python " & PullScriptPath, 0

' Wait until Obsidian is closed
Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = ObsidianExe")

Do While colProcessList.Count > 0
    WScript.Sleep WaitTime
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = ObsidianExe")
Loop

' Execute Push script when Obsidian is closed
WshShell.Run "cmd /c start /min python " & PushScriptPath, 0

WScript.Quit
