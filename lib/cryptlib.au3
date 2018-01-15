Global Const $FC_NOOVERWRITE = 0 
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8 
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8 
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2 
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8 
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $FILE_SHARE_READWRITE = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE)
Global Const $FILE_SHARE_ANY = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE, $FILE_SHARE_DELETE)
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $GENERIC_READWRITE = BitOR($GENERIC_READ, $GENERIC_WRITE)
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $PROV_RSA_FULL = 0x1
Global Const $PROV_RSA_AES = 24
Global Const $CRYPT_VERIFYCONTEXT = 0xF0000000
Global Const $HP_HASHSIZE = 0x0004
Global Const $HP_HASHVAL = 0x0002
Global Const $CRYPT_EXPORTABLE = 0x00000001
Global Const $CRYPT_USERDATA = 1
Global Const $CALG_MD2 = 0x00008001
Global Const $CALG_MD4 = 0x00008002
Global Const $CALG_MD5 = 0x00008003
Global Const $CALG_SHA1 = 0x00008004
Global Const $CALG_3DES = 0x00006603
Global Const $CALG_AES_128 = 0x0000660e
Global Const $CALG_AES_192 = 0x0000660f
Global Const $CALG_AES_256 = 0x00006610
Global Const $CALG_DES = 0x00006601
Global Const $CALG_RC2 = 0x00006602
Global Const $CALG_RC4 = 0x00006801
Global Const $CALG_USERKEY = 0
Global Const $KP_ALGID = 0x00000007
Global $__g_aCryptInternalData[3]
Func _Crypt_Startup()
	If __Crypt_RefCount() = 0 Then
		Local $hAdvapi32 = DllOpen("Advapi32.dll")
		If $hAdvapi32 = -1 Then Return SetError(1, 0, False)
		__Crypt_DllHandleSet($hAdvapi32)
		Local $iProviderID = $PROV_RSA_AES
		Local $aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptAcquireContext", "handle*", 0, "ptr", 0, "ptr", 0, "dword", $iProviderID, "dword", $CRYPT_VERIFYCONTEXT)
		If @error Or Not $aRet[0] Then
			Local $iError = @error + 10, $iExtended = @extended
			DllClose(__Crypt_DllHandle())
			Return SetError($iError, $iExtended, False)
		Else
			__Crypt_ContextSet($aRet[1])
		EndIf
	EndIf
	__Crypt_RefCountInc()
	Return True
EndFunc
Func _Crypt_Shutdown()
	__Crypt_RefCountDec()
	If __Crypt_RefCount() = 0 Then
		DllCall(__Crypt_DllHandle(), "bool", "CryptReleaseContext", "handle", __Crypt_Context(), "dword", 0)
		DllClose(__Crypt_DllHandle())
	EndIf
EndFunc
Func _Crypt_DeriveKey($vPassword, $iAlgID, $iHashAlgID = $CALG_MD5)
	Local $aRet = 0, _
			$hBuff = 0, $hCryptHash = 0, _
			$iError = 0, $iExtended = 0, _
			$vReturn = 0

	_Crypt_Startup()
	Do
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptCreateHash", "handle", __Crypt_Context(), "uint", $iHashAlgID, "ptr", 0, "dword", 0, "handle*", 0)
		If @error Or Not $aRet[0] Then
			$iError = @error + 10
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$hCryptHash = $aRet[5]
		$hBuff = DllStructCreate("byte[" & BinaryLen($vPassword) & "]")
		DllStructSetData($hBuff, 1, $vPassword)
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptHashData", "handle", $hCryptHash, "struct*", $hBuff, "dword", DllStructGetSize($hBuff), "dword", $CRYPT_USERDATA)
		If @error Or Not $aRet[0] Then
			$iError = @error + 20
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptDeriveKey", "handle", __Crypt_Context(), "uint", $iAlgID, "handle", $hCryptHash, "dword", $CRYPT_EXPORTABLE, "handle*", 0)
		If @error Or Not $aRet[0] Then
			$iError = @error + 30
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$vReturn = $aRet[5]
	Until True
	If $hCryptHash <> 0 Then DllCall(__Crypt_DllHandle(), "bool", "CryptDestroyHash", "handle", $hCryptHash)

	Return SetError($iError, $iExtended, $vReturn)
EndFunc
Func _Crypt_DestroyKey($hCryptKey)
	Local $aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptDestroyKey", "handle", $hCryptKey)
	Local $iError = @error, $iExtended = @extended
	_Crypt_Shutdown()
	If $iError Or Not $aRet[0] Then
		Return SetError($iError + 10, $iExtended, False)
	Else
		Return True
	EndIf
