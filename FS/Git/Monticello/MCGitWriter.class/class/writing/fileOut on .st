
!MCGitWriter class methodsFor: 'writing' stamp: 'lr 10/29/2010 17:31'!
fileOut: aVersion on: aStream
	| inst |
	inst := self on: aStream.
	inst writeVersion: aVersion! !
