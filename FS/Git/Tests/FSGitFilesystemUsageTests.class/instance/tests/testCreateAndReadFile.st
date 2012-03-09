
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 08:56'!
testCreateAndReadFile
	| filename |
	filename := 'missing File'.
	self deny: (workingCopy / filename) exists.
	self
		shouldnt: [ (workingCopy / filename) writeStreamDo: [ :stream |
			stream nextPutAll: 'initial content' ] ]
		raise: FSFileDoesNotExist.
	self assert: (workingCopy readStreamOn: filename) contents asString = 'initial content'! !
