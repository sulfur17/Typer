#AutoIt3Wrapper_UseX64=Y

#include <Misc.au3>

$hDLL = DllOpen("user32.dll")

Const $StartKey = "90" ;NumLock https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.htm

$Text = InputBox("Текст", "Что ввести?")

While 1

	If _IsPressed($StartKey, $hDLL) Then
		Send($Text)
		ExitLoop
	EndIf
WEnd

DllClose($hDLL)
