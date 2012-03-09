
!GitCommitTests methodsFor: 'tests' stamp: 'MaxLeske 6/27/2010 19:55'!
testPrintOn
	| message commit template |
	message := 'printOn test'.
	commit := GitCommit new.
	commit message: message.
	
	template := 'a GitCommit(''printOn test'')'.
	
	self assert: commit printString = template.! !
