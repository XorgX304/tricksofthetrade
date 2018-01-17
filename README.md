## Tricks of the Trade - <i>Crypto File Dropper to bypass file detection.</i>
---
##### <b>Developed by TRAGENALPHA</b> <img src="https://raw.githubusercontent.com/tragenalpha/tragenalpha.github.io/master/flare002.png"/>
###### //beartrap Softwares (c) 2018

##### Software is licensed under the <i><b>dbad Public License</b></i>. More information: <i><a href="https://www.dbad-license.org/"> https://www.dbad-license.org/</a></i>
---
#### <b>Disclaimer:</b> This software will not guarantee a FUD status. More information on the Help (--help) context.</span>
---
<pre>
Encrypts your binary file and embeds them to a Crypto file dropper to bypass detection.
 *Arguments that are given to the carrier are passed to the embedded executable
 *This will not guarantee a FUD / bypass. The original executable is fully untouched and is later
 dropped and executed. This will mostly be useful to bypass online / network scanners
 *Only executable binaries is allowed to be imported (*.exe)
 *Decrypted executable is dropped in the common temporary folder
 *software comes bundled with aghanim's scepter provided by a weird pink midget

Usage: tott.exe [mode] -e [encryption] -a [architecture] -ico [file] -i [file in] -o [file out] -kl [integer] -requireadmin
 * [mode] should always be the first argument given

[mode] :: Sets the mode of the application
--help :: shows the help dialogue
--load  :: Encrypt and load a file
--cleanup :: clear up space by deleting all the temporary files

[load arguments]
-i [file in] :: File path of the file to be loaded and encrypted
-e [encryption] :: Encryption to use :: 3des, aes128, aes192, aes256, des, rc2, rc4 :: Default encryption aes128
-o [file out] :: File output destination after encryption and file load process
-a [architecture] :: Compiled executable architecture :: x86, x64 :: Default architecture x86
-ico [file] :: Compiled executable icon :: Default icon [blank icon]
-kl [integer] :: Key length to be used for the encryption :: Default length 64
-requireadmin :: Flags the compiled application to require administrative priviledges
</pre>