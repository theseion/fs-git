
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 8/1/2011 17:20'!
commit: aMessage
	"Creates a commit with message ==aMessage== in the currently active branch."
	self basicCommit: aMessage to: self branchName! !
