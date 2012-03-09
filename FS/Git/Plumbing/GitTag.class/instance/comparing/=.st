
!GitTag methodsFor: 'comparing' stamp: 'MaxLeske 8/12/2011 08:26'!
= other
	(other isKindOf: self class)
		ifFalse: [ ^ false ].
	
	self isLightWeightTag ~= other isLightWeightTag
		ifTrue: [ ^ false ].
	
	self isLightWeightTag
		ifTrue: [ ^ self name = other name].
		
	^self signature = other signature! !
