TITLE ASM1 (SIMPLIFIED .EXE)
.MODEL SMALL
;------------------------------------------------------------------------------------------------------
.DATA
;--------------------DESIGN--------------------------------
	DES DB "              .   *        .       . .         .        |      *  o     .    '       "
	DES1 DB 0AH, 0DH, "    *      -0-  *  o     .    '       *      .        o    o       ' *  o   "
	DES2 DB 0AH, 0DH, "   .     .  *       - )-  *              -O- .  *            o       ' *  o" , "$"
	DES3 DB 0AH, 0DH, "    .      *       o       .       *  *            o       ' *  o "
	
	MESSAGE1 DB  0AH,0DH,"                 ____ __        __ ___  _____  ____   _   _  "
	MESSAGE2 DB 0AH,0DH, "                |___ \\ \      / /|_ _||_   _||___ \ | | | | "
	MESSAGE3 DB 0AH,0DH, "                / ___/ \ \ /\ / /  | |   | |      | || |_| | "
	MESSAGE4 DB 0AH,0DH, "               | (___   \ V  V /   | |   | |   ___| ||  _  | "
	MESSAGE5 DB 0AH,0DH, "                \____|   \_/\_/   |___|  |_|  |____/ |_| |_| ", "$" 

	MESSAGE6 DB 0AH,0DH, "                               __  __  _____    "
	MESSAGE7 DB 0AH,0DH, "                              |  \/  ||____ |                               "
	MESSAGE8 DB 0AH,0DH, "                              | |\/| |  |_  |                               "
	MESSAGE9 DB 0AH,0DH, "                              | |  | | ___| |                               "
	MESSAGE10 DB 0AH,0DH,"                              |_|  |_||_____|                               ", "$" 

	MESSAGE11 DB 0AH,0DH, "                            _   _   ___   _____  "
	MESSAGE12 DB 0AH,0DH, "                           | | / | / _ \ |_   _|                         "
	MESSAGE13 DB 0AH,0DH, "                           | |/  || | | |  | |                           "
	MESSAGE14 DB 0AH,0DH, "                           |  /| || |_| |  | |                           "
	MESSAGE15 DB 0AH,0DH, "                           |_/ |_| \___/   |_|                           ", "$"

	DES4 DB ".  *            o       ' *  o     .    '       *      .        o"
	DES5 DB 0AH, 0DH, ". .  *            o       ' *  o     .    '       *      .        o"	
	DES6 DB 0AH, 0DH, "   .                        *" , "$"	
	DES7 DB 0AH, 0DH, " X	               - ) -       *  .  *            o       '", "$"	

	PLAY DB 0AH,0DH, 0AH,0DH, "           How to play: 'Backspace' || Play: 'Enter' || Quit: 'Esc'", "$"
	
	HOWTOPLAY1 DB 0AH, 0DH, "                    This is a single player platformer game." 
	HOWTOPLAY4 DB 0AH, 0DH, "          Save yourself as you jump from different kinds of obstacles." 
	HOWTOPLAY2 DB 0AH, 0DH, "                  Failure to do so will kill you. But watch out!"  
	HOWTOPLAY3 DB 0AH, 0DH, "                  The keys might be switched from time to time.", "$"
	
	UPKEY1 DB 0AH, 0DH, "        ."
	UPKEY2 DB 0AH, 0DH, "      .:;:."
	UPKEY3 DB 0AH, 0DH, "    .:;;;;;:."
	UPKEY4 DB 0AH, 0DH,"      ;;;;;"
	UPKEY9 DB 0AH, 0DH,"      : ;;;                                  UP KEY"
	UPKEY10 DB 0AH, 0DH,"        ;:;                          TO INITIALLY CONTROL"
	UPKEY11 DB 0AH, 0DH,"      . :.;                             THE TOP ELEMENT"
	UPKEY12 DB 0AH, 0DH,"        . :"
	UPKEY14 DB 0AH, 0DH,"         .", "$"
	
	DOWNKEY1 DB 0AH, 0DH, "                                                                      ."
	DOWNKEY3 DB 0AH, 0DH, "                                                                    .;"
	DOWNKEY4 DB 0AH, 0DH, "                  DOWN KEY                                           ;;."
	DOWNKEY9 DB 0AH, 0DH, "            TO INITIALLY CONTROL                                   ;;;;;"
	DOWNKEY10 DB 0AH, 0DH, "             THE BOTTOM ELEMENT                                    ;;;;;"
	DOWNKEY11 DB 0AH, 0DH, "                                                                   ;;;;;"
	DOWNKEY12 DB 0AH, 0DH, "                                                                 ..;;;;;.."
	DOWNKEY13 DB 0AH, 0DH,"                                                                  ':::::'"
	DOWNKEY14 DB 0AH, 0DH, "                                                                    ':`", "$"
	
	KEY DB 0AH, 0DH, "          Play: 'Enter' || Return to MENU: 'Space' || Quit: 'Esc'", "$"
  
	END1 DB "          ____   ____  ___ ___    ___       ___   __ __    ___  ____"  
	END2 DB 0AH, 0DH, "         /    | /    ||   |   |  /  _]     /   \ |  |  |  /  _]|    \ " 
	END3 DB 0AH, 0DH, "        |   __||  o  || _   _ | /  [_     |     ||  |  | /  [_ |  D  )"
	END4 DB 0AH, 0DH, "        |  |  ||     ||  \_/  ||    _]    |  O  ||  |  ||    _]|    / "
	END5 DB 0AH, 0DH, "        |  |_ ||  _  ||   |   ||   [_     |     ||  :  ||   [_ |    \ "
	END6 DB 0AH, 0DH, "        |     ||  |  ||   |   ||     |    |     | \   / |     ||  .  \ "
	END7 DB 0AH, 0DH, "        |___,_||__|__||___|___||_____|     \___/   \_/  |_____||__|\_|", "$"
		
	LINE DB "--------------------------------------------------------------------------------", "$"	
	MSGCURRENTSCORE DB 0AH, 0DH, "                                CURRENT SCORE", "$"
	MSGHIGHSCORE DB 0AH, 0DH, "                                  HIGH SCORE", "$"
	MSGPLAYAGAIN DB "         Play Again: 'Enter' || Return to MENU' 'Space' || Quit: 'Esc'", "$"
	
	FLAG DB 1 ;INITIALLY 1 FOR TITLE SCREEN, 2 HOW TO PLAY, 3 GAME STATE, 4 GAME OVER
	
	ROW DB 00
    COL DB 00
	
	ROW1 DB 02
	COL1 DB 10

	ROW2 DB 21
	  PATHFILENAME  DB 'record.txt', 00H ;file path for highscore storage
  FILEHANDLE    DW ?               ;filehandle
    COUNTER DW ?  ;string length to be written in file
  OUT_TXT  DW 3 DUP ('$') ;text to be written in file
  OUT_TXT2  DW 3 DUP ('$') ;text to be written in file
  MSG DB 32 DUP('$') 
  
	  ERROR1_STR    DB 'Error in creating file.$'
  ERROR2_STR    DB 'Error writing in file.$'
  ERROR3_STR    DB 'Record not written properly.$'
  ERROR4_STR    DB 'Error in opening file.$'
  ERROR5_STR    DB 'Error reading from file.$'
  ERROR6_STR    DB 'No record read from file.$'
  BEEPCX DW ?
  BEEPBX DB ?
