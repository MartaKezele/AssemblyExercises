org 0
dodatak EQU 03h
mov r0, #3ah
petlja:
mov a, @r0
add a, # dodatak
mov @r0, a
inc r0
cjne r0, #3fh, petlja
end