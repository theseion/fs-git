
!FSGitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 20:06'!
tags
	| tags |
	
	tags := Dictionary new.
	
	repository tags do: [ :tag | 
		tags at: tag put: (self filesystemOn: tag object) ].
	
	^ tags! !
