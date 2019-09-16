# find-replace
A bash shell script that finds and replaces text in filenames

**Usage**
- Copy the *findreplace.sh* script **into the directory** containing files you'd like to rename.<br/>
- In Terminal, make *folderify.sh* executeable by running *chmod +x* on the script itself:<br/>
*chmod +x folderify.sh* 

- To run, *cd* to your target directory, and run the script by entering:<br/>
*./findreplace.sh -f [search string] -r [replacement string]*<br/><br/>

**Option Flags**<br/>

Specify the text string you'd like to find and replace:<br/>
*-f [find text string]*<br/>

Specify the text string you want to replace the original text with:<br/>
*-r [replacement text string]*<br/>

Example: change "project" to "episode" in the following .mov file:

Original:<br/>
project01_versionV1_01.mov

*./findreplace.sh -f project -r episode*  

Modified:<br/>
episode01_versionV1_01.mov<br/><br/>

**Notes**

Find-Replace currently doesn't support modifying filenames that include spaces, but that will be fixed in the near future.