;------------------------------------GAME---------------------------
	PLAYX			DB		?		;player x coordinates
 	PLAYY			DB		?		;player y coordinates
	PLAYXLETTER		DB 		?		;player status

	PLAY2X			DB		?		;player 2 x coordinates
 	PLAY2Y			DB		?		;player 2 y coordinates
	PLAYXLETTER2	DB 		?		;player 2 status

	DRAWERX			DB		?		;surroundings drawer x coordinates
	DRAWERY			DB		?		;surroundings drawer y coordinates

	OBJECTSX		DB		?		;object lower area drawer x coordinates
	OBJECTSY		DB		?		;object lower area drawer y coordinates
	OBJECTSTYPE		DB		?		;object lower area status
	
	OBJECTS2X		DB		?		;object upper area drawer x coordinates
	OBJECTS2Y		DB		?		;object upper area drawer y coordinates
	OBJECTSTYPE2	DB		?		;object upper area status  
	
	SCORE 			DW 		?		;score
	
	SWITCHFLAG 		DB		?		;switch controls
	
	COLLISION		DB		?		;checks if there is collision
	
	STARTSCR		DB		0		;Start screen variable
	ENDSCR 			DB		17H		;END SCREEN  
	
	SCREENFLAG 		DB		? 		;FLAG FOR SCREEN TYPE
	
	NEW_INPUT DB ?
	TEMP		DB		0
	RES  DW 3 DUP ('$')
	HIGHSCORE_WRT    DB 3 DUP('$')
	HS_NUM DW ?   
    TEN DW ?      ; 10 for conversions	 ;hex version of highscore
	
	CHECKER DB 0
	
;--------------------------------------------------------------------------------------
.CODE
MAIN PROC FAR						;Main code
	MOV AX, @data
	MOV DS, AX
		
		DISPLAY_MENU:				;Displays menu
		CALL SHOW_MENU
		
		DISPLAY_LOADING:			;Displays loading
		CALL SHOW_LOADING
		
		DISPLAY_HOWTOPLAY:			;Displays instruction
		CALL SHOW_HOWTOPLAY
		
EXIT:
	CALL TERMINATOR


MAIN ENDP
;--------------------------------------------------------------------------------------
GET_KEY  PROC  NEAR				;Gets for input
    MOV   AH, 01H   
    INT   16H
		
    JZ    __LEAVETHIS			;No input recorded

    MOV   AH, 00H   			;get input  MOV AH, 10H; INT 16H
    INT   16H

	CMP FLAG, 4					;Signifies flag
	JE _JMPGAMESCREEN
	
	CMP AL, 20H
	JE DISPLAY_MENU
	  
	CMP AL, 0DH 					;Enter key for loading screen
	JE DISPLAY_LOADING
      
	CMP AL, 1BH     				;Escape key for exit
	JE EXIT    					

	CMP AL, 08H 					;Backspace key for how to play screen  
	JE DISPLAY_HOWTOPLAY		
	  
	JMP __LEAVETHIS					;No significant key press
	
	_JMPGAMESCREEN:  				;Game screen controls
		CMP SWITCHFLAG, 1			;Checks if switch has been activated
		JE __MODEFLAGONE
			
		CMP AH, 50H					;Controls for players 
		JE __JUMP	
		
		CMP AH, 48H	
		JE __JUMP2
		
		JMP __LEAVETHIS
		
		__EXTENDER_EXT:
		JMP __LEAVETHIS
		
		__MODEFLAGONE:				;Jumps here if switch is activated
		CMP AH, 50H
		JE __JUMP2	
		
		CMP AH, 48H	
		JE __JUMP
		
		JMP __LEAVETHIS
		
		__JUMP:
			  CMP PLAYXLETTER, 'D' 	;disables jump if current jumper is descending
		  JE __LEAVETHIS
		
		  CMP PLAYXLETTER, 'j'		;disables jump if jumper is jumping
		  JE __LEAVETHIS

		MOV PLAYXLETTER, 'j'
		JE __EXTENDER_UP
		JMP __LEAVETHIS

		__JUMP2:
			CMP PLAYXLETTER2, 'D'
			JE __LEAVETHIS
		
			CMP PLAYXLETTER2, 'j'	
			JE __LEAVETHIS


		MOV PLAYXLETTER2, 'j'
		JE __UP2

		__LEAVETHIS:
		  RET
		_EXTENDER_EXIT:
		CALL SHOW_GAMEOVER
GET_KEY  ENDP
;--------------------------------------------------------------------------------------
_MOVTHIS2  PROC NEAR			;Moves character 
	
	CMP PLAYXLETTER2, 'j' 		; Jumps Character
	JE __UP2	
	
	CMP PLAYXLETTER2, 'D' 		; DOWN Character
	JE __DOWN2
	
	JMP __EXT2
	__EXTENDER_UP:
	JMP __UP
	
	__UP2:
	CMP PLAY2Y, 8H				;Upper limit for jump
	JE __DESCEND2				;Descends if upper limit is hit
	MOV DL, PLAY2X 
	MOV DH, PLAY2Y
	CALL _ERASECUR				;Erases previous location
	
	INC		PLAY2Y				;Moves to new location
	
	MOV DL, PLAY2X			 	;Checks collision at new location
	MOV DH, PLAY2Y
	CALL _SET_CURSOR
	CALL _GET_CHAR_AT_CURSOR
	CMP AL, 23H				
	JE _EXTENDER_EXIT 	;GAMEOVER if obstacle is hit

	JMP __EXT2

	__DESCEND2:					;Descends jumper
	MOV PLAYXLETTER2, 44H
	JMP __EXT2

	__DOWN2:
	CMP PLAY2Y, 2H 				;Compares jump limit
	JE __LANDED2 				;Descends if not landed
	
	MOV DL, PLAY2X 				;Erases previous lovation 
	MOV DH, PLAY2Y
	CALL _ERASECUR
	
	DEC	PLAY2Y
	MOV DL, PLAY2X				;GAMEOVER
	MOV DH, PLAY2Y
	CALL _SET_CURSOR
	CALL _GET_CHAR_AT_CURSOR
	CMP AL, 23H				
	JE _EXTENDER_EXTENDER_EXIT 	;HIT OBJECT

	JMP __EXT
	
	__LANDED2:					;check if colision
	MOV PLAYXLETTER2, 17H
	JMP __EXT2
	
	__EXT2:
	ret
