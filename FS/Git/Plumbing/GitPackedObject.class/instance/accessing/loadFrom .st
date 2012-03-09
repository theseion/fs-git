
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/1/2011 19:25'!
loadFrom: aStream
	| byte type shift |
	file := aStream.
	headerPos := file position.
	type := self readObjectType.
	file back. "the same byte contains both type and size information"
	length := self readUnpackedDataSize.
	self unpackContentType: type.! !
