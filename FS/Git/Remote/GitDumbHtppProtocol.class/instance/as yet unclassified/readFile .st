
!GitDumbHtppProtocol methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 1/15/2012 22:53'!
readFile: aPath
	^ ZnEasy get: url asString, '/objects', aPath.! !
