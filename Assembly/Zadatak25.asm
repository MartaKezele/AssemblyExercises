org 0

mov r0, #50h
mov @r0, #1
mov 20h, #0
mov r1, #20h
mov 21h, #12

fibonacci:
mov a, @r0
mov b, @r1
add a, b
mov r1, a
mov a, r0
mov b, #2
mov 20h, a
add a, b
mov r0, a
mov a, r1
mov @r0, a
mov r1, 20h
djnz 21h, fibonacci

end