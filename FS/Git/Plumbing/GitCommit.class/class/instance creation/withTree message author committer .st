
!GitCommit class methodsFor: 'instance creation' stamp: 'MaxLeske 5/25/2010 19:59'!
withTree: aGitTree message: aString author: aGitStampForAuthor committer: aGitStampForCommitter
	^self new
		tree: aGitTree;
		message: aString;
		author: aGitStampForAuthor;
		committer: aGitStampForCommitter;
		yourself
		! !
