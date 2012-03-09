
!GitObjectSignatureTests methodsFor: 'helpers' stamp: 'MaxLeske 7/22/2010 19:49'!
createCommit
		^ GitCommit 
			withTree: self createTree
			message: self commitMessage
			author: self defaultStamp
			committer: self defaultStamp.! !
