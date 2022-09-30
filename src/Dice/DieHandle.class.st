Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieHandle class >> with: aCollectionOfDice [

	| handle |
	handle := DieHandle new.
	handle addAll: aCollectionOfDice.
	^ handle
]

{ #category : #adding }
DieHandle >> addAll: aCollectionOfDice [

	dice addAll: aCollectionOfDice
]

{ #category : #initialization }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [

	| number |
	number := 0.
	
	dice do: [ :each |
		number := number + each roll ].
	
	^ number
]
