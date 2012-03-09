
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 7/11/2010 13:05'!
testBranches
	| branches |
	branches := repository branches.
	self assert: branches size = 2.
	branches do: [ :each |
		self assert: (each isKindOf: GitCommit).
		self assert: (#('message1' 'message2') includes: each message)]! !