EndFunc
Func _Crypt_EncryptData($vData, $vCryptKey, $iAlgID, $bFinal = True)
	Switch $iAlgID
		Case $CALG_USERKEY
			Local $iCalgUsed = __Crypt_GetCalgFromCryptKey($vCryptKey)
			If @error Then Return SetError(@error, -1, @extended)
			If $iCalgUsed = $CALG_RC4 Then ContinueCase
		Case $CALG_RC4
			If BinaryLen($vData) = 0 Then Return SetError(0, 0, Binary(''))
	EndSwitch
	Local $iReqBuffSize = 0, _
			$aRet = 0, _
			$hBuff = 0, _
			$iError = 0, $iExtended = 0, _
			$vReturn = 0
	_Crypt_Startup()
	Do
		If $iAlgID <> $CALG_USERKEY Then
			$vCryptKey = _Crypt_DeriveKey($vCryptKey, $iAlgID)
			If @error Then
				$iError = @error + 100
				$iExtended = @extended
				$vReturn = -1
				ExitLoop
			EndIf
		EndIf
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptEncrypt", "handle", $vCryptKey, "handle", 0, "bool", $bFinal, "dword", 0, "ptr", 0, _
				"dword*", BinaryLen($vData), "dword", 0)
		If @error Or Not $aRet[0] Then
			$iError = @error + 20
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$iReqBuffSize = $aRet[6]
		$hBuff = DllStructCreate("byte[" & $iReqBuffSize + 1 & "]")
		DllStructSetData($hBuff, 1, $vData)
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptEncrypt", "handle", $vCryptKey, "handle", 0, "bool", $bFinal, "dword", 0, "struct*", $hBuff, _
				"dword*", BinaryLen($vData), "dword", DllStructGetSize($hBuff) - 1)
		If @error Or Not $aRet[0] Then
			$iError = @error + 30
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$vReturn = BinaryMid(DllStructGetData($hBuff, 1), 1, $iReqBuffSize)
	Until True
	If $iAlgID <> $CALG_USERKEY Then _Crypt_DestroyKey($vCryptKey)
	_Crypt_Shutdown()
	Return SetError($iError, $iExtended, $vReturn)
EndFunc
Func _Crypt_DecryptData($vData, $vCryptKey, $iAlgID, $bFinal = True)
	Switch $iAlgID
		Case $CALG_USERKEY
			Local $iCalgUsed = __Crypt_GetCalgFromCryptKey($vCryptKey)
			If @error Then Return SetError(@error, -1, @extended)
			If $iCalgUsed = $CALG_RC4 Then ContinueCase
		Case $CALG_RC4
			If BinaryLen($vData) = 0 Then Return SetError(0, 0, Binary(''))
	EndSwitch
	Local $aRet = 0, _
			$hBuff = 0, $hTempStruct = 0, _
			$iError = 0, $iExtended = 0, $iPlainTextSize = 0, _
			$vReturn = 0

	_Crypt_Startup()
	Do
		If $iAlgID <> $CALG_USERKEY Then
			$vCryptKey = _Crypt_DeriveKey($vCryptKey, $iAlgID)
			If @error Then
				$iError = @error + 100
				$iExtended = @extended
				$vReturn = -1
				ExitLoop
			EndIf
		EndIf
		$hBuff = DllStructCreate("byte[" & BinaryLen($vData) + 1000 & "]")
		If BinaryLen($vData) > 0 Then DllStructSetData($hBuff, 1, $vData)
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptDecrypt", "handle", $vCryptKey, "handle", 0, "bool", $bFinal, "dword", 0, "struct*", $hBuff, "dword*", BinaryLen($vData))
		If @error Or Not $aRet[0] Then
			$iError = @error + 20
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		$iPlainTextSize = $aRet[6]
		$hTempStruct = DllStructCreate("byte[" & $iPlainTextSize + 1 & "]", DllStructGetPtr($hBuff))
		$vReturn = BinaryMid(DllStructGetData($hTempStruct, 1), 1, $iPlainTextSize)
	Until True
	If $iAlgID <> $CALG_USERKEY Then _Crypt_DestroyKey($vCryptKey)
	_Crypt_Shutdown()
	Return SetError($iError, $iExtended, $vReturn)
