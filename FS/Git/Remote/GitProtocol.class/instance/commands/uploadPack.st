
!GitProtocol methodsFor: 'commands' stamp: 'CamilloBruni 12/25/2011 14:17'!
uploadPack
	|null|
	null := 0 asCharacter asString.
	self sendCommand: 'git-upload-pack' 
		  argument: (self repository, null, self hostInformation, null).
	^ self parseUploadPackResponse.! !
