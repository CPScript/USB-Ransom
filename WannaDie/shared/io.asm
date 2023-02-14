;; input output functions
; *
; * OVER-WRITE-WINDOWS-MBR
; * @copyright      Copyright (c) DEvil. (https://www.instagram.com/justalghamdi AKA https://www.github.com/justalghamdi)
; * @author         justalghamdi
; *
puts:      
	cmp [si], byte 0
	je end_put
		
	mov al, [si]
	call putc
	inc si
	jmp puts

putc:
	mov ah, 0x0E ; TeleTYpe output
	mov bh, 0x0
	mov bl, 0x07
	int 0x10
	ret

end_put:
	ret


get_user_input:

	Loop_Get_Input:
		mov ah, 0x00
		int 0x16
		
		cmp al,0xD ; User Press Enter
		je Exit_Input
		cmp al,0x08; User Press BackSpace
		je Remove_Char
		mov [si], al
		call putc ; Print char
		inc si
		jmp Loop_Get_Input ; Again

	Remove_Char:
		mov al, 0x08 ; Go Back
		call putc
		mov al, 0x20 ; Print Space to remove 
		call putc
		mov al, 0x08 ; Go Back
		call putc
		dec si
		mov al, 0x0
		mov [si], al ; Put null In The Current Address to remove the Char 

		jmp Loop_Get_Input
	
	Exit_Input:
		int 0x10
		mov al, 0x0
		inc si
		mov [si], al ; null-terminate input string 
		ret ; callable