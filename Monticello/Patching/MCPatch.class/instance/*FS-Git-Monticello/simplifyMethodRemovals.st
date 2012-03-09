
!MCPatch methodsFor: '*FS-Git-Monticello' stamp: 'CamilloBruni 8/9/2011 20:43'!
simplifyMethodRemovals
	self classRemovals do: [ :classRemoval|
		self removeMethodsOfClass: classRemoval definition className].! !
