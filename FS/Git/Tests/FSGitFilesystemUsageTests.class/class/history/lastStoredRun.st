
!FSGitFilesystemUsageTests class methodsFor: 'history' stamp: 'CamilloBruni 8/1/2011 16:49'!
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new) add: #testDeletingMultipleDirectories; add: #testDeleting; add: #testDeletingMultipleWithIntermediateCreate; yourself)); add: (#passed->((Set new) add: #testRevisionChangeWithReload; add: #testEquals; add: #testLoadExistingFilesFromHead; add: #testParents; add: #testDeletingDirectory; add: #testCreateAndDeleteFile; add: #testReset; add: #testReadingNonBareRepository; add: #testGettingCommitTimestamp; add: #testTagging; add: #testCommittingCreateAndDelete; add: #testCopyingExistingFile; add: #testParentsWithReload; add: #testModifying; add: #testDeleteExistingFile; add: #testDeleteModifiedFile; add: #testBranchMessageAndTag; add: #testResetWithDeletions; add: #testBranching; add: #testReadExistingModifiedFile; add: #testDetachingWorkingCopy; add: #testTags; add: #testAddingMultipleDirectoriesFails; add: #testCreateAndReadFile; add: #testAddingWithReload; add: #testActiveBranch; add: #testReadNonexistentFile; add: #testCompleteUsecase; add: #testReadExistingFile; add: #testReadingBareRepository; add: #testAddingSingleDirectoryFails; add: #testCommittingWithReload; add: #testRevisionChange; add: #testAdding; add: #testCompleteUsecase2; add: #testLoadExistingFilesFromRevision; add: #testModifyingWithReload; add: #testCopyingWithReload; add: #testLoadExistingFiles; add: #testModifyExistingFile; add: #testCopying; add: #testCommitting; add: #testEmptyCommitTimeStamp; yourself)); add: (#failures->((Set new))); add: (#timeStamp->(DateAndTime basicNew instVarAt: 1 put: 60559; instVarAt: 2 put: (Duration seconds: 7200 nanoSeconds: 0); instVarAt: 3 put: 2455775; instVarAt: 4 put: 0; yourself)); yourself)! !