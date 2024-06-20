#AutoIt3Wrapper_UseX64=Y

#Include <EditConstants.au3>
#include <Misc.au3>

$hDLL = DllOpen("user32.dll")

Const $StartKey = "90" ;NumLock https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.htm

GuiCreate("GUI", 400, 400)
$GUIEdit = GuiCtrlCreateEdit("", 5, 5, 390, 390, $ES_MULTILINE)
GuiSetState()

While 1

	If _IsPressed($StartKey, $hDLL) Then
		$Text = GUICtrlRead($GUIEdit)
		Send($Text)
		ExitLoop
	EndIf
WEnd

DllClose($hDLL)
