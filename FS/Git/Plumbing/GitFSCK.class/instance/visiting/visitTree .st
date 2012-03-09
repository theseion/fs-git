
!GitFSCK methodsFor: 'visiting' stamp: 'CamilloBruni 6/22/2011 04:14'!
visitTree: aTree
	self validate: aTree.
	self acceptCollection: aTree objects.! !
