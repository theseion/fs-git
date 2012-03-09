
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 7/6/2011 15:34'!
modifyDefinition: oldDefinition to: newDefinition
	oldDefinition isOrganizationDefinition
		ifTrue: [ ^ self modifyPackage: oldDefinition to:  newDefinition].
	oldDefinition isClassDefinition
		ifTrue: [ ^ self modifyClass: oldDefinition to:  newDefinition ].
	oldDefinition isMethodDefinition
		ifTrue: [ ^ self modifyMethod: oldDefinition to:  newDefinition].
	self error: 'unknown definition for removal'.! !
