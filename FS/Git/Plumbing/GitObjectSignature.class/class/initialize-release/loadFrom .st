
!GitObjectSignature class methodsFor: 'initialize-release' stamp: 'MaxLeske 5/25/2011 18:09'!
loadFrom: aStream
	| hash |
	hash := (aStream next: 20).
	^self from: hash hex! !