_MOVTHIS2 ENDP
;---------------------------------------------------
_MOVTHIS PROC NEAR				;Moves character 
	CMP PLAYXLETTER, 6AH 		; Jumps Character
	JE __UP	
	
	CMP PLAYXLETTER, 44H 		; DOWN Character
	JE __DOWN	
	
	JMP __EXT
		_EXTENDER_EXTENDER_EXIT:
	JMP _EXTENDER_EXIT
	
	__UP: 
	CMP PLAYY, 10H 				;Compares jump limit
	JE __DESCEND 				;Descends if lapas
	MOV DL, PLAYX 
	MOV DH, PLAYY
	CALL _ERASECUR
	
	DEC	PLAYY					;Moves to new location
	
	MOV DL, PLAYX				;Checks for collision
	MOV DH, PLAYY
	CALL _SET_CURSOR
	CALL _GET_CHAR_AT_CURSOR
	CMP AL, 23H
	JE _EXTENDER_EXTENDER_EXIT	;HIT OBJECT
	JMP __EXT
	
	__DESCEND:					;Movement for jumper
	MOV PLAYXLETTER, 'D'
	JMP __EXT
	
	__DOWN:						;Moves jumper down
	CMP PLAYY, 16H				;Descends if it has not hit the ground
	JE __LANDED
	MOV DL, PLAYX 
	MOV DH, PLAYY
	CALL _ERASECUR
	
	INC		PLAYY				; Moves to new location
	MOV DL, PLAYX					;GAMEOVER
	MOV DH, PLAYY
	CALL _SET_CURSOR
	CALL _GET_CHAR_AT_CURSOR
	CMP AL, 23H
	JE _EXTENDER_EXTENDER_EXIT		;HIT OBJECT
	JMP __EXT	
	_EXTENDER_EXTENDER_EXTENDER_EXIT:
	JMP _EXTENDER_EXTENDER_EXIT			
	
	__LANDED:
	MOV PLAYXLETTER, 17H
	JMP __EXT

	__EXT:
	ret
_MOVTHIS ENDP
;----------------------------------------------------
SHOW_LOADING 	PROC 	NEAR			;Calls loading screen
			CALL CLEAR_SCREEN_BLACK
			MOV		DL, 22H
			MOV		DH, 11
			CALL	_SET_CURSOR
			MOV TEMP, 0
			
		ITERATE:
			;set cursor
			MOV		DL, TEMP
			MOV		DH, 12
			CALL	_SET_CURSOR

			;display char from register
			MOV		AL, 0DBH
			MOV		AH, 02H
			MOV		DL, AL
			INT		21H

			CALL	DELAY

			INC		TEMP
			CMP		TEMP, 50H
			JE		GAME_PROPER ;CHANGE THIS TO ACTUAL GAME 
			
		JMP		ITERATE
		
		GAME_PROPER:
		CALL SHOW_GAMEPROPER
	RET
SHOW_LOADING ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN PROC NEAR ;for the title
  MOV AX, 0600H   ;full screen
  MOV BH, 0BH     ;black background (0), cyan foreground (B)
  MOV CX, 0300H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN ENDP
;--------------------------------------------------------------------------------------
_CLEAR_SCREEN PROC	NEAR			;clears screen
	MOV		AX, 0600H 		; scroll up
	MOV		BH, 00H			;color
	MOV 	CX, 0000H
	MOV		DX, 184FH
	INT		10H
	
	MOV		AX, 0600H 		; scroll up
	MOV		BH, 71H			;color
	MOV 	CX, 0101H
	MOV		DX, 174EH
	
	INT		10H
	RET
_CLEAR_SCREEN ENDP
;------------------------------------------------------------------------
CLEAR_SCREEN_BLACK PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 0FH     ;black background (0), black foreground (0)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN_BLACK ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN1 PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8EH     ;black background with blink (8), yellow foreground (E)
  MOV CX, 0000H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN1 ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN2 PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8EH     ;black background with blink (8), yellow foreground (0)
  MOV CX, 1500H   ;upper left row:column (0:0)
  MOV DX, 184FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN2 ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN_UP PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8AH     ;black background with blink (8), green foreground (A)
  MOV CX, 0500H   ;upper left row:column (0:0)
  MOV DX, 1011H   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN_UP ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN_DOWN PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8EH     ;black background with blink(8), yellow foreground (E)
  MOV CX, 0841H   ;upper left row:column (0:0)
  MOV DX, 184EH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN_DOWN ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN_UPPERHALF PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8EH     ;black background with blink(8), yellow foreground (E)
  MOV CX, 0200H   ;upper left row:column (0:0)
  MOV DX, 054FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN_UPPERHALF ENDP
;--------------------------------------------------------------------------------------
CLEAR_SCREEN_LOWERHALF PROC NEAR
  MOV AX, 0600H   ;full screen
  MOV BH, 8AH     ;black background with blink(8), green foreground (A)
  MOV CX, 0600H   ;upper left row:column (0:0)
  MOV DX, 084FH   ;lower right row:column (24:79)
  INT 10H
  
  RET
CLEAR_SCREEN_LOWERHALF ENDP
;--------------------------------------------------------------------------------------
SHOW_MENU	PROC NEAR				;shows menu
		MOV FLAG, 1
		CALL CLEAR_SCREEN1
		CALL GET_KEY
		
		MOV   DL, COL
		MOV   DH, ROW
		CALL _SET_CURSOR
		  
		LEA DX, DES1
		MOV AH, 09
		INT 21H
		
		MOV DL, COL1
		MOV DH, ROW1
		CALL _SET_CURSOR
		
		CALL CLEAR_SCREEN
		LEA DX, MESSAGE1
		MOV AH, 09
		INT 21H

		LEA DX, MESSAGE6
		MOV AH, 09
		INT 21H

		LEA DX, MESSAGE11
		MOV AH, 09
		INT 21H
		
		LEA DX, PLAY
		MOV AH, 09
		INT 21H

		MOV   DH, ROW2
		CALL _SET_CURSOR
		
		CALL CLEAR_SCREEN2
		
		LEA DX, DES4
		MOV AH, 09
		INT 21H
		
		CALL INPUT_LOOP
	RET
SHOW_MENU ENDP
;--------------------------------------------------------------------------------------
SHOW_HOWTOPLAY PROC NEAR				;shows how to play page
		MOV FLAG, 2
		CALL CLEAR_SCREEN_BLACK
		MOV   DL, COL
		MOV   DH, ROW
		CALL _SET_CURSOR
			
		LEA DX, HOWTOPLAY1
		MOV AH, 09
		INT 21H
			
		CALL CLEAR_SCREEN_UP
			
		LEA DX, UPKEY1
		MOV AH, 09
		INT 21H
			
		CALL CLEAR_SCREEN_DOWN
			
		LEA DX, DOWNKEY1
		MOV AH, 09
		INT 21H
			
		LEA DX, KEY
		MOV AH, 09
		INT 21H
			
			CALL INPUT_LOOP
	RET
