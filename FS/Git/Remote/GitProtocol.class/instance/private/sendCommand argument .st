
!GitProtocol methodsFor: 'private' stamp: 'Camillobruni 8/19/2011 17:50'!
sendCommand: commandName argument: anArgument
	^ self sendCommand: commandName, ' ', anArgument! !
