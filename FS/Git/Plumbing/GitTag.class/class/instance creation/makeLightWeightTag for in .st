
!GitTag class methodsFor: 'instance creation' stamp: 'MaxLeske 8/12/2011 09:05'!
makeLightWeightTag: aString for: aGitCommit in: aGitRepository
	| tag |
	self assert: aGitCommit species = GitCommit.
	tag := self new
		name: aString;
		object: aGitCommit;
		repository: aGitRepository;
		yourself.
	tag store.
	^tag
		! !
