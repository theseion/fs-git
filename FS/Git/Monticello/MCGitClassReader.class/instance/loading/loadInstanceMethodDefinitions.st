
!MCGitClassReader methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:25'!
loadInstanceMethodDefinitions
	^ self loadMethodsFrom: (classFolder reference / 'instance-side') meta: false! !
