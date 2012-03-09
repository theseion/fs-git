
!GitObjectSignatureTests methodsFor: 'helpers' stamp: 'MaxLeske 7/24/2010 17:18'!
createTag
	^ GitTag new
		name: self tagName;
		message: self tagMessage;
		tagger: self defaultStamp;
		object: self createCommit;
		yourself! !
