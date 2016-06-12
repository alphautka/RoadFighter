.section .text
.global	IncrementTickCounter
// IncrementTickCounter()
IncrementTickCounter:
	ldr	r0, =tickCounter
	ldr	r1, [r0]
	add	r1, #1
	str	r1, [r0]
	bx	lr

.global ResetGame
ResetGameState:

	//Reset player position
	ldr 	r0, =playerDefaultX 
	ldr	r0, [r0]
	ldr	r1, =playerPosX
	str 	r0, [r1]

	ldr 	r0, =playerDefaultY 
	ldr	r0, [r0]
	ldr	r1, =playerPosY
	str 	r0, [r1]

	//Reset flags
	mov 	r0, #0
	ldr 	r1, =winFlag
	ldr 	r2, =loseFlag
	str 	r0, [r1]
	str 	r1, [r2]

	

	bx 	lr

.section .data
.global playerPosX
.global playerPosY
.global	playerDefaultX
.global	playerDefaultY
.global playerFuel
.global playerLives
.global	refreshCounter
playerDefaultX:	.int	18
playerDefaultY:	.int	18
playerPosX:	.int 	18
playerPosY: 	.int	18
mapShiftWait:	.int	20
mapShiftCtr:	.int	0
playerFuel: 	.int  	100
playerLives: 	.int 	3
tickCounter:	.int	0
finishThreshold:	.int	200

winFlag: 	.byte 	0
loseFlag: 	.byte 	0

.global	leftCarProb
.global	rightCarProb
.global	oneProb
.global	fourProb
.global	threeProb
.global	twoProb
.align	4
leftCarProb:	.int	4
rightCarProb:	.int	2
oneProb:		.int	7	
fourProb:		.int	8
threeProb:		.int	15
twoProb:		.int	64

.global	leftEdgeSize
leftEdgeSize:
	.int	5
.global	rightEdgeSize
rightEdgeSize:
	.int	5