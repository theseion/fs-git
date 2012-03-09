
!AbstractGitProtocol class methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 12/21/2011 14:49'!
url: anUrlString
	| url protocol |
	url := anUrlString asUrl.
	protocol := self protocolForScheme: url scheme.
	^ protocol connectTo: url! !
