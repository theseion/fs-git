
!GitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 7/6/2011 16:23'!
looseObjectBytesAt: aGitObjectSignature ifAbsent: aBlock
	^ (self looseObjectStreamAt: aGitObjectSignature ifAbsent: [ ^ aBlock value ]) contents! !
