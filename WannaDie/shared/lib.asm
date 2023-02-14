;; Library Fucntions

; *
; * OVER-WRITE-WINDOWS-MBR
; * @copyright      Copyright (c) DEvil. (https://www.instagram.com/justalghamdi AKA https://www.github.com/justalghamdi)
; * @author         justalghamdi
; *

strcmp:
    Loop_CMP:
        mov al, [si]
        cmp al, [bx] 
        
        
        jne Exit_Error
        
        cmp [bx], byte 0
        je Exit_Successful
        
        inc bx
        inc si
        jmp Loop_CMP

    Exit_Successful:
        cmp [si], byte 0
        jne Exit_Error
        mov ax, 0
        ret

    Exit_Error:
        mov ax, 1
        ret

