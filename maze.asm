; Name:       Jonathan Daniel
; Class:      CIS 253
; Due Date:   Wednsday December 8th

TITLE Maze (MazeJMD.asm)

INCLUDE Irvine32.inc

.data
	Walls byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		  byte 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1
		  byte 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1
		  byte 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1
		  byte 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
		  byte 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
		  byte 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1
		  byte 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1
		  byte 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1
		  byte 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1
		  byte 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1
		  byte 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1
		  byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1
		  byte 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1
		  byte 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1
		  byte 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1
		  byte 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1
		  byte 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1
		  byte 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1
		  byte 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1
		  byte 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1
		  byte 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 2, 1, 1, 1
		  byte 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1
		  byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		  
		  
	X           byte ?
	Y           byte ?
	CanMove     byte ?
	SuperMan    byte ?
	SuperManOn  byte "Superman mode engaged", 0
	SuperManOff byte "Superman mode disengaged", 0
	Blank       byte "                        ", 0
		  
.code
;******************************************************************************
; Main Procedure
;******************************************************************************
main PROC
	mov X, 1                             ; moves 2 into X (starting location for the player)
	mov Y, 1                             ; moves 1 into Y (starting location for the player)
		
	mov ecx, 24				             ; moves 22 into ecx (22 is the number of rows in the maze)
	mov esi, OFFSET Walls	             ; moves the Data Structure Walls into ESI
	L1:						             ; ======Loop Begings (Loop 1)=====
	  push ecx			                 ; pushes ecx to the stack so it's value will not be over written in procedure draw
	  call draw			                 ; calls procedure draw, this procedure draws the maze
	  pop ecx				             ; pops the first ecx value from the stack upon finishing procedure draw
	loop L1					             ; =====Loop Ends (Loop 1)=====	
	
	mov esi, [OFFSET Walls + 41]         ; moves esi to the player's starting location
	call PlayerMovement                  ; calls the player movement procedure
	
	mov eax, yellow + (black * 16)       ; changes color of text for the exit message
	call SetTextColor                    ; calls the procedure to set the text color
	
	mov dl, 0                            ; moves 0 into dl (horizontal)
	mov dh, 24                           ; moves 24 into dh (vertical)
	call Gotoxy	                         ; calls Gotoxy to move into final position
exit					         	     ; END OF PROGRAM
main ENDP

;******************************************************************************
; Draw Procedure
; This procedure draws the maze to the screen
;******************************************************************************
draw PROC
	mov ecx, 40				         	; moves 35 into ecx (35 is the number of columns in the maze)
	L2: cmp BYTE PTR [esi], 0        	; compairs what esi is point to with 0
	  jne L3				         	; jumps to L3 (Loop 3) if not equal
	  mov al, 32				        ; moves 32 into al (219 is the ASCII for the block)
	  jmp L5					        ; jumps to L5 (Loop 5)
	L3: cmp BYTE PTR [esi], 1           ; compairs what esi points to with 1
	  jne L4                            ; jumps to L4 if not equal
	  mov eax, blue + (black * 16)      ; moves blue (background black) to eax
	  call SetTextColor                 ; outputs color to text
	  mov al, 219			         	; moves 219 into al (32 is the ASCII for the blank space)
	  jmp L5                            ; jumps to L5 (Loop 5)
	L4: cmp BYTE PTR [esi], 2           ; compairs what esi points to with 2
	  jne L5                            ; jumps to L5 if not equal
	  mov eax, red + (black * 16)       ; moves red (background blue) to eax
	  call SetTextColor                 ; outputs color to text
	  mov al, 5                         ; moves 5 into al
	  jmp L5                            ; jumps to L5 (Loop 5)
	L5: call writechar			        ; writes the character in al to the screen
	  inc esi					        ; incriments esi (pointer)
	loop L2						        ; =====Loop Ends (Loop 2)=====
	call crlf				        	; Calls carage return line feed
	ret						        	; returns to previous procedure
draw ENDP

