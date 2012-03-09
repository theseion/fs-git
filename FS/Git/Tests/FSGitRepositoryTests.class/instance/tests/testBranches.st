
!FSGitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 7/21/2010 20:56'!
testBranches
	| branches |
	branches := repository branches.
	self assert: branches size = 2.
	branches do: [ :aBranch |
		self assert: aBranch species = FSGitFilesystem.
		self assert: ({ FSPath / 'first blob'. FSPath / 'second blob' } 
			includes: aBranch root children first path) ]! !
