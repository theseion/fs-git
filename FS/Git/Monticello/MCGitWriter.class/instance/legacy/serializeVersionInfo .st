
!MCGitWriter methodsFor: 'legacy' stamp: 'lr 10/29/2010 17:44'!
serializeVersionInfo: aVersionInfo
	^ String streamContents: [ :s |
		(MCVersionInfoWriter on: s)
			writeVersionInfo: aVersionInfo ]! !
