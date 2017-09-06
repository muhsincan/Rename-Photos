' This script is for renaming all files
' in a folder with a user defined extension 
' as their date last modified. I wrote this 
' for renaming pictures I shoot with my camera.
' The resolution is in minutes; if more than 
' one picture is taken in the same minute,
' this program will append a random second to
' the end of those files.

' Muhsincan Sesen
' September 2017
' http://www.muhsincansesen.com/


Option Explicit  
Main

Sub Main
    Dim fso, path, file, strVcfFile, Dir, nName, Ext

    Set fso = CreateObject("Scripting.FileSystemObject")
    
    'Get Parent Folder
    Dir = fso.GetParentFolderName(strVcfFile)
	Dir = InputBox("Source / starting directory for movies:" & vbCrLf & vbCrLf & "(Try shift-right-clicking on the desired folder, select ""Copy as path"", then paste the result here)", "Source Folder", Dir)
	Dir = Replace(Dir, """", "") 

    'Check Parent Folder Exists
    If Not fso.FolderExists(Dir) Then
		ShowHelp "Selected directory" & vbCrLf & Dir & vbCrLf & "does not exist"
        Exit Sub
	End If

    'Get File Extension
    Ext = InputBox("What types of files?",,"jpg")

    'Rename Files in the Folder with Ext to Their Date Last Modified
    For Each file in fso.GetFolder(Dir).Files
        If InStr(1, file.Name, Ext, 1) <> 0 Then
            
            'Format Date Last Modified
            nName = Replace(file.DateLastModified, " ", ".")
            nName = Replace(nName, "/", ".")
            nName = Replace(nName, ":", ".")
            
            On Error Resume Next
            
            'Rename the file
            file.Name = nName & "." & Ext
            
            'Catch Errors & Rename With Random Number
            Do While Err.Number <> 0
                nName = Left(nName,17) & Int(( 99 - 1 + 1 ) * Rnd + 1)
                Err.Clear
                file.Name = nName & "." & Ext
            Loop

        End If
    Next
End Sub
