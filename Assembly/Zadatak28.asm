org 0
mov r0, #10h
petlja:
mov @r0, #0
inc r0
mov a, r0
cjne a, #7fh, petlja
end