
!GitObjectLoader methodsFor: 'accessing' stamp: 'CamilloBruni 7/6/2011 16:25'!
objectWithSignature: aGitObjectSignature ifAbsent: aBlock
	^ [ self objectFrom: (repository looseObjectStreamAt: aGitObjectSignature) ] 
		on: FSFileDoesNotExist
		do: [ :ex | ^ (repository packedObjectWithSignature: aGitObjectSignature ifAbsent: [^ aBlock value]) object ]! !
