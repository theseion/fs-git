
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:57'!
validateHead
	self validateHeadFile.
	[ repository head ifNotNilDo: [ :head | self accept: head ] ]
		on: GitError
		do: [ :error | 
			self collectError: error for: repository ]! !
