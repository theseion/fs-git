
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 17:36'!
branch: branchName message: message andTag: tagName
	self
		branch: branchName
		message: message.
	self 
		tagRevision: self
		with: tagName! !
