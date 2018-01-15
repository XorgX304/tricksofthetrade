$abcd = InputBox("", "enter file")
$aa = FileOpen($abcd, 0)
$bb = StringSplit(FileRead($aa), @CRLF, 2)
$temp = "Local $chunk ="
For $cc in $bb
    If $cc = "" = False Then
        $temp = $temp & "' & @crlf & '" & $cc
    EndIf
Next
$dd = FileOpen("returncode.txt", 2)
FileWrite($dd, $temp)
msgbox(0, "", $temp)