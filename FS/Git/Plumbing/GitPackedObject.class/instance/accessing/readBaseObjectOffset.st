
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 08:42'!
readBaseObjectOffset 
"modified big endian encoding.
Most significant bit of each byte indicates if that byte is the last
byte encoding for the value (bit = 0) or if another byte follows (bit = 1)"
	| byte offset |
	byte := file next.
	offset := byte bitAnd: 2r01111111.
	[ (byte bitAnd: 2r10000000) isZero ] whileFalse: [
		byte := file next.
		offset := ((offset + 1) << 7) bitOr: (byte bitAnd: 2r01111111) ].
	
	^ offset! !
