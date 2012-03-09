
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:57'!
validate: anObject
	[ anObject validateIn: repository ]
		on: GitError
		do: [ :error | self collectError: error for: anObject ]! !