SHOW_HOWTOPLAY ENDP
;--------------------------------------------------------------------------------------
SHOW_GAMEPROPER PROC NEAR
	MOV FLAG, 4
	MOV		PLAYX, 10 		;Initial Position player 1 x
	MOV		PLAYY, 16H		;Initial Position player 1 y
	
	MOV		PLAY2X, 10 		;Initial Position player 2 x 
	MOV		PLAY2Y, 2H		;Initial Position player 2 y
		
	CALL _CLEAR_SCREEN		;Clears screen
			
	MOV DRAWERX, 0H			;Sets surroundings x 
	MOV DRAWERY, 1H			;Sets surroundings y
	CALL _SURROUNDINGS		;Prints surroundings
			
	MOV DRAWERX, 0H			;Sets surroundings x
	MOV DRAWERY, 17H		;Sets surroundings y 
	CALL _SURROUNDINGS		;Prints surroundings
		
	MOV PLAYXLETTER, 'O'	;Initializes player 1 status
	MOV PLAYXLETTER2, 'O'	;Initializes player 2 status
		
	MOV OBJECTSX, 40H 		;Initializations for obstructions
	MOV OBJECTSY, 16H
	MOV OBJECTSTYPE, 10H 	
		
	MOV OBJECTS2X, 40H 		;Initializations for obstructions second 
	MOV OBJECTS2Y, 2H
	MOV OBJECTSTYPE2, 30H 	
			
	MOV SCORE, 0			;Initializing score			
		
	MOV SWITCHFLAG, 0 
	CALL _DISPLAY
	RET
SHOW_GAMEPROPER ENDP
;------------------------------------------------------------------
_DISPLAY PROC NEAR						; Displays players

	__ITERATE:							; Iterates until game over
	CALL _SCORE_DISPLAY
	;Clears everything and gets input	
	CALL 	GET_KEY
	
	;Set cursor							; Sets player 1 position
	MOV		DL, PLAYX
	MOV		DH, PLAYY
	CALL	_SET_CURSOR
	;Display char from register

	CMP SWITCHFLAG, 0					;Checker if switch boolean triggered
	JE __UNSWITCHED1
	
	MOV		DL, 'W'						
	INT		21H
	JMP __CONT_FIRST
	
	__UNSWITCHED1:
	MOV		DL, 'M'
	INT		21H
	
	__CONT_FIRST:
	MOV		DL, PLAY2X					; Sets player 2 position
	MOV		DH, PLAY2Y
	CALL	_SET_CURSOR
	
	CMP SWITCHFLAG, 0					;Checks if switched or unswitched
	JE __UNSWITCHED2
	
	MOV		DL, 'M'
	INT		21H
	
	JMP __CONT_SECOND
	__UNSWITCHED2:
	MOV		DL, 'W'
	INT		21H
	
	__CONT_SECOND:
	CALL	DELAY
	CALL 	_MOVTHIS
	CALL 	_MOVTHIS2

	CALL 	_OBJECTS

	JMP		__ITERATE
_DISPLAY ENDP
;--------------------------------------------------------------
_SCORE_DISPLAY PROC NEAR	;Displays and checks the score 
	MOV AX,SCORE
	CALL HEX2DEC
	
	MOV DL, 25H			
	MOV DH, 13
	CALL _SET_CURSOR 	
	
	LEA DX, RES
	
	MOV AH, 9
	INT 21H
	RET
_SCORE_DISPLAY ENDP	
;---------------------------------------------------------------
_SURROUNDINGS	PROC	NEAR			;Sets surroundings of game
	
	__SURROUNDINGS_ITERATE: 			;sets cursor
	MOV		DL, DRAWERX
	MOV		DH, DRAWERY
	CALL	_SET_CURSOR

	;Display char from register
	MOV		DL, 2BH 					;specific character to be diplayed
	INT		21H
	INC 	DRAWERX		
	
	MOV AH, 00			
	MOV AL, DRAWERX
	CMP AL, 4FH
	JE	__SURROUNDINGS_EXIT
	JMP		__SURROUNDINGS_ITERATE
	
	__SURROUNDINGS_EXIT:
	MOV		DL, PLAYX
	MOV		DH, PLAYY		
_SURROUNDINGS 	ENDP
;------------------------------------------------------------------------
_GET_CHAR_AT_CURSOR PROC	NEAR	;Gets character at cursor
			MOV		AH, 08H
			MOV		BH, 00
			INT		10H
			RET
_GET_CHAR_AT_CURSOR ENDP
;------------------------------------------------------------------
_ERASECUR PROC	NEAR				;Erases character at cursor
	CMP DL, 50H
	JAE __EXIT_ERASECUR
	CMP DL, 0H
	JB __EXIT_ERASECUR
	
	CALL	_SET_CURSOR

	;display char from register
	MOV		DL, 20H
	INT		21H
	
	__EXIT_ERASECUR:
	RET
