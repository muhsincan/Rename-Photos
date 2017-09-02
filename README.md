# Rename-Photos
Rename a directory full of photos with the dates they were taken

How To Run:
Put photos and the .ps1 file in the same folder.
Right click .PS1 and run with Powershell

Tested with Windows 10.

This little script is what I use for organising the pictures I take with my Nikon camera. Nikon saves photos like:

DSC_0001.JPG
DSC_0002.JPG
DSC_0003.JPG
DSC_0004.JPG

This script first goes through all JPGs and renames them as their date modified with resolution down to minutes.
If two photos have been taken in the same minute, you'll see errors coming up. 
The next few lines of code looks for files starting with DSC, you can modify this if your camera doesn't save
this way. And slightly changes the renaming scheme. We do that a few times to make sure no files with DSC remain.
Finally we also do this for .MOV and .MP4 files.

The Result:

02.09.2017.14.12.54.jpg
02.09.2017.17.48.58.jpg
02.09.2017.17.48_32.jpg
02.09.2017.17.48_44.jpg
