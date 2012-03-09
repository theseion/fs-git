
!MCGitVersionInfo methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:09'!
loadName
	| tags |
	tags := commit tags.
	tags isEmpty 
		ifFalse: [ ^ tags first name ].
	^ commit sha1! !
