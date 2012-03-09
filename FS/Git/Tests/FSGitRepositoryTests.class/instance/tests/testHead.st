
!FSGitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 8/11/2011 21:32'!
testHead
	| head fsOnHead |
	head := basicRepository objectWithSignature: basicRepository headRef.
	fsOnHead := repository head.
	self assert: fsOnHead species = FSGitFilesystem.
	self assert: head = (fsOnHead  revision)! !
