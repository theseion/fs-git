
!GitPackedObject methodsFor: 'accessing' stamp: 'tonyg 2/23/2010 20:05'!
unpackSimpleContent 
	unpackedBytes := (ZLibReadStream on: file) contents.! !
