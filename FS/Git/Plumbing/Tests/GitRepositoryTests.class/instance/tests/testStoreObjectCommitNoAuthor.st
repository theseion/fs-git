
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 8/11/2011 22:59'!
testStoreObjectCommitNoAuthor
	| commit |
	commit := GitCommit new.
	commit tree: GitTree new.
	self 
		should: [ repository storeObject: commit ] 
		raise: GitInvalidObjectError
		whoseDescriptionIncludes: 'Author identity is required.'
		description: 'Author needs to be set before storing the commit.'! !
