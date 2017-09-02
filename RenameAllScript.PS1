Set-ExecutionPolicy RemoteSigned
Get-ChildItem *.jpg | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy.HH.mm.ss") + ".jpg"}
Get-ChildItem DSC*.jpg | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy.HH.mm_ss") + ".jpg"}
Get-ChildItem DSC*.jpg | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy.HH_mm_ss") + ".jpg"}
Get-ChildItem DSC*.jpg | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy_HH_mm_ss") + ".jpg"}
Get-ChildItem *.mov | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy.HH.mm.ss") + ".mov"}
Get-ChildItem *.mp4 | Rename-Item -newname {$_.LastWriteTime.toString("dd.MM.yyyy.HH.mm.ss") + ".mp4"}