_ERASECUR ENDP
;--------------------------------------------------------------------
_OBJECTS PROC NEAR				; move objects
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY
	CALL _ERASEOBJ				;erase current objects
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y
	CALL _ERASEOBJ2				;erase current objects
	
	CMP OBJECTSX, 1
	JE __RESET_OBJECTSX
	__AFTER_RESET1:
	
	CALL _OBJECTS_MOVE			

	CMP OBJECTS2X, 1
	JE __EXTENDER_RESET_OBJECTS2X
	
	__AFTER_RESET2:
	CALL _OBJECTS_MOVE2
	
	JMP __OBJECTS_EXT
		
		__RESET_OBJECTSX:			;Resets position of objects
		MOV AH, 2CH                 ;Get the current system time
		INT 21H  
		
		CMP DL, 10H					;Sets obstacles based on time
		JBE	__ZERO
		
		CMP DL, 14H
		JBE	__ONE
		
		CMP DL, 1EH
		JBE	__TWO
		
		CMP DL, 28H
		JBE	__THREE
				
		CMP DL, 32H
		JBE	__FOUR
		
		CMP DL, 3CH
		JBE	__FIVE
		
		CMP DL, 46H
		JBE __SIX
		
		CMP DL, 50H
		JMP	__SEVEN
		
		__ZERO:
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '0'				;print a number
		JMP __random_found
		__EXTENDER_RESET_OBJECTS2X:
		JMP __RESET_OBJECTS2X
		
		__ONE:
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '1'				;print a number
		JMP __random_found

		__TWO: 
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '2'				;print a number
		JMP __random_found
		
		__THREE:
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '3'				;set sign of obstacle
		JMP __random_found

		__FOUR:
		MOV OBJECTSX, 55H		;reset back at the far end of the  screen
		MOV DL, '4'				;set sign of obstacle
		JMP __random_found

		__FIVE:
		MOV OBJECTSX, 60H		;reset back at the far end of the  screen
		MOV DL, '5'				;set sign of obstacle
		JMP __random_found

		__SIX:
		MOV OBJECTSX, 70H		;reset back at the far end of the  screen
		MOV DL, '6'				;set sign of obstacle
		JMP __random_found

		__SEVEN:
		MOV OBJECTSX, 54H		;reset back at the far end of the  screen
		MOV DL, '7'				;set sign of obstacle
		JMP __random_found

		__EIGHT:
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '8'				;set sign of obstacle
		JMP __random_found

		__NINE:
		MOV OBJECTSX, 50H		;reset back at the far end of the  screen
		MOV DL, '9'				;set sign of obstacle
		
		__random_found:
		INC SCORE				;Score is incremented if object is evaded
		MOV OBJECTSTYPE, DL	 	
		MOV DL, 20H				
		MOV DH, 10H
		CALL _SET_CURSOR 		
		MOV DL, OBJECTSTYPE
		
		MOV AH, 2H	
		INT 21H
		
		CALL _CHECKSCORE		;Checks score
		
		JMP __AFTER_RESET1 
		
		__RESET_OBJECTS2X:			
		MOV AH, 2CH                   ; get the current system time as randomizer
		INT 21H  
		
		CMP DL, 10H					;sets different obstacles based on time 
		JE	__ZERO2
		
		CMP DL, 14H
		JBE	__ONE2
		
		CMP DL, 1EH
		JBE	__TWO2
		
		CMP DL, 28H
		JBE	__THREE2
				
		CMP DL, 32H
		JBE	__FOUR2
		
		CMP DL, 3CH
		JBE	__FIVE2
		
		CMP DL, 46H
		JBE __SIX2
		
		CMP DL, 50H
		JMP	__SEVEN2
		
		__ZERO2:
		MOV OBJECTS2X, 50H		;reset back at the far end of the  screen
		MOV DL, '0'				;set sign of obstacle
		JMP __random_found2
		
		__ONE2:
		MOV OBJECTS2X, 50H		;reset back at the far end of the  screen
		MOV DL, '1'				;set sign of obstacle
		JMP __random_found2
		
		__TWO2:
		MOV OBJECTS2X, 50H		;reset back at the far end of the  screen
		MOV DL, '2'				;set sign of obstacle
		JMP __random_found2
		
		__THREE2:
		MOV OBJECTS2X, 50H		;reset back at the far end of the  screen
		MOV DL, '3'				;set sign of obstacle
		JMP __random_found2
		
		__FOUR2:
		MOV OBJECTS2X, 55H		;reset back at the far end of the  screen
		MOV DL, '4'				;set sign of obstacle
		JMP __random_found2
		
		__FIVE2:
		MOV OBJECTS2X, 60H		;reset back at the far end of the  screen
		MOV DL, '5'				;set sign of obstacle
		JMP __random_found2
		
		__SIX2:
		MOV OBJECTS2X, 60H		;reset back at the far end of the  screen
		MOV DL, '6'				;set sign of obstacle
		JMP __random_found2
		
		__SEVEN2:
		MOV OBJECTS2X, 56H		;reset back at the far end of the  screen
		MOV DL, '7'				;set sign of obstacle
		JMP __random_found2
		
		__random_found2:
		INC SCORE
		MOV OBJECTSTYPE2, DL 
		MOV DL, 20H
		MOV DH, 8H
		CALL _SET_CURSOR 	
		MOV DL, OBJECTSTYPE2
		
		MOV AH, 2H
		INT 21H
		
		CALL _CHECKSCORE
		
		JMP __AFTER_RESET2
		
	__OBJECTS_EXT:
	ret
_OBJECTS ENDP
;--------------------------------------------------
BEEP_1       		PROC   	NEAR        
					MOV		AL, 182
					OUT 	43H, AL
					MOV 	AX, 4304
					OUT		42H, AL
					MOV 	AL, AH
					OUT 	42H, AL
					IN 		AL, 61H
					OR 		AL, 00000011B
					OUT 	61H, AL
					MOV 	BEEPBX, 25
			.PAUSEA:
					MOV		BEEPCX, 2900
			.PAUSEB:
					DEC 	BEEPCX
					JNE 	.PAUSEB
					DEC 	BEEPBX
					JNE 	.PAUSEA
					IN 		AL, 61H
					AND 	AL, 11111100B
					OUT 	61H, AL
					RET
BEEP_1       		ENDP
;---------------------------------------------------------------------
_CHECKSCORE PROC NEAR				;Checks score for switching controls
	MOV DX, 0
	MOV AX, SCORE					
	MOV BX, 10
	DIV BX
	
	CMP DX, 0
	JE __SWITCH 
	RET 
	
	__SWITCH: 
	CALL BEEP_1
	CMP SWITCHFLAG, 0
	JE __FLAGONE
	MOV SWITCHFLAG, 0
	RET

	__FLAGONE:
	MOV SWITCHFLAG, 1
	RET
_CHECKSCORE ENDP
;---------------------------------------------------------------------
_ERASEOBJ PROC	NEAR					;Erases specific obstacle to be erased for jumper 1
	CMP OBJECTSTYPE, "0"				;Identifies which obstacle
	JE	__ZERO_ERASE
	
	CMP OBJECTSTYPE, "1"
	JE	__ONE_ERASE
	
	CMP OBJECTSTYPE, "2"
	JE	__TWO_ERASE
	
	CMP OBJECTSTYPE, "3"
	JE	__THREE_ERASE
			
	CMP OBJECTSTYPE, "4"
	JE	__EXTENDER_FOUR_ERASE
	
	CMP OBJECTSTYPE, "5"
	JE	__EXTENDER_FIVE_ERASE
	
	CMP OBJECTSTYPE, "6"
	JE __EXTENDER_SIX_ERASE
	
	CMP OBJECTSTYPE, "7"
	JMP	__EXTENDER_SEVEN_ERASE

	__ZERO_ERASE:						;Specifies coordinates to erase
	CALL _ERASECUR
	JMP  __CONT_ERASE
	
	__ONE_ERASE:						;Erase first object
	CALL _ERASECUR
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				
	CALL _ERASECUR
	
	JMP  __CONT_ERASE
	__EXTENDER_FOUR_ERASE:
	
	JMP __FOUR_ERASE
	__EXTENDER_FIVE_ERASE:
	
	JMP __FIVE_ERASE
	__EXTENDER_SIX_ERASE:
	
	JMP __SIX_ERASE
	__EXTENDER_SEVEN_ERASE:
	
	JMP __SEVEN_ERASE
	
	__TWO_ERASE:							;Erase second object
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				 
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	;MOV AX, 0
	MOV AL, OBJECTSY 
	SUB AL, 2
	MOV DH, AL
	CALL _ERASECUR
	
	JMP  __CONT_ERASE
	
	__THREE_ERASE:							;Erase third object
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				 
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	MOV AL, OBJECTSY 
	SUB AL, 2
	MOV DH, AL
	CALL _ERASECUR

	MOV DL, OBJECTSX
	MOV AL, OBJECTSY 
	SUB AL, 3
	MOV DH, AL
	CALL _ERASECUR
	
	JMP  __CONT_ERASE
	
	__FOUR_ERASE:							;Erase fourth object
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	CALL _ERASECUR
	
	MOV DH, OBJECTSY 	
	MOV DL, OBJECTSX
	DEC DL  				
	CALL _ERASECUR
	
	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 4
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 5
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 6
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 7
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 8
	MOV DL, AL
	CALL _ERASECUR

	JMP  __CONT_ERASE
	
	__FIVE_ERASE:							;Erase fifth object
	CALL _ERASECUR

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY		
	CALL _ERASECUR

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  				
	CALL _ERASECUR
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 8
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 9
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 10
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 11
	MOV DL, AL
	CALL _ERASECUR

	JMP  __CONT_ERASE
	
	__SIX_ERASE:							;Erase sixth object
	CALL _ERASECUR

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY		
	CALL _ERASECUR

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  			
	CALL _ERASECUR
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 12
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 13
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 14
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 15
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 17H
	MOV DL, AL
	CALL _ERASECUR

	JMP  __CONT_ERASE
	
	__SEVEN_ERASE:							;Erase seventh object
	CALL _ERASECUR
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	CALL _ERASECUR
	
	MOV DH, OBJECTSY 	
	MOV DL, OBJECTSX
	DEC DL  				
	CALL _ERASECUR
	
	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTSY	
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 4
	MOV DL, AL
	CALL _ERASECUR

	JMP __CONT_ERASE
	
	__CONT_ERASE:
	RET
