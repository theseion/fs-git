
!MCGitClassReader methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:45'!
loadClassMethodDefinitions
	^ self loadMethodsFrom: (classFolder reference / 'class-side') meta: true! !
