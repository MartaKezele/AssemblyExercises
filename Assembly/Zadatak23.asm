org 0

mov a, #3fh
mov b, #30h
subb a, b
inc a
mov 60h, a
mov r0, #30h
mov r1, #40h

petlja:

mov a, @r0
mov b, #2
div ab
mov a, b
cjne a, #0, neparan

mov 61h, @r0
mov @r1, 61h
inc r1

neparan:
inc r0

djnz 60h, petlja

end
