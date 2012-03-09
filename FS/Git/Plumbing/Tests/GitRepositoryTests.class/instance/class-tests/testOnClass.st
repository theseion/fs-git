
!GitRepositoryTests methodsFor: 'class-tests' stamp: 'MaxLeske 8/11/2011 23:00'!
testOnClass
	self should: [ GitRepository on: FSFilesystem onDisk ]
		raise: Error
		description: 'Please provide an instance of a filesystem, not a class.'.! !
