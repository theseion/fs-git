
!MCPatch methodsFor: '*FS-Git-Monticello' stamp: 'CamilloBruni 8/9/2011 20:43'!
methodRemovals
	^ operations select: [ :operation| 
			operation isRemoval and: [operation definition isMethodDefinition]]! !