EndFunc
Func _Crypt_HashData($vData, $iAlgID, $bFinal = True, $hCryptHash = 0)
	Local $aRet = 0, _
			$hBuff = 0, _
			$iError = 0, $iExtended = 0, $iHashSize = 0, _
			$vReturn = 0

	_Crypt_Startup()
	Do
		If $hCryptHash = 0 Then
			$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptCreateHash", "handle", __Crypt_Context(), "uint", $iAlgID, "ptr", 0, "dword", 0, "handle*", 0)
			If @error Or Not $aRet[0] Then
				$iError = @error + 10
				$iExtended = @extended
				$vReturn = -1
				ExitLoop
			EndIf
			$hCryptHash = $aRet[5]
		EndIf
		$hBuff = DllStructCreate("byte[" & BinaryLen($vData) & "]")
		DllStructSetData($hBuff, 1, $vData)
		$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptHashData", "handle", $hCryptHash, "struct*", $hBuff, "dword", DllStructGetSize($hBuff), "dword", $CRYPT_USERDATA)
		If @error Or Not $aRet[0] Then
			$iError = @error + 20
			$iExtended = @extended
			$vReturn = -1
			ExitLoop
		EndIf
		If $bFinal Then
			$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptGetHashParam", "handle", $hCryptHash, "dword", $HP_HASHSIZE, "dword*", 0, "dword*", 4, "dword", 0)
			If @error Or Not $aRet[0] Then
				$iError = @error + 30
				$iExtended = @extended
				$vReturn = -1
				ExitLoop
			EndIf
			$iHashSize = $aRet[3]
			$hBuff = DllStructCreate("byte[" & $iHashSize & "]")
			$aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptGetHashParam", "handle", $hCryptHash, "dword", $HP_HASHVAL, "struct*", $hBuff, "dword*", DllStructGetSize($hBuff), "dword", 0)
			If @error Or Not $aRet[0] Then
				$iError = @error + 40
				$iExtended = @extended
				$vReturn = -1
				ExitLoop
			EndIf
			$vReturn = DllStructGetData($hBuff, 1)
		Else
			$vReturn = $hCryptHash
		EndIf
	Until True
	If $hCryptHash <> 0 And $bFinal Then DllCall(__Crypt_DllHandle(), "bool", "CryptDestroyHash", "handle", $hCryptHash)
	_Crypt_Shutdown()
	Return SetError($iError, $iExtended, $vReturn)
EndFunc
Func _Crypt_HashFile($sFilePath, $iAlgID)
	Local $bTempData = 0, _
			$hFile = 0, $hHashObject = 0, _
			$iError = 0, $iExtended = 0, _
			$vReturn = 0
	_Crypt_Startup()
	Do
		$hFile = FileOpen($sFilePath, $FO_BINARY)
		If $hFile = -1 Then
			$iError = 1
			$vReturn = -1
			ExitLoop
		EndIf
		Do
			$bTempData = FileRead($hFile, 512 * 1024)
			If @error Then
				$vReturn = _Crypt_HashData($bTempData, $iAlgID, True, $hHashObject)
				If @error Then
					$iError = @error
					$iExtended = @extended
					$vReturn = -1
					ExitLoop 2
				EndIf
				ExitLoop 2
			Else
				$hHashObject = _Crypt_HashData($bTempData, $iAlgID, False, $hHashObject)
				If @error Then
					$iError = @error + 100
					$iExtended = @extended
					$vReturn = -1
					ExitLoop 2
				EndIf
			EndIf
		Until False
	Until True
	_Crypt_Shutdown()
	If $hFile <> -1 Then FileClose($hFile)
	Return SetError($iError, $iExtended, $vReturn)
EndFunc
Func _Crypt_EncryptFile($sSourceFile, $sDestinationFile, $vCryptKey, $iAlgID)
	Local $bTempData = 0, _
			$hInFile = 0, $hOutFile = 0, _
			$iError = 0, $iExtended = 0, $iFileSize = FileGetSize($sSourceFile), $iRead = 0, _
			$bReturn = True
	_Crypt_Startup()
	Do
		If $iAlgID <> $CALG_USERKEY Then
			$vCryptKey = _Crypt_DeriveKey($vCryptKey, $iAlgID)
			If @error Then
				$iError = @error
				$iExtended = @extended
				$bReturn = False
				ExitLoop
			EndIf
		EndIf
		$hInFile = FileOpen($sSourceFile, $FO_BINARY)
		If @error Then
			$iError = 2
			$bReturn = False
			ExitLoop
		EndIf
		$hOutFile = FileOpen($sDestinationFile, $FO_OVERWRITE + $FO_CREATEPATH + $FO_BINARY)
		If @error Then
			$iError = 3
			$bReturn = False
			ExitLoop
		EndIf
		Do
			$bTempData = FileRead($hInFile, 1024 * 1024)
			$iRead += BinaryLen($bTempData)
			If $iRead = $iFileSize Then
				$bTempData = _Crypt_EncryptData($bTempData, $vCryptKey, $CALG_USERKEY, True)
				If @error Then
					$iError = @error + 400
					$iExtended = @extended
					$bReturn = False
				EndIf
				FileWrite($hOutFile, $bTempData)
				ExitLoop 2
			Else
				$bTempData = _Crypt_EncryptData($bTempData, $vCryptKey, $CALG_USERKEY, False)
				If @error Then
					$iError = @error + 500
					$iExtended = @extended
					$bReturn = False
					ExitLoop 2
				EndIf
				FileWrite($hOutFile, $bTempData)
			EndIf
		Until False
	Until True
	If $iAlgID <> $CALG_USERKEY Then _Crypt_DestroyKey($vCryptKey)
	_Crypt_Shutdown()
	If $hInFile <> -1 Then FileClose($hInFile)
	If $hOutFile <> -1 Then FileClose($hOutFile)
	Return SetError($iError, $iExtended, $bReturn)
