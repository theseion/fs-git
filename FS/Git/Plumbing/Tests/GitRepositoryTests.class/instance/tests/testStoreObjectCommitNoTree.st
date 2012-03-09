
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 8/11/2011 22:59'!
testStoreObjectCommitNoTree
	| commit |
	commit := GitCommit new.
	self 
		should: [ repository storeObject: commit ] 
		raise: GitInvalidObjectError
		whoseDescriptionIncludes: 'Cannot have a commit without a tree.'
		description: 'Every commit needs a tree. Make sure this is checked for.'! !
