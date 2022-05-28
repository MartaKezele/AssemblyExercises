org 0
mov 2fh, #1
mov 30h, #5
mov a, 2fh
petlja:
inc 2fh
mov b, 2fh
mul ab
djnz 30h, petlja
mov 51h, b
mov 52h, a
end