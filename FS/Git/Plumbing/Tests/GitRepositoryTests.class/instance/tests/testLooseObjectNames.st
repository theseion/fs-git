
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:58'!
testLooseObjectNames
	| blob names |
	reference := (FSFilesystem memory / 'test.git').
	repository := GitRepository on: reference.
	blob := repository storeObject: (GitBlob bytes: 'test').
	names := repository looseObjectNames.
	self assert: names size = 1.
	self assert: names first species = (blob signature species).
	self assert: names first = (blob signature).
	"blob is unreferenced, hence we create a new empty repos"
	repository baseDir delete.! !
