
!GitProtocol methodsFor: 'private' stamp: 'Camillobruni 8/19/2011 18:51'!
encodeCommandLine: aCommandString
	
	"
	a Command sent to the git server has the following form:
		FFFFCommandName Arguments
	"
	
	|size requestString null|
	self openConnection.
	null := 0 asCharacter asString.
	requestString := aCommandString, String lf.
	size :=  4 "bytes size" + requestString size.
	size := (size printStringBase: 16) padded: #left to: 4 with: $0.
	^ size, requestString
	! !
