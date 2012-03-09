
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/15/2011 15:49'!
basicTag: tagName
	repository updateRef: repository tagsDir / tagName to: revision signature.
	self basicReset.! !
