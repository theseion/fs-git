
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 10/18/2010 16:11'!
testReadNonexistentFile
	self 
		should: [ workingCopy readStreamOn: 'missing File' ]
		raise: FSFileDoesNotExist! !
