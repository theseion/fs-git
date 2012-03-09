
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/15/2011 18:45'!
delete: anObject
	(cache exists: anObject)
			ifTrue: [ cache delete: anObject].
	modManager
		markDeleted: anObject.! !
