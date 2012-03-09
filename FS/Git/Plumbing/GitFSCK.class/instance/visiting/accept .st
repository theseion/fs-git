
!GitFSCK methodsFor: 'visiting' stamp: 'CamilloBruni 6/21/2011 06:34'!
accept: anObject
	(reachable includes: anObject) ifTrue: [ ^ self].
	self mark: anObject.
	^ anObject accept: self.! !
