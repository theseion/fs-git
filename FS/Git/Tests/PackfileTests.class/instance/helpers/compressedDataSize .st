
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/1/2011 20:20'!
compressedDataSize: aByteArray
	| zlibReader |
	zlibReader := ZLibReadStream on: aByteArray.
	^ zlibReader 
		contents;
		sourcePosition! !
