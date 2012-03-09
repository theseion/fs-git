
!GitObjectSignatureTests methodsFor: 'helpers' stamp: 'MaxLeske 7/24/2010 17:18'!
referenceAuthor
	^ GitStamp new
		name: self authorName;
		email: self authorEmail;
		timeStamp: self authorTimeStamp;
		yourself! !
