
!MCGitVersionInfo methodsFor: 'initialize release' stamp: 'CamilloBruni 1/23/2012 23:18'!
initializeWithFilesystem: aGitFS commit: aGitCommit
	"Don't do super initialize and keep the instVars niled out for lazy initialization".
	filesystem := aGitFS.
	commit := aGitCommit.
	self loadBasicProperties.
	! !
