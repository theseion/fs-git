
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 8/1/2011 16:30'!
markFileCreated: aPath 
	"only files trigger changes"
	hasChanges := true.
	^ self markCreated: aPath! !
