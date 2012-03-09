
!MCGitWriter methodsFor: 'serializing' stamp: 'CamilloBruni 4/28/2011 23:48'!
serializeMethodDefinition: aMethodDefinition 
	^ String streamContents: [ :s |
		(MCStWriter on: s)
			visitMethodDefinition: aMethodDefinition]! !
