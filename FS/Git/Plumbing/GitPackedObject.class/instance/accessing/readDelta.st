
!GitPackedObject methodsFor: 'accessing' stamp: 'tonyg 2/23/2010 20:07'!
readDelta
	^ GitDeltaInterpreter new instructions: (ZLibReadStream on: file) contents.! !
