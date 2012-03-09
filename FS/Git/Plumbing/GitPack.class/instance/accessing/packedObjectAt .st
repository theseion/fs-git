
!GitPack methodsFor: 'accessing' stamp: 'MaxLeske 8/2/2011 19:59'!
packedObjectAt: sha1String
	| index packOffset |
	index := self tableIndexForSha: sha1String.
	index ifNil: [^ nil].
	packOffset := self offsetAt: index.
	^ self packedObjectAtOffset: packOffset! !
