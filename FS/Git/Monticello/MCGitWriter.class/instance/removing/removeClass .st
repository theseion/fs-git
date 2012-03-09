
!MCGitWriter methodsFor: 'removing' stamp: 'CamilloBruni 4/29/2011 01:49'!
removeClass: aClassDefinition
	(self classPathForPackage: aClassDefinition category class: aClassDefinition className) delete
	! !
