INCLUDE Irvine32.inc
.data
lives BYTE 3
levels BYTE 1
score DD 0
counter DD 0
xPos BYTE 20
yPos BYTE 10
xPosE BYTE 5
yPosE BYTE 1
xPosE2 BYTE 86
yPosE2 BYTE 7
xPosE3 BYTE 17
yPosE3 BYTE 20
xPosE4 BYTE 43
yPosE4 BYTE 17
xF1 BYTE 32
yF1 BYTE 5
xF2 BYTE 90
yF2 BYTE 8
xF3 BYTE 10
yF3 BYTE 8
xF4 BYTE 116
yF4 BYTE 20
E1C BYTE 5
E2C BYTE 7
E3C BYTE 3
E4C BYTE 1
O1 BYTE  " ************      ***      **     ** *********      ********** **         ** ********** ********",0
O2 BYTE  " **               *****     ***   *** **             **      **  **       **  **         **    **",0
O3 BYTE  " **              **   **    ** * * ** **             **      **   **     **   **         ********",0
O4 BYTE  " **    ******   *********   **  *  ** *********      **      **    **   **    ********** ****     ",0
O5 BYTE  " **    **  **  **       **  **     ** **             **      **     ** **     **         **  **  ",0
O6 BYTE  " ************ **         ** **     ** *********      **********      ***      ********** **    **",0
O7 BYTE  "                                                                                                 ",0
tbool BYTE "F"
inputChar BYTE ?
inputChar1 BYTE "ENTER YOUR NAME: ",0
inputChar4 BYTE "NAME: ",0

inputChar2 BYTE 50 DUP(?)
inputChar3 BYTE ?
 GF1 BYTE "########################################################################################################################";120
 GF2 BYTE "                                                                                                                        ";240
 GF3 BYTE "##   .   .   .   .   .       .      .      .     .  ##    .    .    .    .    .   .    .   .   .   .   .   .   .   .  ##";360
 GF4 BYTE "##     %%    #### #####   ##########################################################   ################# %%%%%%%%%%%  ##";480
 GF5 BYTE "##     %%    ##   .     . ##      ##         ## .     .  ##          ## .      .  ##   .     .     .  ## %%           ##";600
 GF6 BYTE "##     %%    ##           ##  ##  ##         ##    ##    ##          ##    ##     ##                  ## %%%%%%%%%%%  ##";720
 GF7 BYTE "##  .  %%.   ##   ##########  ##  #############    ##    ##############    ##  .  #################   ##          %%  ##";840
 GF8 BYTE "##     %%    ##   .      .    ##        ##       . ## .         ##         ##      .    .     .    .  ##          %%  ##";960
 GF9 BYTE "##     %%    ##               ##        ##         ##           ## .   .   ##  .   .                  ## %%%%%%%%%%%  ##";1080
GF10 BYTE "################# ######   ##      ##         ##          ##          ##           ##   ################################";1200
GF11 BYTE "##           ##        .   ##########################################################    .   .   .    ##              ##";1320
GF12 BYTE "##           ##   ###########      ##   ##    ##          ##    ##  . ## .       . ### #############  ##              ##";1440
GF13 BYTE "###############       .    .   .  .   . ##.   .   . ##.    .    ##           ##                       ##################";1560
GF14 BYTE "             ##    .                    ##          ##          ##   .   .   ##  .       .   .   .    ##                ";1680
GF15 BYTE "################# ######   ##      ##         ##    ##    ##   .      ##     ##    ##    ###############################";1800
GF16 BYTE "##           ##    .       ##########################################################    .   .   .    ##              ##";1920
GF17 BYTE "##           ##   ###########      ##  .      ##   .      ##   .      ##       .   ### #############  ##              ##";2040
GF18 BYTE "###############  .   .        .                                                     .   .  .   .   .  ##################";2160
GF19 BYTE "## %%%%%%%%  ##       ##      ##        ##        ##    .      ##    .     ##                ##       ## %%%%%%%%%%   ##";2280
GF20 BYTE "##       %%  ##   .     .     ##  .     ##        ##  .     .  ##    .     ##     .     .    .   .  . ##         %%   ##";2400
GF21 BYTE "## %%%%%%%%  ##   ##########  ##  #############   ##     ############## .  ##   . ##   ################# %%%%%%%%%%   ##";2520
GF22 BYTE "##       %%  ##   .       ##. ##. ##         ## . ##  .  ##          ##    ##     ##  .   .   .   .   ##         %%   ##";2640
GF23 BYTE "##       %%  ##           ##      ##         ##          ##          ##    .    . ##                  ##         %%   ##";2760
GF24 BYTE "## %%%%%%%%  ##########   #########################################################################   ## %%%%%%%%%%   ##";2880
GF25 BYTE "##      .     .     .         .         .           ##                      .        .          .                     ##";3000
GF26 BYTE "                                              .   .   .   .   .   .   .                                   .   .   .     ";3120
GF27 BYTE "########################################################################################################################",0;3240

 G1 BYTE "########################################################################################################################";120
 G2 BYTE "##                                                                                                                    ##";240
 G3 BYTE "##     .   .   .   .   .                                                               .   .   .   .   .   .          ##";360
 G4 BYTE "##           ###########################################################################################              ##";480
 G5 BYTE "##                                            .   .   .   .   .   .   .   .   .   .   .                               ##";600
 G6 BYTE "##              ####################################################################################                  ##";720
 G7 BYTE "##  . . . .                                                                                                           ##";840
 G8 BYTE "##           ##                            .    .    .    .    .     .                                ##       .      ##";960
 G9 BYTE "##           ##                   %%   %%%%%%%%%%%  %%%%%%%%%%%   %%%%%%%%%%%                         ##              ##";1080
