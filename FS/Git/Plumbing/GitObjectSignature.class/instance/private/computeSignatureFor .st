
!GitObjectSignature methodsFor: 'private' stamp: 'MaxLeske 5/8/2010 20:41'!
computeSignatureFor: aGitObject
	signature := self byteSignatureFor: aGitObject.
	integerHash := self integerHashFrom: signature! !
