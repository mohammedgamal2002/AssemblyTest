mov bx,40

mov ah,0x0e




 

lessE_4:
mov al, 'A'
cmp bx, 4    ; if(bx <= 4)
jle stop 
 
 
 
 
            ; elseif(bx < 40) 
less_40: 
mov al, 'B'
cmp bx, 40
jl stop


mov al, 'C'   ; else:

stop: 


int 0x10  

mov ah,0x4c
int 21h

