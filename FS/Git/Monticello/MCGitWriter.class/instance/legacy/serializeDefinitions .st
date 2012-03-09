
!MCGitWriter methodsFor: 'legacy' stamp: 'CamilloBruni 8/9/2011 15:39'!
serializeDefinitions: aCollection
	^ String streamContents: [ :s |
		(MCStWriter on: s)
			writeDefinitions: aCollection ]! !
