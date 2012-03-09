
!MCGitClassReader methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:41'!
loadDefinitions
	classDefinition := self loadCassDefinition.
	definitions add: classDefinition.
	
	instanceMethodDefinitions := self loadInstanceMethodDefinitions.
	definitions addAll: instanceMethodDefinitions.
	
	classMethodDefinitions := self loadClassMethodDefinitions.
	definitions addAll: classMethodDefinitions.! !
