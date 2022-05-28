org 0
mov r5, #0
mov 20h, #0
mov 21h, #0
mov 22h, #0

mov 10h, #0ffh
mov 11h, #0ffh
mov 12h, #0ffh
mov 13h, #0ffh

mov a, 11h
mov b, 13h
add a, b
mov r7, a

mov a, psw
mov b, #128
div ab
cjne a, #0, prijenos
neprijenos:
mov a, 10h
mov b, 12h
add a, b
mov r6, a
mov a, psw
mov b, #128
div ab
cjne a, #0, finalcarry
jmp kraj
finalcarry:
mov r5, #1

prijenos:
mov a, 10h
mov b, 12h
add a, b
mov r6, a
inc r6

mov a, psw
mov b, #128
div ab
cjne a, #0, finalcarrycarry
jmp kraj
finalcarrycarry:
mov r5, #1
kraj:
mov a, r5
cjne a, #0, zapisjedan
mov 20h, r6
mov 21h, r7
jmp krajjedan
zapisjedan:
mov 20h, r5
mov 21h, r6
mov 22h, r7
krajjedan:
end