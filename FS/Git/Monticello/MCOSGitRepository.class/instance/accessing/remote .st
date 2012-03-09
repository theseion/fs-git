
!MCOSGitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 18:47'!
remote: aString
	self remote = aString
		ifFalse:[
			remote := aString.
			self updateRemote ].! !
