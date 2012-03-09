
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:58'!
validateTags
	[ repository tags do: [ :tag | self accept: tag ] ]
		on: GitError
		do: [ :error | 
			self collectError: error for: repository ]! !
