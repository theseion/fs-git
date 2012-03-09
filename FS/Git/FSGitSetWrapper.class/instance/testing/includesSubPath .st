
!FSGitSetWrapper methodsFor: 'testing' stamp: 'CamilloBruni 6/22/2011 08:00'!
includesSubPath: aFSPath 
	^ set anySatisfy: [ :el| aFSPath contains: el]! !
