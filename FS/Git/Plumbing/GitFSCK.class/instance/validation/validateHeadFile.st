
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:58'!
validateHeadFile
	[ repository headFile exists  ifFalse: [ self invalidRepository: 'Could not find ''HEAD''' ] ]
		on: GitError
		do: [ :error |
			self collectError: error for: repository ]! !
