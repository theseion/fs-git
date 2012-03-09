
!MCPatch methodsFor: '*FS-Git-Monticello' stamp: 'CamilloBruni 8/9/2011 20:43'!
simplifyClassRemovals
	self packageRemovals do: [ :packageRemoval|
		operations remove: packageRemoval.
		self removeMethodsOfClass: packageRemoval definition className].! !
