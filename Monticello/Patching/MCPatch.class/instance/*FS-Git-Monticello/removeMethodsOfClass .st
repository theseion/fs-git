
!MCPatch methodsFor: '*FS-Git-Monticello' stamp: 'CamilloBruni 8/9/2011 20:43'!
removeMethodsOfClass: aClassName
	self methodRemovals do: [ :methodOperation|
		methodOperation definition className == aClassName
			ifTrue: [operations remove: methodOperation]]! !
