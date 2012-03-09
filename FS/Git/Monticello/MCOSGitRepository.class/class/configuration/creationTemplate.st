
!MCOSGitRepository class methodsFor: 'configuration' stamp: 'CamilloBruni 3/9/2012 17:06'!
creationTemplate
	^ self name , ' 
		directory: ''repo.git'' 
		remote: ''git://host:user/project'' 
		push: true'! !