_ERASEOBJ ENDP
;------------------------------------------------------------------------
_ERASEOBJ2 PROC	NEAR						;Erases specific obstacle to be erased for jumper 1
	CMP OBJECTSTYPE2, "0"					;Identifies object to be erased
	JE	__ZERO_ERASE2
 	
	CMP OBJECTSTYPE2, "1"
	JE	__ONE_ERASE2
	
	CMP OBJECTSTYPE2, "2"
	JE	__TWO_ERASE2
	
	CMP OBJECTSTYPE2, "3"
	JE	__EXTENDER_THREE_ERASE2
	
	CMP OBJECTSTYPE2, "4"
	JE	__EXTENDER_FOUR_ERASE2
	
	CMP OBJECTSTYPE2, "5"
	JE	__EXTENDER_FIVE_ERASE2
	
	CMP OBJECTSTYPE2, "6"
	JE	__EXTENDER_SIX_ERASE2
	
	CMP OBJECTSTYPE2, "7"
	JMP	__EXTENDER_SEVEN_ERASE2

	
	
	__ZERO_ERASE2:							
	CALL _ERASECUR
	JMP  __CONT_ERASE2
	
	__ONE_ERASE2:
	CALL _ERASECUR
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				
	CALL _ERASECUR
	JMP  __CONT_ERASE2
	
	__TWO_ERASE2:
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL, 2
	MOV DH, AL
	CALL _ERASECUR
	
	JMP  __CONT_ERASE
	__EXTENDER_THREE_ERASE2:
	JMP __THREE_ERASE2
	
	__EXTENDER_FOUR_ERASE2:
	JMP __FOUR_ERASE2
	
	__EXTENDER_FIVE_ERASE2:
	JMP __FIVE_ERASE2

	
	__EXTENDER_SIX_ERASE2:
	JMP __SIX_ERASE2
	
	__EXTENDER_SEVEN_ERASE2:
	JMP __SEVEN_ERASE2

		
	__THREE_ERASE2:
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL, 2
	MOV DH, AL
	CALL _ERASECUR

	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL, 3
	MOV DH, AL
	CALL _ERASECUR
	
	JMP  __CONT_ERASE2
	
	__FOUR_ERASE2:	
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y 	
	MOV DL, OBJECTS2X
	DEC DL  			
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 4
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 5
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X
	SUB AL, 6
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 7
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 8
	MOV DL, AL
	CALL _ERASECUR
	JMP  __CONT_ERASE2
	
	__FIVE_ERASE2:
	CALL _ERASECUR

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y		
	CALL _ERASECUR

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  				
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 8
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 9
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 10
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 11
	MOV DL, AL
	CALL _ERASECUR

	JMP  __CONT_ERASE2
	
	__SIX_ERASE2:
	CALL _ERASECUR

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y		
	CALL _ERASECUR

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  				;SECOND OBJECT 
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 12
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 13
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 14
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 15
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 17H
	MOV DL, AL
	CALL _ERASECUR

	__SEVEN_ERASE2:	
	CALL _ERASECUR
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y 	
	MOV DL, OBJECTS2X
	DEC DL  				;SECOND OBJECT 
	CALL _ERASECUR
	
	MOV DH, OBJECTS2Y	
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y	
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _ERASECUR

	MOV DH, OBJECTS2Y	
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 4
	MOV DL, AL
	CALL _ERASECUR

	JMP __CONT_ERASE2
	
	__CONT_ERASE2:
	RET
_ERASEOBJ2 ENDP	
;-------------------------------------------------------------------------------
_OBJECTS_MOVE PROC NEAR
	CMP OBJECTSTYPE, 30H
	JE	__ZERO_MOVE
	
	CMP OBJECTSTYPE, 31H
	JE	__ONE_MOVE
	
	CMP OBJECTSTYPE, 32H
	JE	__TWO_MOVE
	
	CMP OBJECTSTYPE, 33H
	JE	__EXTENDER_THREE_MOVE
			
	CMP OBJECTSTYPE, 34H
	JE	__EXTENDER_FOUR_MOVE
	
	CMP OBJECTSTYPE, 35H
	JE	__EXTENDER_FIVE_MOVE
	
	CMP OBJECTSTYPE, 36H
	JE __EXTENDER_SIX_MOVE
	
	CMP OBJECTSTYPE, 37H
	JMP	__EXTENDER_SEVEN_MOVE

	__ZERO_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY
	CALL _PRINT_OBJECT
	JMP  __CONT_MOV
	
	;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	__EXTENDER_THREE_MOVE:
	JMP __THREE_MOVE
	__EXTENDER_FOUR_MOVE:
	JMP __FOUR_MOVE
	__EXTENDER_FIVE_MOVE:
	JMP __FIVE_MOVE
	__EXTENDER_SIX_MOVE:
	JMP __SIX_MOVE
	__EXTENDER_SEVEN_MOVE:
	JMP __SEVEN_MOVE
	
	__ONE_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV
	
	__TWO_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV AL, OBJECTSY 
	SUB AL, 2
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV
	
	__THREE_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DH  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV AL, OBJECTSY 
	SUB AL, 2
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTSX
	MOV AL, OBJECTSY 
	SUB AL, 3
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV
	
	__FOUR_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	
	CALL _PRINT_OBJECT
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 4
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 5
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 6
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 7
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 8
	MOV DL, AL
	CALL _PRINT_OBJECT
	JMP  __CONT_MOV
	
	__FIVE_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY		
	CALL _PRINT_OBJECT

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 8
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 9
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 10
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 11
	MOV DL, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV
	
	__SIX_MOVE:

	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY		
	CALL _PRINT_OBJECT

	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 12
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 13
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 14
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 15
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 17H
	MOV DL, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV
	
	__SEVEN_MOVE:
	DEC OBJECTSX
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY	
	
	CALL _PRINT_OBJECT
	MOV DL, OBJECTSX
	MOV DH, OBJECTSY 	
	DEC DL  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTSY
	MOV AX, 0
	MOV AL, OBJECTSX 
	SUB AL, 4
	MOV DL, AL
	CALL _PRINT_OBJECT

	JMP __CONT_MOV
	__CONT_MOV:
	RET
	
	__EXIT2:
		CALL SHOW_GAMEOVER
	RET
