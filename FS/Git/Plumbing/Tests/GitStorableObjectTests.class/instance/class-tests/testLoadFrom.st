
!GitStorableObjectTests methodsFor: 'class-tests' stamp: 'MaxLeske 7/26/2010 09:00'!
testLoadFrom
	| stream object loadedObject clazzes |
	clazzes := GitStorableObject allSubclasses reject: [:each | each typeCode isNil].
	clazzes do:
		[:each | object := self buildMockFor: each.
		repository storeObject: object.
		stream := repository looseObjectStreamAt: object signature.
		loadedObject := GitStorableObject loadFrom: stream from: repository. 
		self assert: loadedObject isNil not.
		self assert: loadedObject species = (object species).
		self assert: loadedObject = object]! !
