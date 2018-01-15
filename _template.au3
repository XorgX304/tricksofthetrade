#NoTrayIcon
#include <cryptlib.au3>
Global $filename = ""
Global $finalargs = ""
Global $key = ""
Global $algo = ""
If $Cmdline[0] > 0 Then
For $i = 1 to Ubound($Cmdline) - 1
If $finalargs = "" Then
$finalargs = $Cmdline[1]
Else
$finalargs &= " " & $Cmdline[$i]
EndIf
Next
EndIf
If FileExists(@TempDir & "\" & $filename & ".exe") = False Then
FileInstall("$tmp._tot", @TempDir & "\" & $filename & "._tot", 1)
_Crypt_DecryptFile(@TempDir & "\" & $filename & "._tot", @TempDir & "\" & $filename & ".exe", $key, $algo)
execfile()
Else
execfile()
EndIf
Func execfile()
ShellExecute(@TempDir & "\" & $filename & ".exe", $finalargs)
EndFunc