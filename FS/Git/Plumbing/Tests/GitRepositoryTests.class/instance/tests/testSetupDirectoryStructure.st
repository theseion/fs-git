
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 6/30/2010 08:20'!
testSetupDirectoryStructure
	| dirs |
	dirs := #(
		'HEAD'
		'info'
		'objects'
		'objects/pack'
		'objects/info'
		'refs'
		'refs/heads'
		'refs/tags').
	dirs do: [ :dir | self assert: (repository baseDir resolveString: dir) exists ]! !
