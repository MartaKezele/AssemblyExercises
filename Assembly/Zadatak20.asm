org 0

mov 30h, #10h
mov 31h, #1fh
mov 33h, #44
mov a, 31h
subb a, 30h
add a, #1
mov 34h, a
mov r0, 30h

petlja:
mov @r0, 33h
inc r0
dec 33h
djnz 34h, petlja

end