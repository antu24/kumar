; Function to copy text to clipboard
Func CopyTextToClipboard()
    ; Text to copy
    Local $text = "This is the text to be copied"

    ; Copy text to clipboard
    ClipPut($text)

    ; Notify user
EndFunc

; Function to send copied text
Func SendCopiedText()
    ; Get text from clipboard
    Local $copiedText = ClipGet()

    ; Send the copied text
    Send($copiedText)
	Sleep(3000)
	Call("CopyTextToClipboard")
EndFunc

Func start()
   Send("^!c")
   EndFunc

; Set hotkey to copy text (Ctrl + Alt + C)
; Set hotkey to send copied text (Ctrl + Alt + V)
HotKeySet("^!v", "SendCopiedText")

; Keep script running
While 1
    Sleep(100)
WEnd
