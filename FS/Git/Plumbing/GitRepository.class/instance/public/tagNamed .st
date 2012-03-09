
!GitRepository methodsFor: 'public' stamp: 'Camillobruni 8/18/2011 16:53'!
tagNamed: aString
	^ self tagNamed: aString ifAbsent: [ 
		GitObjectNotFoundError 
			signal: 'Tag ', aString, ' not found.'
			with: aString ] ! !
