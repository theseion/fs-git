
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/2/2011 22:10'!
verifyNewFormatDeltification
	| packedObject position result |
	"GitPackedObject already contains the necessary code."
	position := packReader position.
	packedObject := GitPackedObject new.
	packedObject instVarNamed: 'file' put: packReader.

	self skipEntryHeader.
	result := self verifyDeltificationWithBaseAt: position - packedObject readBaseObjectOffset.
	packReader position: position.
	^ result! !
