# LS-for-Command-Prompt V1.0.0
This program, once set up, will allow the user to use the `ls` (List files/folders) command in Windows Command Prompt

# Installation:
1. Download the latest version from https://github.com/Burn-E99/LS-for-Command-Prompt/tree/master/dist or download the source latest from https://github.com/Burn-E99/LS-for-Command-Prompt/tree/master/src.
2. If this is not the first time installing this custom command, skip to step 3.  (You will need Administrative Privalages to complete this step.)
  1. At the base directory (usually C:\), create a empty folder with any alpha-numeric (a-z,A-Z,0-9. No special characters or spaces) name you choose.  A good name could be `customcmdline`, as the `ls` command is a custom addon to the command line.
  2. In the Windows 7 Start Menu or the Windows 8/8.1/10 quick search (Windows key + Q), enter in "environment variables", and click on the result labeled "Edit the system environment variables".
  3. If prompted, enter in your administrator password and click yes.
  4. Click on the button labeled "Environment Variables" located near the bottom of the window.
  5. Locate the System Variable labeled "Path" and click on the edit button.
  6. Press the "End" key on your keyboard to jump to the end of the string of locations and add a `;` if there is not already one there.  Make sure you do not delete anything from this variable.  If you do, some programs and features in Windows and for installed programs may no longer function properly.
  7. Enter in the name of the folder that you created in step 2.1 in this format: `C:\yourFolderNameHere\`
  8. Click the "OK" button 3 times.
3. Take the files you downloaded and paste the files named `cecho.exe` and `ls.exe` (or `ls.bat` if you downloaded the src version) into the folder you created in step 2.1.
4. You should now be able to run `ls` in command prompt (and as a bonus feature, `cecho` is now a usable command.  Visit http://www.codeproject.com/Articles/17033/Add-Colors-to-Batch-Files for information on how to use)

# Bugs
This command line addon has been tested on Windows 8.1 x64, but should be compatible with all systems.  If you find any issues with the addon, please report an issue through Github, and I will do my best to fix the said issue.

# Credits:
I would like to give credit to Thomas Polaert for creating the custom batch command `cecho`, allowing the coloration of the text being printed to the console to be done safely.  The `cecho` project can be found at: http://www.codeproject.com/Articles/17033/Add-Colors-to-Batch-Files.  The rest of this project was written by Ean M (AKA Burn-E99).
