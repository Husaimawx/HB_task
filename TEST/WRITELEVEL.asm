DATAS SEGMENT
    ;�˴��������ݶδ���
    FILETEXT DB 'LEVEL.txt',00H
    LEVELNUM1 DB '1',00H
    HANDLE DW ? 
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    MOV AH,3DH
    MOV CX,0
    LEA DX,FILETEXT
    MOV AL,1
    INT 21H
    MOV HANDLE,AX
    
  
    
    MOV AH,40H
    MOV BX,HANDLE
    LEA DX,LEVELNUM1
    MOV CX,1
    INT 21H
    
   
    
    MOV AH,3EH
    MOV BX,HANDLE
    INT 21H
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START