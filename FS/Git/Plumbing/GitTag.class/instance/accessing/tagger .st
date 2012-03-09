
!GitTag methodsFor: 'accessing' stamp: 'MaxLeske 6/30/2010 14:00'!
tagger: aGitStamp
	self assert: aGitStamp species = GitStamp.
	tagger := aGitStamp! !
