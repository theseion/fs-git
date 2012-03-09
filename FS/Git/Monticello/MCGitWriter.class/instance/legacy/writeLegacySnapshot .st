
!MCGitWriter methodsFor: 'legacy' stamp: 'CamilloBruni 8/9/2011 15:39'!
writeLegacySnapshot: aSnapshot
	(self reference / 'source.st')
		writeStreamDo: [ :s | 
			s nextPutAll: (self convert: (self serializeDefinitions: aSnapshot definitions)) ].! !
