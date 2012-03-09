
!GitTag methodsFor: 'saving' stamp: 'MaxLeske 8/12/2011 09:03'!
store
	self isLightWeightTag
		ifTrue: [self storeLightWeightTag]
		ifFalse: [self storeFullTag]
	! !
