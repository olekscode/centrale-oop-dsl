Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testCreateHandle [

	| die1 die2 die3 handle |
	
	die1 := Die new.
	die2 := Die new.
	die3 := Die new.
	
	handle := DieHandle with: { die1 . die2 . die3 }.
	
	
]
