
!FSGitFilesystem methodsFor: 'comparing' stamp: 'CamilloBruni 7/15/2011 15:59'!
= other
	(self name isEmptyOrNil and: [ other name isEmptyOrNil ])
		ifFalse: [ ^ self name = other name ]
		ifTrue: [ ^ self == other ]! !
