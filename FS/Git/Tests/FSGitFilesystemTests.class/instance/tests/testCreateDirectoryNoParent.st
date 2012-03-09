
!FSGitFilesystemTests methodsFor: 'tests' stamp: 'CamilloBruni 7/20/2011 13:09'!
testCreateDirectoryNoParent
	| path |
	path := FSPath root / 'griffle' / 'glob'.
	self 
		should: [ filesystem createDirectory: path ]
		raise: FSDirectoryDoesNotExist! !
