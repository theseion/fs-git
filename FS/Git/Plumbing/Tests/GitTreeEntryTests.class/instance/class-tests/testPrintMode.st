
!GitTreeEntryTests methodsFor: 'class-tests' stamp: 'MaxLeske 7/10/2010 11:18'!
testPrintMode
	self assert: (GitTreeEntry printMode: GitTreeEntry fileMode) = '100644'.
	self assert: (GitTreeEntry printMode: GitTreeEntry dirMode) = '40000'! !