G10 BYTE "##           ##    .    .    .    %%            %%  %%                     %%                         ##  .    .    . ##";1200
G11 BYTE "##           ##    .         .    %%            %%  %%                     %%          . .   .   .    ##              ##";1320
G12 BYTE "##           ##                   %%            %%  %%%%%%%%%%%            %%                         ##       .      ##";1440
G13 BYTE "##           ##    .         .    %%   %%%%%%%%%%% .   .   . %%   %%%%%%%%%%%                         ##              ##";1560
G14 BYTE "###############                   %%            %%           %%       .   .%% .    .   .   .   .   .  ##################";1680
G15 BYTE "##           ##    .         .    %%            %%           %%            %%                         ##   .   .   .  ##";1800
G16 BYTE "##           ##                   %%   %%%%%%%%%%%  %%%%%%%%%%%   %%%%%%%%%%%          .   .   .   .  ##       .      ##";1920
G17 BYTE "##           ##                                                                                       ##       .      ##";2040
G18 BYTE "##     .     ##  .   .    .                .    .    .    .    .    .                                 ##       .      ##";2160
G19 BYTE "##           ##                                                                                       ##       .      ##";2280
G20 BYTE "##     .     ##                                                                                       ##   .   .   .  ##";2400
G21 BYTE "##                                                                                                                    ##";2520
G22 BYTE "##     .        ####################################################################################                  ##";2640
G23 BYTE "##               .   .   .                                                                                            ##";2760
G24 BYTE "##     .     ###########################################################################################              ##";2880
G25 BYTE "##                                                                                                                    ##";3000
G26 BYTE "##                                            .   .   .   .   .   .   .                                               ##";3120
G27 BYTE "########################################################################################################################";3240
strScore BYTE "Score: ",0
strLives BYTE "Lives: ",0
strLevel BYTE "Level: ",0
grid BYTE 27 DUP(120 DUP(0))
MOVEMENT_DELAY EQU 250000000
DELAY1 EQU 70000000
 GL1 BYTE "########################################################################################################################";120
 GL2 BYTE "##                                                                                                                    ##";240
 GL3 BYTE "##   .   .   .   .   .    .      .         .       .    ##    .     .     .     .      .   .   .   .   .   .   .   .  ##";360
 GL4 BYTE "##                           ########################################################                                 ##";480
 GL5 BYTE "##           ##    ############               ##                   ##   .   .   .  ###############    ##              ##";600
 GL6 BYTE "##           ##     .     .  ##  .  %%     .  ##                   ##   %%%%%%%%%  ##  .   .   .   .  ##   .   .   .  ##";720
 GL7 BYTE "##  .  .  .  ##                     %%        #######################          %%                     ##              ##";840
 GL8 BYTE "##           ##     .     .         %%                                  %%%%%%%%%      .   .   .   .  ##              ##";960
 GL9 BYTE "##  .  .     ##              ##  .  %%.    .  ## .   .  ##  .   .  ##   .   .  %%  ##                 ##   .   .   .  ##";1080
GL10 BYTE "##           ##   ########   ##     %%        ##        ##         ##   %%%%%%%%%  ##   ###########   ##              ##";1200
GL11 BYTE "##  .  .  .  ##              ########################################################  .   .   .   .  ##              ##";1320
GL12 BYTE "##           ##    .     .                              ##     .   .   .   .   .   .                  ##   .   .   .  ##";1440
GL13 BYTE "###############                   .   .   .   .   .   . ##                                            ##################";1560
GL14 BYTE "##           ##    .     .                              ##     .   .   .   .   .   .   .   .   .   .  ##              ##";1680
GL15 BYTE "##           ##                   .    .    .    .    . ##                                            ##              ##";1800
GL16 BYTE "###############              ########################################################  .   .   .   .  ##################";1920
GL17 BYTE "##           ##   ########   ##  .         .       .    ##       .      .     .    ##   ###########   ##              ##";2040
GL18 BYTE "##     .     ##  .     .     ##                                                    ##                 ## .   .   .    ##";2160
GL19 BYTE "##           ##                  %%%%%%%%%    ##        ##         ##   %%%%%%%%%                     ##              ##";2280
GL20 BYTE "##  .  .  .  ##                  %%           ##   .   .## .    .  ##          %%      .   .   .   .  ## .   .   .    ##";2400
GL21 BYTE "##           ##  .     .         %%%%%%%%%    #######################   %%%%%%%%%                     ##              ##";2520
GL22 BYTE "##  .  .  .  ##              ##.   .   .%% .  ##                   ##          %%  ##  .   .   .   .  ##              ##";2640
GL23 BYTE "##           ##    ############  %%%%%%%%%    ##                   ##   %%%%%%%%%  ##    ############### .   .   .    ##";2760
GL24 BYTE "##  .  .  .                  ########################################################                                 ##";2880
GL25 BYTE "##                                                      ##                                                            ##";3000
GL26 BYTE "##              .    .    .     .     .     .   .   .   .   .   .   .       .      .      .         .     .   .   .   ##";3120
GL27 BYTE "########################################################################################################################",0;3240


 P1 BYTE "########################################################################################################################";120
 P2 BYTE "#                                                                                                                      #"
 P3 BYTE "#         ********************          ******              *************************                                  #"
 P4 BYTE "#         ********************         ********             *************************                                  #"
 P5 BYTE "#         ****            ****        ****  ****            ****                                                       #"
 P6 BYTE "#         ****            ****       ****    ****           ****                                                       #"
 P7 BYTE "#         ****            ****      ****      ****          ****                                                       #"
 P8 BYTE "#         ********************     ****************         ****                         **************************    #"
 P9 BYTE "#         ********************    ******************        ****                         **************************    #"
