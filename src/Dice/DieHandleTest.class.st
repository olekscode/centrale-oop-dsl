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

{ #category : #tests }
DieHandleTest >> testRoll [

	| die1 die2 handle number |
	
	die1 := Die withFaces: 4.
	die2 := Die withFaces: 20.

	handle := DieHandle with: { die1 . die2 }.
	
	number := handle roll.
	
	self assert: number >= 1.
	self assert: number <= 24.
]
