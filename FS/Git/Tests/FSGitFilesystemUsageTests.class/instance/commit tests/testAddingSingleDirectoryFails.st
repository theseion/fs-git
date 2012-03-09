
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 8/1/2011 16:31'!
testAddingSingleDirectoryFails
	| ref dirname sha1name |
	dirname := 'aDir'.
	sha1name := workingCopy name.
	ref := workingCopy / dirname.
	ref createDirectory.
	self assert: ref exists.
	
	self commit: 'aCommit'.
	"the commit shouldn't have happened:"
	self assert: sha1name = workingCopy name
! !
