org 0
mov 31h, #16h
mov 32h, #2eh

mov a, 31h
mov b, a
mul ab
mov r0, a
mov r1, b

mov a, 32h
mov b, a
mul ab
mov r2, a
mov r3, b

add a, r0
mov 34h, a

mov a, psw
mov b, #80h
div ab
mov r4, #0
cjne a, #1, prijenos
mov r4, #1
prijenos:
mov a, r1
add a, r4
add a, r3
mov 33h, a

end