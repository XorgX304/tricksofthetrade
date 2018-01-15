#include-once

Func rndset()
    $set = StringSplit("A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 0", " ", 2)
    Return $set[Random(0, UBound($set) - 1, 1)]
EndFunc

Func createkey($length)
    Local $final
    For $i = 1 to $length
        If $final = "" Then
            $final = rndset()
        Else
            $final = $final & rndset()
        EndIf
    Next
    Return $final
EndFunc