Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [

	| die |
	die := Die new.
	die faces: aNumber.
	
	^ die.
]

{ #category : #accessing }
Die >> faces [

	^ faces
]

{ #category : #accessing }
Die >> faces: aNumber [

	faces := aNumber.
]

{ #category : #initialization }
Die >> initialize [ 

	super initialize.
	faces := 6.
]

{ #category : #'as yet unclassified' }
Die >> roll [

	| rand |
	rand := Random new.
	
	^ rand nextIntegerBetween: 1 and: faces.
]