P10 BYTE "#         ****                   ****            ****       ****                                                       #"
P11 BYTE "#         ****                  ****              ****      ****                                                       #"
P12 BYTE "#         ****                 ****                ****     ****                                                       #"
P13 BYTE "#         ****                ****                  ****    *************************                                  #"
P14 BYTE "#         ****               ****                    ****   *************************                                  #"         
P15 BYTE "#                                                                                                                      #"                                                                                               
P16 BYTE "#         *******                   *******             ******             ********          ****                      #"
P17 BYTE "#         ********                 ********            ********            *********         ****                      #"
P18 BYTE "#         **** ****               **** ****           ****  ****           ****  ****        ****                      #"
P19 BYTE "#         ****  ****             ****  ****          ****    ****          ****   ****       ****                      #"
P20 BYTE "#         ****   ****           ****   ****         ****      ****         ****    ****      ****                      #"
P21 BYTE "#         ****    ****         ****    ****        ****************        ****     ****     ****                      #"
P22 BYTE "#         ****     ****       ****     ****       ******************       ****      ****    ****                      #"
P23 BYTE "#         ****      ****     ****      ****      ****            ****      ****       ****   ****                      #"
P24 BYTE "#         ****       ****   ****       ****     ****              ****     ****        ****  ****                      #"
P25 BYTE "#         ****        **** ****        ****    ****                ****    ****         **** ****                      #"
P26 BYTE "#         ****         *******         ****   ****                  ****   ****          ********                      #"
P27 BYTE "#         ****          *****          ****  ****                    ****  ****           *******                      #"
P28 BYTE "#                                                                                                                      #"
P29 BYTE "#                                                                                                                      #"
P30 BYTE "########################################################################################################################",0;120

  M1 BYTE "########################################################################################################################";120
  M2 BYTE "##                                                                                                                    ##",0;120
  M3 BYTE "##                                    *        * ******* *     * *      *                                             ##"
  M4 BYTE "##                                    **      ** *       **    * *      *                                             ##"
  M5 BYTE "##                                    ***    *** ******* *  *  * *      *                                             ##"
  M6 BYTE "##                                    *  *  *  * *       *    ** *      *                                             ##"
  M7 BYTE "##                                    *   **   * ******* *     * ********                                             ##"
  M8 BYTE "##                                                                                                                    ##"
  M9 BYTE "##                                                                                                                    ##"
 M10 BYTE "##                      INSTRUCTIONS:                                                                                 ##",0
 M11 BYTE "##                                                                                                                    ##"
 M12 BYTE "##                      PAUSE                                                                                         ##" 
 M13 BYTE "##                                                                                                                    ##"
 M14 BYTE "##                                                                                                                    ##"                       
 M15 BYTE "##                      RESUME                                                                                        ##"
 M16 BYTE "##                                                                                                                    ##"
 M17 BYTE "##                                                                                                                    ##"
 M18 BYTE "##                      ENTER LEVEL:                                                                                  ##"
 M19 BYTE "##                                                                                                                    ##",0
 M20 BYTE "########################################################################################################################",0;120
 M21 BYTE "########################################################################################################################",0;120
 M22 BYTE "##                                     LeftMovement =  A                                                              ##"
 M23 BYTE "##                                     RightMovement =  D                                                             ##"
 M24 BYTE "##                                     UpMovement =  W                                                                ##"
 M25 BYTE "##                                     DownMovwmwnt =  S                                                              ##"
 M26 BYTE "##                                     Avoid Collision With Enemy                                                     ##"
 M27 BYTE "##                                     Use Teleport Booths to Escape from Enemy                                       ##",0


