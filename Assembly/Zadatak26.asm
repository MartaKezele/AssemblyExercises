org 0
mov 61h, #7
mov 20h, 61h
mov 21h, #2

trazidjelitelje:
mov a, 20h
mov b, 21h
mov 22h, b
cjne a, b, dijeli
jmp zapisineparan
dijeli:
div ab
mov a, b
cjne a, #0, neparan
mov 63h, #2
jmp kraj
neparan:
mov a, 22h
mov b, #1
add a, b
mov 21h, a
jmp trazidjelitelje
zapisineparan: mov 63h, #1
kraj:
end