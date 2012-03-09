
!MCGitWriter methodsFor: 'legacy' stamp: 'Camillobruni 8/18/2011 17:02'!
writeLegacyVersion: aVersion
	|buffer|
	"lazy... write all formats then later on decide on what to load"
	"self writeInfo: aVersion info.
	self writeLegacySnapshot: aVersion snapshot."
	
	buffer := ByteArray streamContents: [ :s|
			aVersion fileOutOn: s].
	
	(self reference / (aVersion info name, '.mcz')) writeStreamDo: [ :s| 
		s nextPutAll: buffer ].! !
