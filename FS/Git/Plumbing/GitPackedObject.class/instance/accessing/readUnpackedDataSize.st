
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 08:42'!
readUnpackedDataSize
	| size shift byte |
	byte := file next.
	size := byte bitAnd: 2r00001111.
	shift := 4.
	[ (byte bitAnd: 2r10000000) isZero ] whileFalse: [
		byte := file next.
		size := size bitOr: ((byte bitAnd: 127) << shift).
		shift := shift + 7].
	
	^ size! !