.code
Page1 PROC
   mov dl,0
    mov dh,0
    call Gotoxy
    mov eax,green+(green * 16)
   call SetTextColor
    mov edx,OFFSET P1
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov eax,green+(black * 16)
   call SetTextColor
    mov edx,OFFSET P2
    call WriteString
     mov dl,0
    mov dh,2
    call Gotoxy
    mov edx,OFFSET P3
    call WriteString
     mov dl,0
    mov dh,3
    call Gotoxy
    mov edx,OFFSET P4
    call WriteString
     mov dl,0
    mov dh,4
    call Gotoxy
    mov edx,OFFSET P5
    call WriteString
     mov dl,0
    mov dh,5
    call Gotoxy
    mov edx,OFFSET P6
    call WriteString
     mov dl,0
    mov dh,6
    call Gotoxy
    mov edx,OFFSET P7
    call WriteString
     mov dl,0
    mov dh,7
    call Gotoxy
    mov edx,OFFSET P8
    call WriteString
     mov dl,0
    mov dh,8
    call Gotoxy
    mov edx,OFFSET P9
    call WriteString
     mov dl,0
    mov dh,9
    call Gotoxy
    mov edx,OFFSET P10
    call WriteString
     mov dl,0
    mov dh,10
    call Gotoxy
    mov edx,OFFSET P11
    call WriteString
     mov dl,0
    mov dh,11
    call Gotoxy
    mov edx,OFFSET P12
    call WriteString
     mov dl,0
    mov dh,12
    call Gotoxy
    mov edx,OFFSET P13
    call WriteString
     mov dl,0
    mov dh,13
    call Gotoxy
    mov edx,OFFSET P14
    call WriteString
     mov dl,0
    mov dh,14
    call Gotoxy
    mov edx,OFFSET P15
    call WriteString
     mov dl,0
    mov dh,15
    call Gotoxy
    mov edx,OFFSET P16
    call WriteString
     mov dl,0
    mov dh,16
    call Gotoxy
    mov edx,OFFSET P17
    call WriteString
     mov dl,0
    mov dh,17
    call Gotoxy
    mov edx,OFFSET P18
    call WriteString
     mov dl,0
    mov dh,18
    call Gotoxy
    mov edx,OFFSET P19
    call WriteString
     mov dl,0
    mov dh,19
    call Gotoxy
    mov edx,OFFSET P20
    call WriteString
     mov dl,0
    mov dh,20
    call Gotoxy
    mov edx,OFFSET P21
    call WriteString
     mov dl,0
    mov dh,21
    call Gotoxy
    mov edx,OFFSET P22
    call WriteString
     mov dl,0
    mov dh,22
    call Gotoxy
    mov edx,OFFSET P23
    call WriteString
     mov dl,0
    mov dh,23
    call Gotoxy
    mov edx,OFFSET P24
    call WriteString
     mov dl,0
    mov dh,24
    call Gotoxy
    mov edx,OFFSET P25
    call WriteString
     mov dl,0
    mov dh,25
    call Gotoxy
    mov edx,OFFSET P26
    call WriteString
     mov dl,0
    mov dh,26
    call Gotoxy
    mov edx,OFFSET P27
    call WriteString
     mov dl,0
    mov dh,27
    call Gotoxy
    mov edx,OFFSET P28
    call WriteString
     mov dl,0
    mov dh,28
    call Gotoxy
    mov edx,OFFSET P29
    call WriteString
     mov dl,0
    mov dh,29
    call Gotoxy
    mov eax,green+(green * 16)
   call SetTextColor
    mov edx,OFFSET P30
    call WriteString
    ret
    Page1 ENDP


    Page2 PROC
   mov eax,cyan(cyan * 16)
   call SetTextColor
   mov dl,0
    mov dh,0
    call Gotoxy
    mov edx,OFFSET M1
    call WriteString
    mov eax,cyan(cyan * 16)
   call SetTextColor
   mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET M1
    call WriteString
   mov dl,0
    mov dh,2
    call Gotoxy
    mov edx,OFFSET M1
    call WriteString
   mov dl,0
    mov dh,3
    call Gotoxy
    mov edx,OFFSET M1
    call WriteString
   mov dl,0
    mov dh,4
    call Gotoxy
    mov edx,OFFSET M1
    call WriteString
    mov dl,0
    mov dh,5
    call Gotoxy
    mov edx,OFFSET M2
    call WriteString
     mov dl,0
    mov dh,6
    call Gotoxy
    mov eax,blue+(black * 16)
   call SetTextColor
    mov edx,OFFSET M2
    call WriteString
     mov dl,0
    mov dh,7
    call Gotoxy
    mov edx,OFFSET M2
    call WriteString
    mov dl,0
    mov dh,8
    call Gotoxy
    mov edx,OFFSET M2
    call WriteString
     mov dl,0
    mov dh,9
    call Gotoxy
    mov edx,OFFSET M3
    call WriteString
     mov dl,0
    mov dh,10
    call Gotoxy
    mov edx,OFFSET M4
    call WriteString
     mov dl,0
    mov dh,11
    call Gotoxy
    mov edx,OFFSET M5
    call WriteString
     mov dl,0
    mov dh,12
    call Gotoxy
    mov edx,OFFSET M6
    call WriteString
     mov dl,0
    mov dh,13
    call Gotoxy
    mov edx,OFFSET M7
    call WriteString
     mov dl,0
    mov dh,14
    call Gotoxy
    mov edx,OFFSET M8
    call WriteString
     mov dl,0
    mov dh,15
    call Gotoxy
    mov edx,OFFSET M9
    call WriteString
     mov dl,0
    mov dh,16
    call Gotoxy
    mov edx,OFFSET M10
    call WriteString
     mov dl,0
    mov dh,17
    call Gotoxy
    mov edx,OFFSET M11
    call WriteString
     mov dl,0
    mov dh,18
    call Gotoxy
    mov edx,OFFSET M12
    call WriteString
     mov dl,0
    mov dh,19
    call Gotoxy
    mov edx,OFFSET M13
    call WriteString
     mov dl,0
    mov dh,20
    call Gotoxy
    mov edx,OFFSET M14
    call WriteString
     mov dl,0
    mov dh,21
    call Gotoxy
    mov edx,OFFSET M15
    call WriteString
     mov dl,0
    mov dh,22
    call Gotoxy
    mov edx,OFFSET M16
    call WriteString
     mov dl,0
    mov dh,23
    call Gotoxy
    mov edx,OFFSET M17
    call WriteString
     mov dl,0
    mov dh,24
    call Gotoxy
    mov edx,OFFSET M18
    call WriteString
     mov dl,0
    mov dh,25
    call Gotoxy
    mov edx,OFFSET M19
    call WriteString
     mov dl,0
    mov dh,26
    call Gotoxy
     mov eax,cyan+(cyan * 16)
   call SetTextColor
    mov edx,OFFSET M20
    call WriteString
   mov dl,0
    mov dh,26
    call Gotoxy
    mov edx,OFFSET M20
    call WriteString
    mov dl,0
    mov dh,27
    call Gotoxy
    mov edx,OFFSET M20
    call WriteString
    mov dl,0
    mov dh,28
    call Gotoxy
    mov edx,OFFSET M20
    call WriteString
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET M20
    call WriteString
    mov dl,0
    mov dh,30
    call Gotoxy
    mov edx,OFFSET M20
    call WriteString
    mov eax,black+(black * 16)
   call SetTextColor
    ret
    Page2 ENDP

    Page3 PROC
       mov dl,0
    mov dh,0
    call Gotoxy
    mov eax,cyan+(cyan * 16)
   call SetTextColor
    mov edx,OFFSET P1
    call WriteString
   
     mov dl,0
    mov dh,10
    call Gotoxy
     mov eax,blue+(black * 16)
   call SetTextColor
    mov edx,OFFSET M22
    call WriteString
     mov dl,0
    mov dh,11
    call Gotoxy
    mov edx,OFFSET M23
    call WriteString
     mov dl,0
    mov dh,12
    call Gotoxy
    mov edx,OFFSET M24
    call WriteString
     mov dl,0
    mov dh,13
    call Gotoxy
    mov edx,OFFSET M25
    call WriteString
     mov dl,0
    mov dh,14
    call Gotoxy
    mov edx,OFFSET M26
    call WriteString
  
    Page3 ENDP

