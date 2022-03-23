

mov al, 'N'
call print

jmp Exit


 

print:
pusha
mov bx,myString
reprint:
mov al, [bx]
call printChar
add bx, 1h
cmp [bx] ,0

jne reprint
popa
ret

printChar: 

pusha
mov ah,0x0e
int 0x10
popa

ret


myString:
db "Hello,World!!!!!!!!!",0



Exit:
mov ah, 4ch
int 21h
