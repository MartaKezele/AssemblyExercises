org 0
mov 63h, #5
mov 64h, #11
petlja:
add a, 63h
inc 63h
mov 65h, a
push 65h
djnz 64h, petlja
pop 6ah
end