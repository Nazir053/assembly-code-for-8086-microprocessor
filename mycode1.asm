   .model small
.stack 100h

.data
msg db 'Enter a character: $'
output db 10, 13, 'You entered: $'

.code
main proc
    mov ah, 09h ; Set AH to 09h for printing a string
    lea dx, msg ; Load the offset address of msg into DX
    int 21h     ; Call the interrupt to print the message

    mov ah, 01h ; Set AH to 01h for reading a character
    int 21h     ; Call the interrupt to read a character

    mov dl, al  ; Move the input character to DL for printing
    mov ah, 02h ; Set AH to 02h for printing a character
    int 21h     ; Call the interrupt to print the input character

    mov ah, 09h ; Set AH to 09h for printing a string
    lea dx, output ; Load the offset address of output into DX
    int 21h     ; Call the interrupt to print the output message

    mov dl, al  ; Move the input character to DL for printing
    mov ah, 02h ; Set AH to 02h for printing a character
    int 21h     ; Call the interrupt to print the input character

    mov ah, 4ch ; Set AH to 4Ch for program termination
    int 21h     ; Call the interrupt to terminate the program
main endp
end main
