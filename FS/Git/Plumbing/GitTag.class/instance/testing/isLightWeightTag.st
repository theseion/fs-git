
!GitTag methodsFor: 'testing' stamp: 'MaxLeske 8/12/2011 08:26'!
isLightWeightTag
	^self message isNil and: [ self tagger isNil ]! !
