
!GitPackedObject methodsFor: 'accessing' stamp: 'tonyg 2/23/2010 20:09'!
applyDelta: delta to: base
	decodeClass := base decodeClass.
	unpackedBytes := delta runAgainst: base unpackedBytes.! !
