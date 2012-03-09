
!MCOSGitRepository methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 1/23/2012 19:47'!
basicStoreVersion: aVersion

	super basicStoreVersion: aVersion.
	
	self pushAutomatically ifTrue: [ self push ].
! !
