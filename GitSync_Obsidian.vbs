' Script to automatically pull on startup and push on closing for Obsidian.md

' Custom variables
repoPath = """PathTo\Obsidian_notes_repo"""
ObsidianPath = """C:\Program Files\Obsidian\Obsidian.exe"""
processName = "Obsidian.exe"
commitMsg = "automatic commit"
WaitTime = 10000 ' 10 seconds wait time to check if Obsidian is running

' Start Obsidian
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run ObsidianPath, 1

' Pull repo
WshShell.Run "cmd /c cd " & repoPath & " && git pull", 0, True

' Wait until Obsidian is closed
Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = '" & processName & "'")

Do While colProcessList.Count > 0
    WScript.Sleep WaitTime
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = '" & processName & "'")
Loop

' Push repo when Obsidian is closed
WshShell.Run "cmd /c cd " & repoPath & " && git add .", 0, True
WshShell.Run "cmd /c cd " & repoPath & " && git commit -m """ & commitMsg & """", 0, True
WshShell.Run "cmd /c cd " & repoPath & " && git push", 0, True

WScript.Quit
