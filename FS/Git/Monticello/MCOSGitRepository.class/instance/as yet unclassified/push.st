
!MCOSGitRepository methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 1/23/2012 19:49'!
push
	"push the contents using OS Process"
	
	^ self gitCommand: '" push "', self remote, '" master'.! !
