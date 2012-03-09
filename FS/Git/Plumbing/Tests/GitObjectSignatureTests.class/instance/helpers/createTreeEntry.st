
!GitObjectSignatureTests methodsFor: 'helpers' stamp: 'MaxLeske 7/22/2010 19:56'!
createTreeEntry
	^ GitTreeEntry
			entryName: self treeEntryName
			mode: GitTreeEntry fileMode
			objectSignature: self createBlob signature! !
