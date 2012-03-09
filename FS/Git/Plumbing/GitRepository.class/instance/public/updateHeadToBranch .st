
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 11/2/2010 22:32'!
updateHeadToBranch: branchName
"Updates the reference in 'HEAD' to branchName"

	self basicUpdateRef: 'HEAD' to: 'ref: refs/heads/' , branchName! !
