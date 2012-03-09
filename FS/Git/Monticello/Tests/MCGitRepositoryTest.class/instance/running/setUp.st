
!MCGitRepositoryTest methodsFor: 'running' stamp: 'CamilloBruni 2/1/2012 23:55'!
setUp
	
	filesystem :=  FSFilesystem memory.
	repository :=  MCGitRepository reference: filesystem root.
	
	GitStamp
		defaultName: 'Homer Simpson';
		defaultEmail: 'homer@nuke.com'! !
