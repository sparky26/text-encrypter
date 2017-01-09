message1 db "                                     $"       
message2 db " ____________   ____   _____/  |________ __ __  _____   $"  
message3 db "/  ___/\____ \_/ __ \_/ ___\   __\_  __ \  |  \/     \  $" 
message4 db "\___ \ |  |_> >  ___/\  \___|  |  |  | \/  |  /  Y Y  \ $"
message5 db "/____ >|   __/ \___  >\___  >__|  |__|  |____/|__|_|  / $"
message6 db "    \/ |__|        \/     \/                        \/  $"
message7 db "A COLOR BASED ENCRYPTION PROJECT. Press any key$"
xor dx, dx
mov dx, offset message1
mov ah,09h
mov ah,2
            mov dx, 7d
            int 21h 
mov dh, 2
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
mov ah,2
            mov dx, 7d
            int 21h 
mov dx, offset message2
mov ah,09h
int 21h
mov dh, 3
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
mov ah,2
            mov dx, 7d
            int 21h 

mov dx, offset message3
mov ah,09h
int 21h
mov dh, 4
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
mov ah,2
            mov dx, 7d
            int 21h 


mov dx, offset message4
mov ah,09h
int 21h
mov dh, 5
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
mov ah,2
            mov dx, 7d
            int 21h 

mov dx, offset message5
mov ah,09h
int 21h
mov dh, 6
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
mov ah,2
            mov dx, 7d
            int 21h 

mov dx, offset message6
mov ah,09h
int 21h
mov dh, 9
	mov dl, 13
	mov bh, 0
	mov ah, 2
	int 10h
	mov ah,2
            mov dx, 7d
            int 21h
mov dx, offset message7
mov ah,09h
int 21h
mov ah,2
            mov dx, 7d
            int 21h

mov ah, 01h
xor dx, dx
int 21h


; set video mode    
mov ax, 3     ; text mode 80x25, 16 colors, 8 pages (ah=0, al=3)
int 10h       ; do it!

; cancel blinking and enable all 16 colors:
mov ax, 1003h
mov bx, 0
int 10h


; set segment register:
mov     ax, 0b800h
mov     ds, ax

; print "hello world"
; first byte is ascii code, second byte is color code.

mov [02h], 'e'

mov [04h], 'n'

mov [06h], 'c'

mov [08h], 'r'

mov [0ah], 'y'

mov [0ch], 'p'

mov [0eh], 't'
 
mov [10h], 'i'

mov [12h], 'o'

mov [14h], 'n'

mov [16h], '!'

mov [18h], '!'




; color all characters:
mov cx, 12  ; number of characters.
mov di, 03h; start from byte after 'h'
mov ah,2
            mov dx, 7d
            int 21h 

c:  mov [di], 11001100b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp b

; wait for any key press:

b:  mov [di], 11111111b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp a
    

a:  mov [di], 10001000b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp e

e:  mov [di], 10111011b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp g    
    g:  mov [di], 10101010b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp h

; wait for any key press:

h:  mov [di], 01010101b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp i
    

i:  mov [di], 00100010b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp j

j:  mov [di], 01000100b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp k 

k: mov [di], 11101110b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp l
    

l:  mov [di], 00010001b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp m

m:  mov [di], 10011001b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp n  	

n:mov [di], 11001100b   ; light red(1100) on yellow(1110)
    add di, 2 ; skip over next ascii code in vga memory.
    mov ah,2
            mov dx, 7d
            int 21h 
    jmp o
    
 o:ret