EndFunc
Func _Crypt_DecryptFile($sSourceFile, $sDestinationFile, $vCryptKey, $iAlgID)
	Local $bTempData = 0, _
			$hInFile = 0, $hOutFile = 0, _
			$iError = 0, $iExtended = 0, $iFileSize = FileGetSize($sSourceFile), $iRead = 0, _
			$bReturn = True
	_Crypt_Startup()
	Do
		If $iAlgID <> $CALG_USERKEY Then
			$vCryptKey = _Crypt_DeriveKey($vCryptKey, $iAlgID)
			If @error Then
				$iError = @error
				$iExtended = @extended
				$bReturn = False
				ExitLoop
			EndIf
		EndIf
		$hInFile = FileOpen($sSourceFile, $FO_BINARY)
		If @error Then
			$iError = 2
			$bReturn = False
			ExitLoop
		EndIf
		$hOutFile = FileOpen($sDestinationFile, $FO_OVERWRITE + $FO_CREATEPATH + $FO_BINARY)
		If @error Then
			$iError = 3
			$bReturn = False
			ExitLoop
		EndIf
		Do
			$bTempData = FileRead($hInFile, 1024 * 1024)
			$iRead += BinaryLen($bTempData)
			If $iRead = $iFileSize Then
				$bTempData = _Crypt_DecryptData($bTempData, $vCryptKey, $CALG_USERKEY, True)
				If @error Then
					$iError = @error + 400
					$iExtended = @extended
					$bReturn = False
				EndIf
				FileWrite($hOutFile, $bTempData)
				ExitLoop 2
			Else
				$bTempData = _Crypt_DecryptData($bTempData, $vCryptKey, $CALG_USERKEY, False)
				If @error Then
					$iError = @error + 500
					$iExtended = @extended
					$bReturn = False
					ExitLoop 2
				EndIf
				FileWrite($hOutFile, $bTempData)
			EndIf
		Until False
	Until True
	If $iAlgID <> $CALG_USERKEY Then _Crypt_DestroyKey($vCryptKey)
	_Crypt_Shutdown()
	If $hInFile <> -1 Then FileClose($hInFile)
	If $hOutFile <> -1 Then FileClose($hOutFile)

	Return SetError($iError, $iExtended, $bReturn)
EndFunc
Func _Crypt_GenRandom($pBuffer, $iSize)
	_Crypt_Startup()
	Local $aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptGenRandom", "handle", __Crypt_Context(), "dword", $iSize, "struct*", $pBuffer)
	Local $iError = @error, $iExtended = @extended
	_Crypt_Shutdown()
	If $iError Or (Not $aRet[0]) Then
		Return SetError($iError + 10, $iExtended, False)
	Else
		Return True
	EndIf
EndFunc
Func __Crypt_RefCount()
	Return $__g_aCryptInternalData[0]
EndFunc
Func __Crypt_RefCountInc()
	$__g_aCryptInternalData[0] += 1
EndFunc
Func __Crypt_RefCountDec()
	If $__g_aCryptInternalData[0] > 0 Then $__g_aCryptInternalData[0] -= 1
EndFunc
Func __Crypt_DllHandle()
	Return $__g_aCryptInternalData[1]
EndFunc
Func __Crypt_DllHandleSet($hAdvapi32)
	$__g_aCryptInternalData[1] = $hAdvapi32
EndFunc
Func __Crypt_Context()
	Return $__g_aCryptInternalData[2]
EndFunc
Func __Crypt_ContextSet($hCryptContext)
	$__g_aCryptInternalData[2] = $hCryptContext
EndFunc
Func __Crypt_GetCalgFromCryptKey($vCryptKey)
	Local $tAlgId = DllStructCreate("uint;dword")
	DllStructSetData($tAlgId, 2, 4)
	Local $aRet = DllCall(__Crypt_DllHandle(), "bool", "CryptGetKeyParam", "handle", $vCryptKey, "dword", $KP_ALGID, "ptr", DllStructGetPtr($tAlgId, 1), "dword*", DllStructGetPtr($tAlgId, 2), "dword", 0)
	If @error Or Not $aRet[0] Then
		Return SetError(@error, @extended, $CRYPT_USERDATA)
	Else
		Return DllStructGetData($tAlgId, 1)
	EndIf
EndFunc