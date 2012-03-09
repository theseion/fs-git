
!MCGitVersionInfo class methodsFor: 'instance creation' stamp: 'CamilloBruni 1/23/2012 23:06'!
filesystem: aGitFS
	"create a new info for the current revision"
	^ self filesystem: aGitFS commit: aGitFS revision! !
