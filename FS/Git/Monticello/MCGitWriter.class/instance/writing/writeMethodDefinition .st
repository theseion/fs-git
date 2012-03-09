
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 3/9/2012 16:52'!
writeMethodDefinition: aMethodDefinition
	|path|
	
	path := self methodPathFor: aMethodDefinition.
	path parent ensureDirectory.
	
	path writeStreamDo: [ :s| 
		self writeMethodDefinition: aMethodDefinition on: s].! !
