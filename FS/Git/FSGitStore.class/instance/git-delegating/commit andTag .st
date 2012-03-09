
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 15:37'!
commit: aMessage andTag: tagName
"Creates a commit with message ==aMessage== and creates a tag for that commit with name ==tagName==."

	self 
		commit: aMessage;
		basicTag: tagName! !
