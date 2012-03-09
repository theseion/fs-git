
!MCGitRepository methodsFor: 'interface' stamp: 'CamilloBruni 1/23/2012 19:04'!
includesVersionNamed: aString
	self flag: '(aString copyUpToLast: $.)'.
	^ self repository tagNames includes: aString.! !
