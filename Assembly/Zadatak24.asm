org 0
mov 2ah, #6
mov 2bh, #5

mov a, 2ah
cjne a, 2bh, nejednakost
mov 2ch, #0ffh
nejednakost:
mov b, 2bh
div ab
cjne a, #0, manje
mov 2ch, #0bh
jmp vece
manje:
mov 2ch, #0ah
vece:
end