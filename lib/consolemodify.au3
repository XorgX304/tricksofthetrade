#include-once

;Func _ConsoleClear()
;    RunWait(@ComSpec & " /c cls")
;EndFunc
;
;Func _ConsoleTitle($bh6e5v_ctval)
;    RunWait(@ComSpec & " /c title " & $bh6e5v_ctval)
;EndFunc
;
;Func _ConsoleWindow($bh6e5v_cwwidth, $bh6e5v_cwheight)
;   If IsNumber($bh6e5v_cwwidth) And IsNumber($bh6e5v_cwheight) And ($bh6e5v_cwwidth > 0) And ($bh6e5v_cwheight > 0) Then
;	  RunWait(@ComSpec & " /c mode con: cols=" & $bh6e5v_cwwidth & " lines=" & $bh6e5v_cwheight)
;	  Return True
;   Else
;	  Return False
;   EndIf
;EndFunc

Func coutw($gsv54e6g)
  ConsoleWrite($gsv54e6g)
  Return
EndFunc

Func coutl($gsv54e6g)
  ConsoleWrite($gsv54e6g & @crlf)
  Return
EndFunc

Func error($errcause)
  coutl("")
  coutl("An error occured, please refer to --help for information." & @crlf & "error: '" & $errcause & "'")
  Exit
EndFunc