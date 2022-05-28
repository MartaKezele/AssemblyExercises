org 0

mov 40h, #30h
mov 41h, #6
mov 42h, #3fh
mov a, 42h
subb a, 40h
add a, #1
mov 43h, a
mov r0, 40h

petlja:
mov @r0, 41h
inc r0
mov a, 41h
add a, #3
mov 41h, a
djnz 43h, petlja

end
