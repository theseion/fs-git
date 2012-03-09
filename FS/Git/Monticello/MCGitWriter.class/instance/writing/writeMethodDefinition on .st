
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:18'!
writeMethodDefinition: aMethodDefinition on: aStream
	aStream nextPutAll: (self convert: (self serializeMethodDefinition: aMethodDefinition)).! !