_OBJECTS_MOVE ENDP
;-----------------------------------------------------------------------------------
_OBJECTS_MOVE2 PROC NEAR
	CMP OBJECTSTYPE2, 30H
	JE	__ZERO_MOVE2
	
	CMP OBJECTSTYPE2, 31H
	JE	__ONE_MOVE2
	
	CMP OBJECTSTYPE2, 32H
	JE	__TWO_MOVE2
	
	CMP OBJECTSTYPE2, 33H
	JE	__EXTENDER_THREE_MOVE2
	
	CMP OBJECTSTYPE2, 34H
	JE	__EXTENDER_FOUR_MOVE2
	
	CMP OBJECTSTYPE2, 35H
	JE	__EXTENDER_FIVE_MOVE2
	
	CMP OBJECTSTYPE2, 36H
	JE	__EXTENDER_SIX_MOVE2
	
	CMP OBJECTSTYPE2, 37H
	JMP	__EXTENDER_SEVEN_MOVE2
		
	__ZERO_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y
	CALL _PRINT_OBJECT
	JMP  __CONT_MOV2
	__EXTENDER_FIVE_MOVE2:
	JMP __FIVE_MOVE2
	
	__ONE_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV2
	__EXTENDER_FOUR_MOVE2:
	JMP __FOUR_MOVE2
	
	__EXTENDER_THREE_MOVE2:
	JMP __THREE_MOVE2
	
	__EXTENDER_SIX_MOVE2:
	JMP __SIX_MOVE2
	
	__EXTENDER_SEVEN_MOVE2:
	JMP __SEVEN_MOVE2

	
	__TWO_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL,2
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV2
	
	__THREE_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	INC DH  				
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL, 2
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	MOV DL, OBJECTS2X
	MOV AL, OBJECTS2Y 
	ADD AL, 3
	MOV DH, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV2

	
	__FOUR_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	
	CALL _PRINT_OBJECT
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  				;SECOND OBJECT 
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 4
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 5
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 6
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 7
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 8
	MOV DL, AL
	CALL _PRINT_OBJECT
	JMP  __CONT_MOV2
	
	__FIVE_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y		
	CALL _PRINT_OBJECT

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  			 	
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 8
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 9
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 10
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 11
	MOV DL, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV2
	
	__SIX_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y		
	CALL _PRINT_OBJECT

	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  				
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 12
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 13
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 14
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 15
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 17H
	MOV DL, AL
	CALL _PRINT_OBJECT
	
	JMP  __CONT_MOV2
	
	__SEVEN_MOVE2:
	DEC OBJECTS2X
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y	
	
	CALL _PRINT_OBJECT
	MOV DL, OBJECTS2X
	MOV DH, OBJECTS2Y 	
	DEC DL  				
	CALL _PRINT_OBJECT
	
	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 2
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AX, 0
	MOV AL, OBJECTS2X 
	SUB AL, 3
	MOV DL, AL
	CALL _PRINT_OBJECT

	MOV DH, OBJECTS2Y
	MOV AL, OBJECTS2X 
	SUB AL, 4
	MOV DL, AL
	CALL _PRINT_OBJECT

	JMP __CONT_MOV
	
	__CONT_MOV2:
	ret
	
	__EXIT3:
		CALL SHOW_GAMEOVER
	ret
	
_OBJECTS_MOVE2 ENDP	
;-----------------------------------------------------------------------------
	_PRINT_OBJECT PROC NEAR					;Prints a specific object
	CMP DL, 50H								;Checker if it goes beyond the frames
	JAE __EXIT_PRINT_OBJECT

	CMP DL, 0H
	JB __EXIT_PRINT_OBJECT
		
	CALL	_SET_CURSOR
	
	CALL _GET_CHAR_AT_CURSOR
	CMP AL, 20H
	JNE __EXIT3 ;HIT OBJECT
	
	CALL	_SET_CURSOR
	
	MOV		DL, 23H
	INT		21H
	
	__EXIT_PRINT_OBJECT:
	ret
_PRINT_OBJECT ENDP
;-----------------------------
CREATE_FILE PROC
  ;create file
  MOV AH, 3CH           ;request create file
  MOV CX, 00            ;normal attribute
  LEA DX, PATHFILENAME  ;load path and file name
  INT 21H
  JC DISPLAY_ERROR1     ;1-error carry flag
  MOV FILEHANDLE, AX
  RET
CREATE_FILE ENDP
;----------------------------
WRITE_TO_FILE PROC
   
  ;write file
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, COUNTER            ;record length
  LEA DX, OUT_TXT    ;address of output area
  INT 21H
  JC DISPLAY_ERROR2     ;cf = 1 means error in writing
  CMP AX, COUNTER         ;after writing, set AX to size of chars nga na write
  JNE DISPLAY_ERROR3
  RET
WRITE_TO_FILE ENDP 

;____________________________________________________________________________________________________________________________________

CLOSE_FILEHANDLE PROC 
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H
  RET
CLOSE_FILEHANDLE ENDP

;____________________________________________________________________________________________________________________________________

OPEN_FILE PROC
  ;open file
  MOV AH, 3DH           ;requst open file
  MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
  INT 21H
  JC DISPLAY_ERROR4
  MOV FILEHANDLE, AX
  RET
OPEN_FILE ENDP
;-------------------------------------------------------------------------------
READ_FILE PROC
;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX,2000           ;record length
  INT 21H
  JC DISPLAY_ERROR5
  CMP AX, 00            ;zero bytes read?
  JE DISPLAY_ERROR6
  RET
  	
	DISPLAY_ERROR1:         ;for error checkings in 
  LEA DX, ERROR1_STR    ;file manipulations
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR2:
  LEA DX, ERROR2_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR3:
  LEA DX, ERROR3_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR4:
  LEA DX, ERROR4_STR
			
  JMP EXIT

DISPLAY_ERROR5:
  LEA DX, ERROR5_STR
  CALL PRINTF
  JMP EXIT

DISPLAY_ERROR6:
  LEA DX, ERROR6_STR
  CALL PRINTF
  JMP EXIT
  ;--------------------------------
