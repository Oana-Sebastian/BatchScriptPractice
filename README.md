# BatchScriptPractice
Motivated by a desire of automating the tedious process of adding songs to the game My Winter Car, I wanted to create a script that does it all for you, needing something as minimal as a txt file to fetch the youtube links.

## Prerequisites

The script requires yt-dlp for downloading, ffmpeg for converting into music and a js runtime like node to avoid bot alerts.

## What does it do?

The script takes as arguments the game name, the audio destination folder and the txt file where the music links are located. After validating the arguments, the script moves into the downloading phase, where it takes all links and runs yt-dlp and puts them into the destination folder from the previous phase. The final phase is renaming all the files to Track{number}.ogg. The script also works for already populated folders, starting the count from the next available track number.

## What have I learned?

In the development of this script and the commands documentations I have learned the fundamentals of batch scripting which include:
  - basic syntax
  - command line arguments
  - goto command
  - script calling
  - variable delayed expansion
  - string manipulation
  - return codes

## Conclusion

While this is a fun little script I did mainly for myself, it has awakened my curiosity for the scripting side of programming. Seeing a multiple step process being automated felt so good. I may further improve this script by making the input more controlled, using choice instead of typing it myself. For the future I want to see what more can I do with scripting and expand to AI Workflows.
