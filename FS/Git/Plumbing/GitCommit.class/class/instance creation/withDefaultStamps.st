
!GitCommit class methodsFor: 'instance creation' stamp: 'MaxLeske 7/24/2010 17:18'!
withDefaultStamps
	| s |
	s := GitStamp now.
	^ self new 
		author: s;
		committer: s;
		yourself! !
