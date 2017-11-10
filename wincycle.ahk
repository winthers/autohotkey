

; Autohotkey bindings

; reload script
!f5:: 
	reload 
	return

; Pause script
!Pause::
	Pause
	return


; Suspend / disable hotkeys
Pause::
	Suspend
	return

; Open WinSpy

!f1:: 

	IfWinNotExist, ahk_class AU3Reveal 
		Run AU3_Spy.exe 
	WinActivate, ahk_class AU3Reveal
	
	return





; # = window-key
; ! = Alt
; ^ = Controle
; + = shift
; @reference https://autohotkey.com/docs/Hotkeys.htm



; should be mapped to numpad  ^numpad1
; https://autohotkey.com/docs/KeyList.htm


; code 
; Chrome		 | 	  | shift & mwheel 
; Explorer		 | 	  |  
; Calculator	 | 	  | 
; Snipping Tool  | 	  | 





^Numpad0:: 
	IfWinNotExist ahk_exe Code.exe
		Run, Code.exe

	WinActivate ahk_exe Code.exe
return


^NumpadDot:: 

	IfWinNotExist ahk_exe mintty.exe
		Run, mintty.exe
		GroupAdd, mycfg, ahk_exe mintty.exe

	IfWinNotExist ahk_exe cmd.exe
		Run, cmd.exe
		GroupAdd, mycfg, ahk_exe cmd.exe

	IfWinNotExist ahk_exe powershell.exe
		Run, powershell.exe
		GroupAdd, mycfg, ahk_exe powershell.exe

	if WinActive("ahk_exe mintty.exe")
		GroupActivate, mycfg, r

	if WinActive("ahk_exe cmd.exe")
		GroupActivate, mycfg, r

	if WinActive("ahk_exe powershell.exe")
		GroupActivate, mycfg, r
	

return

; --------------------------------------------------------------
; Chrome 
; --------------------------------------------------------------
; - Cycle open windows. 
; - shift + mwheel UP|Down Cycle tabs in current window
; --------------------------------------------------------------
^numpad1:: 

		IfWinNotExist, ahk_exe chrome.exe
			Run, chrome.exe
			GroupAdd, mychromes, ahk_exe chrome.exe

		if WinActive("ahk_exe chrome.exe")
			GroupActivate, mychromes, r

		else 
			WinActivate ahk_exe chrome.exe
	return

	+WheelUp::
		if WinActive("ahk_exe chrome.exe")
			Send ^{tab}
	return

	+WheelDown::
		if WinActive("ahk_exe chrome.exe")
			Send ^+{tab}
	return



; --------------------------------------------------------------
; Explorer 
; --------------------------------------------------------------
; - Cycle open windows
; --------------------------------------------------------------
^Numpad2:: 
	IfWinNotExist, ahk_class CabinetWClass
		Run, explorer.exe
		GroupAdd, myexplores, ahk_class CabinetWClass
	
	if WinActive("ahk_exe explorer.exe")
		GroupActivate, myexplores, r

	else 
		WinActivate ahk_class CabinetWClass
return


; --------------------------------------------------------------
; Calculator
; --------------------------------------------------------------
; Open/Reactivate Window
; --------------------------------------------------------------
^Numpad4:: 
	IfWinNotExist Calculator
		Run, calc.exe
	WinActivate Calculator
return


; --------------------------------------------------------------
; Snipping Tool
; --------------------------------------------------------------
; Open/Reactivate Window
; --------------------------------------------------------------
^Numpad5:: 
	IfWinNotExist, ahk_exe SnippingTool.exe
		Run, SnippingTool.exe
	WinActivate ahk_exe SnippingTool.exe
return




; ; Numpad0 / NumpadIns
; Numpad0::   MsgBox, "on | numpad0" return
; NumpadIns:: MsgBox, "off | numpad0" return

; ; Numpad1 / NumpadEnd
; Numpad1:: 			MsgBox "on | Numpad1" return
; NumpadEnd::			MsgBox "off | Numpad1 " return

; ; Numpad2 / NumpadDown
; Numpad2:: 			MsgBox "on | Numpad2" return
; NumpadDown::		MsgBox "off | Numpad2 " return

; ; Numpad3 / NumpadPgDn
; Numpad3:: 			MsgBox "on | Numpad3" return
; NumpadPgDn::		MsgBox "off | Numpad3 " return

; ; Numpad4 / NumpadLeft
; Numpad4:: 			MsgBox "on | Numpad4" return
; NumpadLeft::		MsgBox "off | Numpad4 " return

; ; Numpad5 / NumpadClear
; Numpad5:: 			MsgBox "on | Numpad5" return
; NumpadClear::		MsgBox "off | Numpad5 " return

; ; Numpad6 / NumpadRight
; Numpad6:: 			MsgBox "on | Numpad6" return
; NumpadRight::		MsgBox "off | Numpad6 " return

; ; Numpad7 / NumpadHome
; Numpad7:: 			MsgBox "on | Numpad7" return
; NumpadHome::		MsgBox "off | Numpad7 " return

; ; Numpad8 / NumpadUp
; Numpad8:: 			MsgBox "on | Numpad8" return
; NumpadUp::			MsgBox "off | Numpad8 " return

; ; Numpad9 / NumpadPgUp
; Numpad9:: 			MsgBox "on | Numpad9" return
; NumpadPgUp::		MsgBox "off | Numpad9 " return

; ; NumpadDot / NumpadDel
; NumpadDot:: 		MsgBox "on | NumpadDot" return
; NumpadDel::			MsgBox "off | NumpadDot " return

; ; NumpadDiv
; NumpadDiv:: 		MsgBox "on | NumpadDiv" return

; ; NumpadMult
; NumpadMult::		 MsgBox "on | NumpadMult" return

; ; NumpadAdd
; NumpadAdd:: 		MsgBox "on | NumpadAdd" return

; ; NumpadSub
; NumpadSub:: 		MsgBox "on | NumpadSub" return

; ; NumpadEnter
; NumpadEnter:: 		MsgBox "on | NumpadEnter" return


