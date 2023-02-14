bits 16
org 0x7c00


mov [DISK], dl

mov bp, 0x7c00
mov sp, bp

call DiskRead

jmp KERNEL_ADDRESS

DiskRead:
	mov ah,0x02 ; <== read disk
	mov bx, KERNEL_ADDRESS ; The address that we need it in the disk
	mov al, 2 ; Read for about 2000 bytes or / 2 sectors
	mov dl, [DISK] ; Disk number


	mov ch, 0x00 ; Set hard drive cylinder -> 0
	mov dh, 0x00 ; Set hard drive header -> 0
	mov cl, 0x02 ; Set start sector for reading 
	
	int 0x13
	jc DiskRead ; read again on error
	ret

;DiskError:
;	mov bx,ERROR_MESSAGE
;	call puts
;	jmp $





KERNEL_ADDRESS equ 0x7e00
DISK: db 0
ERROR_MESSAGE: db "Failed Reading The Disk!",0xD,0xA,0x0

times 510-($-$$) db 0
dw 0xAA55
