Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreateDiceWithFaces [

	| die |
	die := Die withFaces: 20.
	
	self assert: die faces equals: 20.
]

{ #category : #tests }
DieTest >> testDieFaces [

	| die |
	die := Die new.
	
	self assert: die faces equals: 6.
]

{ #category : #tests }
DieTest >> testRoll [

	| die number |
	die := Die new.
	
	number := die roll.
	
	self assert: number >= 1.
	self assert: number <= 6.
]
