
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/1/2011 19:15'!
unpackOffsetDeltaContent
	| baseOffset base delta |
	baseOffset := self readBaseObjectOffset.
	delta := self readDelta.
	base := pack packedObjectAtOffset: headerPos - baseOffset.
	self applyDelta: delta to: base.! !
