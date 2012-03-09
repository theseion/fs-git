
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 1/17/2012 01:31'!
openConnection
	(socketStream notNil and: [ socketStream isConnected ])
		ifTrue: [ ^ self ].
		
	socketStream := SocketStream openConnectionToHostNamed: self host port: 9418.
	"20 seconds timeout"
	socketStream timeout: 60.! !
