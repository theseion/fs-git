
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 1/17/2012 01:22'!
readPackfile
	| isContent objects|
	
	objects := OrderedCollection new.
	
	self readLines: [ :line|
		isContent := line first == 1 asCharacter.
		isContent 
			ifFalse: [ Transcript show: (line allButFirst: 1); cr. ]
			ifTrue: [ objects add: (GitPackedObject loadFrom: (line allButFirst: 1) readStream)]
	].

	^ objects! !
