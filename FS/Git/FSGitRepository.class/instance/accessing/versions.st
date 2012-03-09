
!FSGitRepository methodsFor: 'accessing' stamp: 'MaxLeske 8/25/2011 19:16'!
versions
	| commits |
	commits := OrderedCollection new.
	self 
		recursivelyCollectCommits: repository head
		into: commits
		limit: nil.
	
	^ commits collect: [ :each |
		self filesystemOn: each ] ! !
