
!FSGitSwitchBranchRequest methodsFor: 'exceptiondescription' stamp: 'MaxLeske 7/24/2010 16:18'!
defaultAction
	^ StandardWindow new questionWithoutCancel: 
		'You will loose all changes you didn''t commit. Do you really want to switch branches?'! !
