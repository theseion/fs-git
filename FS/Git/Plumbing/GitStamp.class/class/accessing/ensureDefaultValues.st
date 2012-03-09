
!GitStamp class methodsFor: 'accessing' stamp: 'CamilloBruni 6/22/2011 05:37'!
ensureDefaultValues
	DefaultName ifNil: [
			self defaultName: 'John Doe'].
	DefaultEmail ifNil: [
			self defaultEmail: 'john@foo.com']! !
