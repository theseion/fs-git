
!GitUnpackTest methodsFor: 'as yet unclassified' stamp: 'mml 1/15/2012 22:12'!
readPackVersion
	packVersion := (reader next: 4) asInteger! !
