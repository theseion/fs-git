
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:57'!
validateBranches
	[ repository branches do: [ :head| self accept: head ] ]
		on: GitError
		do: [ :error | 
			self halt.
			self collectError: error for: repository ]! !
