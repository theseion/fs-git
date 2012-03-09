
!GitTag class methodsFor: 'instance creation' stamp: 'MaxLeske 8/12/2011 09:04'!
makeFullTag: tagName for: aGitCommit message: message in: aGitRepository
	^ self
		makeFullTag: tagName
		for: aGitCommit
		message: message
		tagger: GitStamp now
		in: aGitRepository! !
