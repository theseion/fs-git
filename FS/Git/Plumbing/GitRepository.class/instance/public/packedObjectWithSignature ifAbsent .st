
!GitRepository methodsFor: 'public' stamp: 'CamilloBruni 7/6/2011 16:26'!
packedObjectWithSignature: aGitObjectSignature ifAbsent: aBlock
	| object |
	self packsDo: [ :each |
		object := each packedObjectAt: aGitObjectSignature hexHash.
		object ifNotNil: [^ object repository: self] ].
	^ aBlock value! !
