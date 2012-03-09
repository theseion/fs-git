
!FSGitSetWrapper methodsFor: 'adding' stamp: 'CamilloBruni 7/15/2011 19:43'!
add: newObject
	maxDepth := maxDepth max: newObject size.
	set add: newObject! !
