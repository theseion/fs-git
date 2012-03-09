
!GitFSCK methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/21/2011 15:05'!
mark: anObject
	unreachable remove: anObject ifAbsent: [].
	reachable add: anObject.! !
