
!FSGitRepository methodsFor: 'private' stamp: 'MaxLeske 8/25/2011 19:16'!
recursivelyCollectCommits: aCommit into: aCollection
	self
		recursivelyCollectCommits: aCommit
		into: aCollection
		limit: nil ! !
