
!MCOSGitRepository methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 1/23/2012 19:49'!
pull
	"pull the contents using OS Process"
	
	^ self gitCommand: ' pull "', self remote, '" master'.! !
