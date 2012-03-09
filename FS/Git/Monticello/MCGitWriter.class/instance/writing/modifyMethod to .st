
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:19'!
modifyMethod: oldDefinition to: newDefinition
	(self methodPathFor: oldDefinition) delete.
	self writeMethodDefinition: newDefinition.! !
