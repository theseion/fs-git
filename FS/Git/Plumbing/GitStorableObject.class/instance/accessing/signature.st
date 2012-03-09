
!GitStorableObject methodsFor: 'accessing' stamp: 'MaxLeske 7/26/2010 08:37'!
signature
	^signature ifNil: [ signature := GitObjectSignature for: self ]! !
