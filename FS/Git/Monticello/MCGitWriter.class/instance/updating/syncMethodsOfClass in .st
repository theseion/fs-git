
!MCGitWriter methodsFor: 'updating' stamp: 'CamilloBruni 4/29/2011 15:47'!
syncMethodsOfClass: aClass in: aDirectory 
	self syncMethods: (aClass methodDict keys) withFiles: aDirectory / #instancemethod.
	self syncMethods: (aClass class methodDict) keys withFiles: aDirectory / #classmethod.
							! !
