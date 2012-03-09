
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:21'!
modifyClass: oldDefinition to: newDefinition
	(self classPathFor: oldDefinition) delete.
	self writeClassDefinition: newDefinition.! !