;******************************************************************************
; Procedute to control player
; This procedure controls the player movement through a series of compair
; statements and jumps.  The program reads in the key from user input and
; does the approprate action.  W as up, A as left, S as down, D as right
;******************************************************************************
PlayerMovement PROC
	mov dl, X                          ; moves the variable X into dl (horizontal)
	mov dh, Y                          ; moves the variable Y into dh (vertical)
	call Gotoxy                        ; calls the Gotoxy procedure
			
	mov eax, white + (black * 16)      ; moves white (background black) to eax
	call SetTextColor                  ; outputs color to text
	mov al, 2                          ; moves 2 the the al register. (ascii value for smiley face)
	call writechar                     ; writes the character in al to the screen
	
	Start:
	  call ReadChar                    ; reads the user inputed character
	  cmp eax, 77h                     ; compairs eax with 77h (ascii W)
	  je Up                            ; Jumps if equal to Up
	  cmp eax, 73h                     ; compairs eax with 73h (ascii S)
	  je Down                          ; Jumps if equal to Down
	  cmp eax, 64h                     ; compairs eax with 64h (ascii A)
	  je Left                          ; Jumps if equal to Left
	  cmp eax, 61h                     ; compairs eax with 61h (ascii D)
	  je Right                         ; Jumps if equal to Right
	  cmp eax, 71h                     ; compairs eax with 71h (ascii Q)
	  je Done                          ; Jumps if equal to Done (exits the program)
	  cmp eax, 65h                     ; compairs eax with 65h (ascii E)
	  je SuperManMode                  ; Jumps if equal to SuperManMode
	  jmp None                         ; Jumps to None
	
	Up:
	  mov CanMove, 0                   ; moves 0 into CanMove (FailSafe)
	  call Gotoxy                      ; calls the Gotoxy procedure
	  cmp SuperMan, 1                  ; compairs the variable SuperMan to 1
	  je SuperManUp                    ; jumps to SuperManUp if equal
	  
	  call WorldRules                  ; calls the WorldRules procedure
	  cmp CanMove, 1                   ; compairs the variable Can Move with 1
	  jne None                         ; jumps to none if not equal
	  jmp NormalUp                     ; jumps to NormalUp if CanMove it equal to 1
	  
	  SuperManUp:
	    sub esi, 40                    ; subtracts 40 from ESI (Brings it up one row)
	  NormalUp:	    
	    mov al, 32                     ; moves 32 into AL (ascii for blank space)
	    call writechar                 ; calls the write char procedure
	    dec Y                          ; decrements Y
	    mov dh, Y                      ; moves Y into dl (new vertical value)
	    call Gotoxy                    ; calls gotoxy procedure
	    jmp Next                       ; jumps to next
	  
	Down:
	  mov CanMove, 0                   ; moves 0 into CanMove (FailSafe)
	  call Gotoxy                      ; calls the Gotoxy procedure
	  cmp SuperMan, 1                  ; compairs the variable SuperMan to 1
	  je SuperManDown                  ; jumps if equal to SuperManDown
	  
	  call WorldRules                  ; calls the WorldRules procedure
	  cmp CanMove, 1                   ; compairs the variable CanMove to 1
	  jne None                         ; if not equal, jumps to None
	  jmp NormalDown                   ; jumps to NormalDown
	  
	  SuperManDown:
	    add esi, 40                    ; adds 40 to esi
	  NormalDown:	    
	    mov al, 32                     ; moves 32 into al
	    call writechar                 ; calls the writechar procedure
	    inc Y                          ; incriments Y
	    mov dh, Y                      ; moves Y into dh
	    call Gotoxy                    ; calls the gotoxy procedure
	    jmp Next                       ; jumps to Next
	
	Left:
	  mov CanMove, 0                   ; moves 0 into CanMove (FailSafe)
	  call Gotoxy                      ; calls the Gotoxy procedure
	  cmp SuperMan, 1                  ; compairs the variable SuperMan with 1
	  je SuperManLeft                  ; jumps if equal to SuperManLeft
	  
	  call WorldRules                  ; calls the world rules procedure
	  cmp CanMove, 1                   ; comairs 1 with CanMove
	  jne None                         ; jumps to None if not equal
	  jmp NormalLeft                   ; jumps to NormalLeft
	  
	  SuperManLeft:
	    add esi, 1                     ; adds 32 to al
	  NormalLeft:	    
	    mov al, 32                     ; moves 32 into al
	    call writechar                 ; calls the writechar procedure
	    inc X                          ; incriment X
	    mov dl, X                      ; moves the variable X into dl
	    call Gotoxy                    ; calls the Gotoxy procedure
	    jmp Next                       ; jumps to Next
	    
	Right:
	  mov CanMove, 0                       ; moves 0 into CanMove (FailSafe)
	  call Gotoxy                          ; calls the Gotoxy procedure
	  cmp SuperMan, 1                      ; compairs 1 with the variable SuperMan
	  je SuperManRight                     ; jumps if equal to SuperManRight
	  
	  call WorldRules                      ; calls the procedure WorldRules
	  cmp CanMove, 1                       ; compairs 1 to the variable CanMove
	  jne None                             ; jumps if not equal to None
	  jmp NormalRight                      ; jumps to NormalRight
	  
	  SuperManRight:
	    sub esi, 1                         ; subtracts 1 from esi	    
	  NormalRight:
	    mov al, 32                         ; moves 32 into al
	    call writechar                     ; calls the writechar procedure
	    dec X                              ; decriments X
	    mov dl, X                          ; moves X into dl
	    call Gotoxy                        ; calls the gotoxy procedure
	    jmp Next                           ; jumps to next
	    
	Next:  	  
	  mov al, 2                            ; moves 2 into al
	  call writechar                       ; calls the writechar procedure
	  cmp BYTE PTR [esi], 2                ; compairs 2 to what esi points to.
	  jne Start                            ; jumps to start
	  jmp Done                             ; jumps to done
	
	None:
	  jmp Start                            ; jumps to start
	  
	SuperManMode:
      push edx                             ; pushes edx to the stack
	  mov dl, 0                            ; moves 0 into dl (horizontal)
	  mov dh, 24                           ; moves 24 into dh (vertical)
	  call Gotoxy	                       ; calls Gotoxy to move into final position
	  
	  cmp SuperMan, 1                      ; compairs SuperMan with 1
	  je TurnOff                           ; If Superman is equal to 1, the program jumps to turn SuperManMode off
	  mov SuperMan, 1                      ; Otherwise it moves 1 into SuperMan, turning it on.
	  
	  mov edx, OFFSET Blank                ; moves the string Black into edx.  This string clears the command bar at the bottom of the screen
	  call WriteString                     ; writes the string to the screen
	  mov dl, 0                            ; moves 0 into dl (horizontal)
	  mov dh, 24                           ; moves 24 into dh (vertical)
	  call Gotoxy                          ; calls the Gotoxy procedure	  
	  mov edx, OFFSET SuperManOn           ; moves the string SuperManOn into edx.  This string displays "SuperMan mode engaged".
	  call WriteString                     ; writes the string to the screen
	  pop edx                              ; popes edx from the stack
	  jmp None                             ; jumps to None
	  
	TurnOff:
	  mov SuperMan, 0                      ; moves 0 into the variable SuperMan
	  mov edx, OFFSET SuperManOff          ; moves SuperManOff into edx
	  call WriteString                     ; calls the WriteString procedure
	  pop edx                              ; pops edx
	  jmp None                             ; jumps to none
	  
	Done:
	  ret  		                           ; returns to the previous procedure                      
