
!GitTree methodsFor: 'accessing' stamp: 'MaxLeske 6/26/2010 22:38'!
at: aName
	^ repository objectWithSignature: (self entryAt: aName) objectSignature! !
