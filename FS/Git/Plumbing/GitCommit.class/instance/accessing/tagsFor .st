
!GitCommit methodsFor: 'accessing' stamp: 'CamilloBruni 8/9/2011 20:39'!
tagsFor: aGitRepos
	^ aGitRepos tags select: [ :tag| tag object = self]! !
