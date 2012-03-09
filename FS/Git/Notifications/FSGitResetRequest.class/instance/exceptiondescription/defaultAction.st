
!FSGitResetRequest methodsFor: 'exceptiondescription' stamp: 'MaxLeske 7/24/2010 16:15'!
defaultAction
	^ StandardWindow 	new questionWithoutCancel: 
		'You will loose all changes that you didn''t commit. Do you really want the modifications to be reset?'! !
