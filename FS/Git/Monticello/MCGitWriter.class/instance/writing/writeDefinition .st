
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:19'!
writeDefinition: aDefinition

	aDefinition isOrganizationDefinition
		ifTrue: [ ^ self writePackageDefinition: aDefinition ].
		
	aDefinition isClassDefinition
		ifTrue: [ ^ self writeClassDefinition: aDefinition ].
		
	aDefinition isMethodDefinition
		ifTrue: [ ^ self writeMethodDefinition: aDefinition ].
		
	self error: 'unknown definition for removal'.! !
