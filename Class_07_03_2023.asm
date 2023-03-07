ORG 100h
MOV DX, OFFSET msg
LEA DX, msg   ;LEA PUSH POP MOV

RET   

msg DB "Enter a number: $"
msg2 DB "Sum is : $"