PlayerMovement ENDP

;******************************************************************************
; Rules Of The World Procedure
; This procedure handles the rules that make up this virtual world.  IE rules
; of "physics" and the ability to enter superman mode.
;******************************************************************************
WorldRules PROC
   cmp eax, 77h                             ; compairs the value in eax to 77h
   je Up                                    ; jumps if equal to Up
   cmp eax, 73h                             ; compairs the value in eax to 73h
   je Down                                  ; jumps if equal to Down
   cmp eax, 64h                             ; compairs the value in eax to 64h
   je Left                                  ; jumps if equal to Left
   cmp eax, 61h                             ; compairs the value in eax to 61h
   je Right                                 ; jumps if equal to Right
   
   Up:
      cmp BYTE PTR [esi-40], 1              ; compairs what esi points to minus 40 to 1
      je Done                               ; jumps to Done if equal
      sub esi, 40                           ; subtracts 40 from esi
      mov CanMove, 1                        ; moves 1 into the variable CanMove
      ret                                   ; returns to the previous procedure
   Down:
	  cmp BYTE PTR [esi+40], 1              ; compairs what esi points to plus 40 to 1
	  je Done                               ; jumps to Done if equal
	  add esi, 40                           ; adds 40 to esi
	  mov CanMove, 1                        ; moves one into the variable CanMove
      ret                                   ; returns to the previous procedure
   Left:
      cmp BYTE PTR [esi+1], 1               ; compairs what esi points to plus 1 to 1
      je Done                               ; jumps to Done if equal
      add esi, 1                            ; adds 1 to esi
      mov CanMove, 1                        ; moves 1 into the variable CanMove
      ret                                   ; returns to the previous procedure
   Right:
      cmp BYTE PTR [esi-1], 1               ; compairs what esi points to minus 1 to 1
      je Done                               ; jumps to Done if equal
      sub esi, 1                            ; subtracts 1 from esi
      mov CanMove, 1                        ; moves 1 into the variable CanMove
      ret                                   ; returns to the previous procedure
      
   Done:
	 mov CanMove, 0                         ; moves 0 to the variable CanMove
     ret                                    ; returns to the previous procedure
WorldRules ENDP

;******************************************************************************
; End Program
;******************************************************************************
END main