READ_FILE ENDP
;prints what is stored in dx
PRINTF PROC NEAR
    MOV AH, 09H
    INT 21H
    RET
PRINTF ENDP
;------------------------------------------------------------------------------
SHOW_GAMEOVER PROC NEAR						;Displays Game over screen
	MOV FLAG, 3
	MOV CHECKER, 0
	CALL CLEAR_SCREEN_BLACK
	MOV   DL, COL
	MOV   DH, ROW1
	CALL _SET_CURSOR
	
	CALL CLEAR_SCREEN_UPPERHALF
	CALL CLEAR_SCREEN_LOWERHALF
	
	
	READ:
	CALL FILEREADER
	
	MOV AX, SCORE 
	CALL HEX2DEC 
  
	CALL STR2HEX
	MOV AX, HS_NUM
	CMP SCORE, AX
	JG WRITE
	JNG CONT
  
	WRITE:
		MOV CHECKER, 1
		CALL FILEWRITER
	
	CALL CLOSEFILE
	
  CONT:  
	LEA DX, END1
	MOV AH, 09
	INT 21H
	
	MOV   DL, COL
	MOV   DH, 10
	CALL _SET_CURSOR
	
	LEA DX, LINE
	MOV AH, 09
	INT 21H
	
	LEA DX, MSGCURRENTSCORE
	MOV AH, 09
	INT 21H
	
	MOV   DL, COL
	MOV   DH, 11H
	CALL _SET_CURSOR
	
	LEA DX, LINE
	MOV AH, 09
	INT 21H
	
	LEA DX, MSGHIGHSCORE
	MOV AH, 09
	INT 21H
	
	MOV   DL, COL
	MOV   DH, 18H
	CALL _SET_CURSOR
	
	LEA DX, MSGPLAYAGAIN
	MOV AH, 09
	INT 21H
	
	MOV AX,SCORE
	CALL HEX2DEC
	
	MOV DL, 25H			
	MOV DH, 13
	CALL _SET_CURSOR 	
	
	LEA DX, OUT_TXT
	MOV AH, 9
	INT 21H
	
	MOV DL, 25H			
	MOV DH, 21
	CALL _SET_CURSOR 	
	
	CMP CHECKER, 1
	JE DISPLAY_CURRENT
	JNE CONTI
	
	
	DISPLAY_CURRENT:
		LEA DX, OUT_TXT
		MOV AH, 9
		INT 21H
		JMP CONT2
	
	CONTI:
	MOV AX, HS_NUM
	CALL HEX2DEC2
	
	LEA DX, OUT_TXT2
	MOV AH, 9
	INT 21H
	
	CONT2:
	CALL INPUT_LOOP
	RET

SHOW_GAMEOVER ENDP
;--------------------------------------------------------------------------------------
FILEREADER PROC NEAR
 ;open file
  MOV AH, 3DH           ;requst open file
  MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
  LEA DX, PATHFILENAME
  INT 21H
  MOV FILEHANDLE, AX

  ;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, 35            ;record length
  LEA DX, HIGHSCORE_WRT    ;address of input area
  INT 21H
  RET
FILEREADER ENDP

;------------------------------------------------------------------------
FILEWRITER PROC NEAR
  MOV AH, 3DH           ;requst open file
  MOV AL, 01            ;read only; 01 (write only); 10 (read/write)
  LEA DX, PATHFILENAME
  INT 21H
  MOV FILEHANDLE, AX
  
  
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, 2            ;record length
  LEA DX, OUT_TXT    ;address of output area
  INT 21H
  CMP AX, 2            ;after writing, set AX to size of chars nga na write

RET
FILEWRITER ENDP

CLOSEFILE PROC NEAR
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H
RET
CLOSEFILE ENDP
;------------------------------------------------------------------
STR2HEX PROC  ; shows game over
  PUSH AX
  PUSH BX
  PUSH CX
  PUSH DX
  PUSH SI
  
  XOR SI,SI
  XOR AX,AX
  XOR BX,BX
  MOV TEN,10
  MOV HS_NUM,0
  
  
  LOOP0:
  CMP HIGHSCORE_WRT[SI],'$'
  JE END00
  
  MOV CX,TEN
  MOV AX, HS_NUM
  MUL CX
  MOV HS_NUM,AX
  
  XOR AX,AX
  
  MOV AL,HIGHSCORE_WRT[SI]
  SUB AL,30H
  
  ADD HS_NUM,AX

  INC SI
  JMP LOOP0
END00:
      
  POP SI
  POP DX
  POP CX
  POP BX
  POP AX
  
  RET
STR2HEX ENDP

;---------------------------------------------------------------------
HEX2DEC PROC NEAR
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	PUSH SI
	LEA SI,OUT_TXT
	MOV CX,0
  MOV BX,10
   
LOOP1: MOV DX,0
       DIV BX
       ADD DL,30H
       PUSH DX
       INC CX
       CMP AX,9
       JG LOOP1
     
       ADD AL,30H
       MOV [SI],AL
     
LOOP2: POP AX
       INC SI
       MOV [SI],AL
       LOOP LOOP2
		
		INC SI
		MOV AL,'$'
		MOV [SI],AL
    
		POP SI
		POP DX
		POP CX
		POP BX
		POP AX
		RET
HEX2DEC ENDP
;---------------------------------------------------------------------

HEX2DEC2 PROC NEAR
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	PUSH SI
	LEA SI,OUT_TXT2
	MOV CX,0
  MOV BX,10
   
LOOP11: MOV DX,0
       DIV BX
       ADD DL,30H
       PUSH DX
       INC CX
       CMP AX,9
       JG LOOP11
     
       ADD AL,30H
       MOV [SI],AL
     
LOOP21: POP AX
       INC SI
       MOV [SI],AL
       LOOP LOOP21
		
		INC SI
		MOV AL,'$'
		MOV [SI],AL
    
		POP SI
		POP DX
		POP CX
		POP BX
		POP AX
		RET
HEX2DEC2 ENDP
;-------------------------------------------------------------
INPUT_LOOP PROC NEAR					;Checks input
	INPUT_CHECK:
		CALL GET_KEY
		JMP INPUT_CHECK
INPUT_LOOP ENDP
;--------------------------------------------------------------------------------------
DELAY PROC NEAR							;Delays the speed of the game
      mov bp, 2 ;lower value faster
      mov si, 2 ;lower value faster
    delay2:
      dec bp
      nop
      jnz delay2
      dec si
      cmp si,0
      jnz delay2
      RET
DELAY ENDP
;--------------------------------------------------------------------------------------
_SET_CURSOR PROC NEAR					;Sets cursor at a specific point
  
  MOV   AH, 02H
  MOV   BH, 00
  INT   10H
  
  RET
_SET_CURSOR ENDP
;--------------------------------------------------------------------------------------
TERMINATOR PROC NEAR					; Ends program
	MOV AH, 4CH
	INT 21H
	RET
TERMINATOR ENDP
END MAIN