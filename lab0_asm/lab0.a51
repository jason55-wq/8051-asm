ORG 0

;阿良的嵌入式技術學習區LAB0:P2驅動LED閃爍

LOOP:                  
        MOV    P2,#0H         ; 輸出到P2埠
        CALL   DELAY100MS    ; 呼叫延遲功能副程式
        MOV    P2,#0FFH         ; 輸出到P2埠
        CALL   DELAY100MS    ; 呼叫延遲功能副程式
        JMP    LOOP

;延遲功能副程式
DELAY100MS:
       MOV   R6,#217  ; 1 cycle  
D1:
       MOV   R5, #250 ; 1 cycle * 200
       DJNZ  R5, $    ; 2 cycle * 250 *217 
       DJNZ  R6, D1   ; 2 cycle * 200 
       RET            ; 2 cycle  

END