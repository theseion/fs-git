
!MCGitWriter methodsFor: 'visiting' stamp: 'CamilloBruni 8/9/2011 20:44'!
writePatch: aMCPatch 
	(aMCPatch simplifyHierarchy) operations do: [:operation|
		self writePatchOperation: operation].! !
