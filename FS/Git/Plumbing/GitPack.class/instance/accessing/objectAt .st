
!GitPack methodsFor: 'accessing' stamp: 'MaxLeske 8/2/2011 19:04'!
objectAt: sha1String
	| packedObject |
	packedObject := self packedObjectAt: sha1String.
	^ packedObject 
		ifNotNil: [ packedObject object ]
		ifNil: [ nil ]! !
