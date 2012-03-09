
!GitFSCK methodsFor: 'visiting' stamp: 'CamilloBruni 6/22/2011 04:15'!
visitCommit: aCommit
	self validate: aCommit.
	self accept: aCommit tree.
	self acceptCollection: aCommit parents.! !