GridM PROC
mov edi,OFFSET grid
mov ecx,27
L3:
mov ebx,ecx
mov ecx,120
L4:
 mov al,[edi]
cmp al,"#"
je L5
cmp al,"%"
je L8
jmp L6
L5:
 mov eax,red + (red * 16)
 call SetTextColor
 mov al,[edi]
call writeChar

 jmp L7
 L8:
 mov eax,blue + (blue * 16)
 call SetTextColor
 mov al,[edi]
call writeChar
mov eax,1
call delay
jmp L7
 L6:
 mov eax,green + (black * 16)
 call SetTextColor
 mov al,[edi]
call writeChar
 L7:
inc edi
loop L4
mov ecx,ebx
loop L3
ret
GridM ENDP



main PROC
call Page1
        mov dl,30
        mov dh, 28
        call Gotoxy
        mov eax,green+(black * 16)
   call SetTextColor
        mov  edx, OFFSET inputChar1  ; Load the buffer address
        call Writestring
 mov  edx, OFFSET inputChar2  ; Load the buffer address
    mov  ecx, SIZEOF inputChar2  ; Set the buffer size
    call Readstring 
    
    call clrscr

    call Page2
     mov dl,38
        mov dh, 16
        call Gotoxy
    call ReadChar
    cmp al,"i"
    je instruct
    jmp pgg2
    instruct:
    call clrscr
    call Page3
    call ReadChar
     cmp al,"i"
     je dobara
     jmp instruct
     dobara:
     call clrscr
     call Page2
    pgg2:
     mov dl,38
        mov dh, 24
        call Gotoxy
         mov eax,blue+(black * 16)
   call SetTextColor
    call ReadInt
    mov levels,al
start:

call clrscr
mov esi,OFFSET grid
cmp levels,1
je level1
cmp levels,2
je level2
cmp levels,3
je level3
level1:
mov edi,OFFSET G1
mov ecx,27
L1:
mov ebx,ecx
mov ecx,120
L2:
mov dl,[edi]
mov [esi],dl
inc edi
inc esi
loop L2
mov ecx,ebx
loop L1  

level2:
mov edi,OFFSET GL1
mov ecx,27
Le1:
mov ebx,ecx
mov ecx,120
Le2:
mov dl,[edi]
mov [esi],dl
inc edi
inc esi
loop Le2
mov ecx,ebx
loop Le1  


level3:
mov edi,OFFSET GF1
mov ecx,27
Lev1:
mov ebx,ecx
mov ecx,120
Lev2:
mov dl,[edi]
mov [esi],dl
inc edi
inc esi
loop Lev2
mov ecx,ebx
loop Lev1  

