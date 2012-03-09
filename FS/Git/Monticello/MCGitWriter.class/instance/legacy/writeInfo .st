
!MCGitWriter methodsFor: 'legacy' stamp: 'CamilloBruni 8/9/2011 15:40'!
writeInfo: aVersionInfo
	(self reference / 'version') writeStreamDo: [ :s |
		s nextPutAll: (self convert: (self serializeVersionInfo: aVersionInfo)) ]! !
