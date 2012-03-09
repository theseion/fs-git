
!AbstractGitProtocol class methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 12/21/2011 14:37'!
protocolForScheme: aScheme
	^ self allSubclasses detect: [ :class| class schemes includes: aScheme ]! !
