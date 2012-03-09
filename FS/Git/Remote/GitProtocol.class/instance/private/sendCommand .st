
!GitProtocol methodsFor: 'private' stamp: 'Camillobruni 8/19/2011 19:04'!
sendCommand: aCommandString
	self sendData: (self encodeCommandLine: aCommandString).
	! !
