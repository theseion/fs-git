
!FSGitRepository methodsFor: 'accessing' stamp: 'MaxLeske 8/25/2011 19:12'!
lastVersions: anInteger 
	| commits |
	commits := OrderedCollection new.
	self 
		recursivelyCollectCommits: repository head
		into: commits
		limit: anInteger.
	
	^ commits collect: [ :each |
		self filesystemOn: each ] ! !
