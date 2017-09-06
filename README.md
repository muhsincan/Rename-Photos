# Rename-Photos
Rename a directory full of photos with the dates they were taken

How To Run:
Double Click - Follow Instructions

Tested with Windows 10.

This little script is what I use for organising the pictures I take with my Nikon camera. Nikon saves photos like:

DSC_0001.JPG
DSC_0002.JPG
DSC_0003.JPG
DSC_0004.JPG

The script will go into the specified folder and rename all files with the specified extension to their date last modified in the format dd.mm.yy.hh.mm.ss 

In the case of my camera, the date last modified resolution is not in seconds therefore if I've taken multiple photos in the same minute, this code will append a random number as the seconds to those files with the clash. If you've taken more than 100 pictures in the same minute, we are all doomed!

The Result:

02.09.2017.14.12.54.jpg
02.09.2017.17.48.58.jpg
02.09.2017.17.48.32.jpg
02.09.2017.17.48.44.jpg
