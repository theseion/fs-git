
!GitTag class methodsFor: 'instance creation' stamp: 'MaxLeske 8/12/2011 09:04'!
makeFullTag: tagName for: aGitCommit message: message tagger: aGitStamp in: aGitRepository
	| tag |
	tag := self new
		name: tagName;
		object: aGitCommit;
		message: message;
		tagger: aGitStamp;
		repository: aGitRepository;
		yourself.
	tag store.
	^tag! !
