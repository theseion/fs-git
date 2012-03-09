
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:27'!
writeMetaClassDefinition: aClassDefinition on: aStream 

	aStream nextPutAll: aClassDefinition className;
			nextPutAll: ' class';
			lf; tab.
			
	aClassDefinition hasClassTraitComposition ifTrue: [
		aStream nextPutAll: 'uses: ';
			nextPutAll: aClassDefinition classTraitCompositionString;
			lf; tab].
		
	aStream nextPutAll: 'instanceVariableNames: ''';
		nextPutAll: aClassDefinition classInstanceVariablesString;
		nextPut: $'! !