call GridM
cmp levels,2
je fruits
cmp levels,3
je fruits
jmp S
fruits:
call DrawFruits
S:
call DrawEnemy

         gameLoop:

         cmp levels,1
         je countScore1
         cmp levels,2
         je countScore2
          cmp levels,3
         je countScore3
         jmp GameStart
         countScore1:
         cmp counter,98
         jae UpLevel
         jmp GameStart
         countScore2:
         cmp counter,206
         jae Uplevel
         jmp GameStart
         countScore3:
         cmp counter,165
         jae exitGame
         jmp GameStart
         Uplevel:
         cmp levels,3
         je exitGame
         inc levels
         mov lives,3
         mov score,0
         mov counter,0
         mov xPos,20
         mov yPos,10
         jmp start

         GameStart:
       ; draw score:
       mov dl,0
       mov dh,29
       call Gotoxy
       mov edx,OFFSET strScore
       call WriteString
       mov eax, score  ; Zero-extend score to 32 bits (if it's a BYTE)
       call WriteDec     ; Display the integer value in score

       ; draw level:
       mov dl,0
       mov dh,27
       call Gotoxy
       mov edx,OFFSET strLevel
       call WriteString
       movzx eax,levels  ; Zero-extend score to 32 bits (if it's a BYTE)
       call WriteDec     ; Display the integer value in score
        
        
        ;draw lives
       mov dl,0
       mov dh,28
       call Gotoxy
       mov edx,OFFSET strLives
       call WriteString
       movzx eax, lives  ; Zero-extend score to 32 bits (if it's a BYTE)
       call WriteDec     ; Display the integer value in score

    mov ecx, MOVEMENT_DELAY
    delayLoop:
    dec ecx
    jnz delayLoop

        ; get user key input:
        call ReadKey
        jz X
        mov inputChar,al
        X:
        
       
        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUpL

        cmp inputChar,"s"
        je moveDownL

        cmp inputChar,"a"
        je moveLeftL

        cmp inputChar,"d"
        je moveRightL
        cmp inputChar,"p" 
        je pausegame
        moveUpL:
        call moveUp
         cmp lives,0
        je exitGame
        jmp gameLoop

        moveDownL:
        call moveDown
         cmp lives,0
        je exitGame
        jmp gameLoop

        moveLeftL:
        call moveLeft
         cmp lives,0
        je exitGame
        jmp gameLoop

        moveRightL:
        call moveRight
         cmp lives,0
        je exitGame
        jmp gameLoop

        pausegame:
        call clrscr
        call Page2
        call ReadChar
        call clrscr
        call GridM
        mov inputChar,"w"
        jmp gameloop
     

        exitGame:
        mov eax,black+(black*16)
        call clrscr
         call GameOverall
        mov ecx,900000000
        dell:
        loop dell
        exit
main ENDP

moveUp PROC
         mov ecx, DELAY1
        delayLoop1:
    dec ecx
    jnz delayLoop1
        call UpdateEnemy
        call DrawEnemy
         call UpdateEnemy2
        call DrawEnemy2
        cmp levels,2
        je MU1
        cmp levels,3
        je MU1
        jmp MU2
        MU1:
        call UpdateEnemy3
         call DrawEnemy3
         call UpdateEnemy4
         call DrawEnemy4
         call EatFruits
         MU2:
        call UpdatePlayer
        call DecLives
        dec yPos
        cmp yPos,0
        je U5
        mov edi,OFFSET grid
        mov cl,yPos
        U1:
        mov ebx,ecx
        mov ecx,120
        U2:
        inc edi
        loop U2
        mov ecx,ebx
        loop U1
        mov cl,xPos
        U3:
        inc edi
        loop U3
        mov al,[edi]
        cmp al,"#"
        je U5
        cmp al,"%"
        je U5
        cmp al,"."
          je U7
          U6:
        call DrawPlayer
        mov al,"X"
        mov [edi],al
        mov ecx,120
        U4:
        inc edi
        loop U4

        mov al," "
        mov [edi],al
      ;call Delay
       ; call clrscr
       ; call GridM
         ret
        U5:
        inc yPos
        call DrawPlayer
        ret
       U7:
       inc score
       inc counter
       jmp U6
       ret
       moveUp ENDP

        moveDown PROC
        mov ecx, DELAY1
        delayLoop2:
    dec ecx
    jnz delayLoop2
         call UpdateEnemy
        call DrawEnemy
         call UpdateEnemy2
        call DrawEnemy2
         cmp levels,2
        je MD1
        cmp levels,3
        je MD1
        jmp MD2
        MD1:
        call UpdateEnemy3
         call DrawEnemy3
           call UpdateEnemy4
         call DrawEnemy4
         call EatFruits
         MD2:
        call UpdatePlayer
        call DecLives
       ; cmp lives,0
       ; je exitGame
        inc yPos
        mov edi,OFFSET grid
        mov cl,yPos
        D1:
        mov ebx,ecx
        mov ecx,120
        D2:
        inc edi
        loop D2
        mov ecx,ebx
        loop D1
        mov cl,xPos
        D3:
        inc edi
        loop D3
        mov al,[edi]
        cmp al,"#"
        je D5
        cmp al,"%"
        je D5
         cmp al,"."
        je D7
        D6:
        call DrawPlayer
        mov al,"X"
        mov [edi],al
        mov ecx,120
        D4:
        dec edi
        loop D4
        mov al," "
        mov [edi],al
        ;call Delay
       ;call clrscr
       ;call GridM
      ret
        D5:
        dec yPos
         call DrawPlayer
         ret
         D7:
         inc score
         inc counter
         jmp D6
         ret
         moveDown ENDP

       
        moveLeft PROC
        call UpdateEnemy
        call DrawEnemy
         call UpdateEnemy2
        call DrawEnemy2
         cmp levels,2
        je Mleft1
        cmp levels,3
        je Mleft1
        jmp Mleft2
        Mleft1:
        call UpdateEnemy3
         call DrawEnemy3
        call UpdateEnemy4
         call DrawEnemy4
         call EatFruits
         cmp levels,3
         je gayab2
         jmp Mleft2
         gayab2:
         call telep
         cmp tbool,"N"
         je tele
         jmp Mleft2
         tele:
         mov tbool,"F"
         ret
         Mleft2:
        call UpdatePlayer
        call DecLives
        dec xPos
        mov edi,OFFSET grid
        mov cl,yPos
        ML1:
        mov ebx,ecx
        mov ecx,120
        ML2:
        inc edi
        loop ML2
        mov ecx,ebx
        loop ML1
        mov cl,xPos
        ML3:
        inc edi
        loop ML3
        mov al,[edi]
        cmp al,"#"
        je ML5
        cmp al,"%"
        je ML5
         cmp al,"."
         je ML7
         ML6:
        call DrawPlayer
        mov al,"X"
        mov [edi],al
        inc edi
        mov al," "
        mov [edi],al
        ;call clrscr
        ;call GridM
        ret
         ML5:
         inc xPos
         call DrawPlayer
         ret
         ML7:
         inc score
         inc counter
         jmp ML6
         ret
         moveLeft ENDP

        moveRight PROC
        call UpdateEnemy
        call DrawEnemy
         call UpdateEnemy2
        call DrawEnemy2
         cmp levels,2
        je Mright1
        cmp levels,3
        je Mright1
        jmp Mright2
        Mright1:
        call UpdateEnemy3
         call DrawEnemy3
         call UpdateEnemy4
         call DrawEnemy4
         call EatFruits
         cmp levels,3
         jae gayab
         jmp Mright2
         gayab:
         call telep
         cmp tbool,"N"
         je teleR
         jmp Mright2
         teleR:
         mov tbool,"F"
         ret
         Mright2:
        call UpdatePlayer
        call DecLives
        ;cmp lives,0
        ;je exitGame
        inc xPos
        mov edi,OFFSET grid
        mov cl,yPos
        R1:
        mov ebx,ecx
        mov ecx,120
        R2:
        inc edi
        loop R2
        mov ecx,ebx
        loop R1
        mov cl,xPos
        R3:
        inc edi
        loop R3
         mov al,[edi]
        cmp al,"#"
        je R5
        cmp al,"%"
        je R5
         cmp al,"."
          je R7
          R6:
        call DrawPlayer
        mov al,"X"
        mov [edi],al
        dec edi
        mov al," "
        mov [edi],al
        ;call clrscr
        ;call GridM
        ret
         R5:
        dec xPos
         call DrawPlayer
        ret
         R7:
         inc score
         inc counter
         jmp R6
         ret
         moveRight ENDP

DrawPlayer PROC
  
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
   
     mov eax,yellow + (black * 16)
    call SetTextColor
     mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

DrawEnemy PROC
    mov dl,xPosE
    mov dh,yPosE
    call Gotoxy
    mov eax,cyan + (black * 16)
    call SetTextColor
    mov al,"D"
    call WriteChar
    ret
DrawEnemy ENDP

UpdateEnemy PROC
    mov dl,xPosE
    mov dh,yPosE
    call Gotoxy
    mov al," "
    call WriteChar
    cmp E1C,215
    je ML2
    cmp E1C,110
    jae ML1
    inc xPosE
    inc E1C
    ret
    ML1:
    dec xPosE
    inc E1C
    ret
    ML2:
    mov E1C,5
    ret
UpdateEnemy ENDP

DrawEnemy2 PROC
    mov dl,xPosE2
    mov dh,yPosE2
    call Gotoxy
    mov eax,cyan + (black * 16)
    call SetTextColor
    mov al,"D"
    call WriteChar
    ret
DrawEnemy2 ENDP

UpdateEnemy2 PROC
    mov dl,xPosE2
    mov dh,yPosE2
    call Gotoxy
    mov al," "
    call WriteChar
    cmp E2C,33
    je MLE2
    cmp E2C,20
    jae MLE1
    inc yPosE2
    inc E2C
    ret
    MLE1:
    dec yPosE2
    inc E2C
    ret
    MLE2:
    mov E2C,7
    ret
UpdateEnemy2 ENDP

DrawEnemy3 PROC
    mov dl,xPosE3
    mov dh,yPosE3
    call Gotoxy
    mov eax,gray + (black * 16)
    call SetTextColor
    mov al,"&"
    call WriteChar
    ret
DrawEnemy3 ENDP

UpdateEnemy3 PROC
    mov dl,xPosE3
    mov dh,yPosE3
    call Gotoxy
    mov al," "
    call WriteChar
    cmp E3C,37
    je M3LE2
    cmp E3C,20
    jae M3LE1
    dec yPosE3
    inc E3C
    ret
    M3LE1:
    inc yPosE3
    inc E3C
    ret
    M3LE2:
    mov E3C,3
    ret
UpdateEnemy3 ENDP

DrawEnemy4 PROC
    mov dl,xPosE4
    mov dh,yPosE4
    call Gotoxy
    mov eax,gray + (black * 16)
    call SetTextColor
    mov al,"&"
    call WriteChar
    ret
DrawEnemy4 ENDP

UpdateEnemy4 PROC
    mov dl,xPosE4
    mov dh,yPosE4
    call Gotoxy
    mov al," "
    call WriteChar
    cmp E4C,79
    je M4L2
    cmp E4C,40
    jae M4L1
    inc xPosE4
    inc E4C
    ret
    M4L1:
    dec xPosE4
    inc E4C
    ret
    M4L2:
    mov E4C,1
    ret
UpdateEnemy4 ENDP

DrawFruits PROC
    mov dl,xF1
    mov dh,yF1
    call Gotoxy
    mov eax,red + (yellow * 16)
    call SetTextColor
    mov al,"$"
    call WriteChar
     mov dl,xF2
    mov dh,yF2
    call Gotoxy
    mov eax,blue + (yellow * 16)
    call SetTextColor
    mov al,"@"
    call WriteChar
     mov dl,xF3
    mov dh,yF3
    call Gotoxy
    mov eax,blue + (yellow * 16)
    call SetTextColor
    mov al,"*"
    call WriteChar
     mov dl,xF4
    mov dh,yF4
    call Gotoxy
    mov eax,red + (yellow * 16)
    call SetTextColor
    mov al,"M"
    call WriteChar
    ret
DrawFruits ENDP

DecLives PROC
    mov al,yPos
    cmp yPosE,al
    je li1
    jmp li2
    li1:
    mov al,xPos
    cmp xPosE,al
    je li4
    li2:
    mov al,yPos
    cmp yPosE2,al
    je li3
    jmp C2
    li3:
    mov al,xPos
    cmp xPosE2,al
    je li4
    C2:
    cmp levels,2
    jae li5
    ret
    li5:
    mov al,yPos
    cmp yPosE3,al
    je li6
    jmp li7
    li6:
    mov al,xPos
    cmp xPosE3,al
    je li4
    li7:
    mov al,yPos
    cmp yPosE4,al
    je li8
    ret
    li8:
    mov al,xPos
    cmp xPosE4,al
    je li4
    ret
    li4:
    dec lives
    mov xPos,20
    mov yPos,10
    ret
DecLives ENDP

EatFruits PROC
    mov al,yPos
    cmp yF1,al
    je FR1
    jmp FR2
    FR1:
    mov al,xPos
    cmp xF1,al
    je increase
    FR2:
    mov al,yPos
    cmp yF2,al
    je FR3
    jmp FR4
    FR3:
    mov al,xPos
    cmp xF2,al
    je increase
    FR4:
    mov al,yPos
    cmp yF3,al
    je FR5
    jmp FR6
    FR5:
    mov al,xPos
    cmp xF3,al
    je increase
    FR6:
    mov al,yPos
    cmp yF4,al
    je FR7
    ret
    FR7:
    mov al,xPos
    cmp xF4,al
    je increase
    ret
    increase:
    add score,10
    add counter,10
    ret
EatFruits ENDP

    telep PROC
        cmp xPos,2
        jbe te1
        jmp te2
        te1:
        cmp yPos,1
        je teleport1
        jmp te2
        teleport1:
        call UpdatePlayer
        mov xPos,117
        mov yPos,25
        call DrawPlayer
        mov tbool,"N"
        ret
        te2:
        cmp xPos,118
        jae te3
        jmp te4
        te3:
        cmp yPos,1
        je teleport2
        jmp te4
        teleport2:
        call UpdatePlayer
        mov xPos,3
        mov yPos,25
        call DrawPlayer
        mov tbool,"N"
        ret
        te4:
         cmp xPos,2
        jbe te5
        jmp te6
        te5:
        cmp yPos,25
        je teleport3
        ret
        teleport3:
        call UpdatePlayer
        mov xPos,117
        mov yPos,1
        call DrawPlayer
        mov tbool,"N"
        ret
        te6:
        cmp xPos,118
        jae te7
        ret
        te7:
        cmp yPos,25
        je teleport4
        ret
        teleport4:
        call UpdatePlayer
        mov xPos,3
        mov yPos,1
        call DrawPlayer
        mov tbool,"N"
        ret
        

    telep ENDP

    GameOverall PROC
     mov dl,10
    mov dh,2
    call Gotoxy
    mov eax,magenta+(magenta * 16)
   call SetTextColor
    mov edx,OFFSET O1
    call WriteString
    mov dl,10
    mov dh,3
    call Gotoxy
    mov eax,magenta+(magenta * 16)
   call SetTextColor
    mov edx,OFFSET O1
    call WriteString
    mov dl,10
    mov dh,4
    call Gotoxy
    mov eax,magenta+(black * 16)
   call SetTextColor
    mov edx,OFFSET O7
    call WriteString
    mov dl,10
    mov dh,5
    call Gotoxy
    mov eax,magenta+(black * 16)
   call SetTextColor
    mov edx,OFFSET O1
    call WriteString
    mov dl,10
    mov dh,6
    call Gotoxy
    mov eax,magenta+(black * 16)
   call SetTextColor
    mov edx,OFFSET O2
    call WriteString
     mov dl,10
    mov dh,7
    call Gotoxy
    mov edx,OFFSET O3
    call WriteString
     mov dl,10
    mov dh,8
    call Gotoxy
    mov edx,OFFSET O4
    call WriteString
     mov dl,10
    mov dh,9
    call Gotoxy
    mov edx,OFFSET O5
    call WriteString
     mov dl,10
    mov dh,10
    call Gotoxy
    mov edx,OFFSET O6
    call WriteString
    mov dl,10
    mov dh,11
    call Gotoxy
    mov eax,magenta+(black * 16)
   call SetTextColor
    mov edx,OFFSET O7
    call WriteString
     mov dl,10
        mov dh,12
        call Gotoxy
        mov  edx, OFFSET inputChar4  ; Load the buffer address
        call Writestring
 mov  edx, OFFSET inputChar2  ; Load the buffer address
 call Writestring
     mov dl,10
       mov dh,13
       call Gotoxy
       mov edx,OFFSET strScore
       call WriteString
       mov eax, score  ; Zero-extend score to 32 bits (if it's a BYTE)
       call WriteDec     ; Display the integer value in score
        mov dl,10
    mov dh,14
    call Gotoxy
    mov eax,red+(black * 16)
   call SetTextColor
    mov edx,OFFSET O7
    call WriteString
    mov dl,10
    mov dh,15
    call Gotoxy
    mov eax,magenta+(magenta * 16)
   call SetTextColor
    mov edx,OFFSET O1
    call WriteString
    mov dl,10
    mov dh,16
    call Gotoxy
    mov eax,magenta+(magenta * 16)
   call SetTextColor
    mov edx,OFFSET O7
    call WriteString
     mov dl,10
    mov dh,17
    call Gotoxy
    mov eax,magenta+(black * 16)
   call SetTextColor
    mov edx,OFFSET O7
    call WriteString
ret
GameOverall ENDP

END main