
!GitRepository methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/13/2011 20:03'!
initializeOn: anFSReference
	self assert: anFSReference class = FSReference.
	reference := anFSReference.
	self gitInitialize! !
