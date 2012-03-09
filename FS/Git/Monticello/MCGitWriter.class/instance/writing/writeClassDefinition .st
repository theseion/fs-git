
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:18'!
writeClassDefinition: aClassDefinition 
	| classPath |
	
	classPath := self classPathFor: aClassDefinition actualClass.
	
	((classPath / 'instance-side') ensureDirectory / 'definition.st') writeStreamDo: [ :s|
		self writeClassDefinition: aClassDefinition on: s].
	
	((classPath / 'class-side') ensureDirectory / 'definition.st') writeStreamDo: [ :s|
		self writeMetaClassDefinition: aClassDefinition on: s].
	
	(classPath / 'README.txt') writeStreamDo: [ :s|
		s nextPutAll: (self convert: aClassDefinition comment)].
	! !
