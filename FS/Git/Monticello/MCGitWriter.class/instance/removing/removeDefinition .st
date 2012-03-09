
!MCGitWriter methodsFor: 'removing' stamp: 'CamilloBruni 4/29/2011 13:56'!
removeDefinition: aDefinition
	aDefinition isOrganizationDefinition
		ifTrue: [ ^ self removePackage: aDefinition ].
	aDefinition isClassDefinition
		ifTrue: [ ^ self removeClass: aDefinition ].
	aDefinition isMethodDefinition
		ifTrue: [ ^ self removeMethod: aDefinition ].
	self error: 'unknown definition for removal'.! !
