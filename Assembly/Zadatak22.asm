org 0
mov 25h, #12
mov 26h, 0
mov 27h, 0
mov a, 25h
mov b, #2
div ab
mov a, b
cjne a, #1, paran
mov 27h, #1
jmp kraj
paran:
mov 26h, #1
kraj:
end