org 0
mov r2, #8h
mov r3, #0Fh
trazi:
mov a, r3
inc a
mov r3, a
mov r0, a
mov a, @r0
cjne a, #0, trazi
mov a, r2
mov b, r3
push b
dec a
mov r2, a
mov a, r2
cjne a, #0, trazi

mov r0, #70h
mov r1, #8
mov r2, #8
vrati:
mov b, @r1
mov @r0, b
inc r0
inc r1
djnz r2, vrati

mov r2, #8
zapisi:
pop b
mov r0, b
mov @r0, b
djnz r2, zapisi

end