
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 6/25/2011 19:09'!
unpackRefDeltaContent
	| s delta base |
	s := (GitObjectSignature loadFrom: file) hexHash.
	delta := self readDelta.
	base := pack packedObjectAt: s.
	self applyDelta: delta to: base.! !
