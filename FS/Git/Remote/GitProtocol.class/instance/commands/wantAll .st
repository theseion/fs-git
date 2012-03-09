
!GitProtocol methodsFor: 'commands' stamp: 'CamilloBruni 1/15/2012 22:29'!
wantAll: gitSignatures 
	^ self 
		wantAll: gitSignatures 
		properties: GitProtocolCapabilities multiAck sideBand64k ofsDelta! !
