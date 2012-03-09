
!GitUnpackTest methodsFor: 'as yet unclassified' stamp: 'mml 1/15/2012 22:11'!
unpack: aReference
	reader := ReadStream on: aReference readStream contents.
	self
		readPackSignature;
		readPackVersion;
		readObjectCount;
		readObjectEntries! !
