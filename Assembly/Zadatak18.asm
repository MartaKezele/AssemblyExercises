org 0

mov a, #65h
mov 29h, #68h

petlja:
dec 29h
cjne a, 29h, petlja

end