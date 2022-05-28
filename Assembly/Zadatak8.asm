org 0000h
mov 31h, #14h
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
mov a, r0
mov b, r2
add a, b
mov 34h, a
mov a, r1
mov b, r3
add a, b
mov 33h, a
end