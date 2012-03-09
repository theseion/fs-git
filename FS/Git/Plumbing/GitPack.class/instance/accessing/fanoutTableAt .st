
!GitPack methodsFor: 'accessing' stamp: 'tonyg 2/22/2010 22:31'!
fanoutTableAt: fanoutIndex
	^ fanoutTable unsignedLongAt: (fanoutIndex * 4) + 1 bigEndian: true.! !
