
!GitTag methodsFor: 'accessing' stamp: 'MaxLeske 6/30/2010 14:01'!
object: aGitCommit
	self assert: aGitCommit species = GitCommit.
	object := aGitCommit! !
