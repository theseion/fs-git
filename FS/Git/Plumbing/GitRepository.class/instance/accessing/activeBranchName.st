
!GitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 7/13/2011 19:34'!
activeBranchName
"Answers the name of the currently active branch which is the branch referenced in HEAD. This method can answer nil."

	| headContents |
	headContents := self headFile readStreamDo: [ :stream | stream contents asString withBlanksTrimmed ].
	(headContents beginsWith: 'ref:')
		ifTrue: [ ^ (headContents subStrings: '/') last ]
		ifFalse: [ ^ nil ]! !
