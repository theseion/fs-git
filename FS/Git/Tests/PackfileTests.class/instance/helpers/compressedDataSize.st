
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/1/2011 20:20'!
compressedDataSize 
	"Expand the data for two reasons:
		1: to find next header we need to know the length
			of the compressed data.
		2: verify compressed data"
	| position compressedSize |
	position := packReader position.
	compressedSize := self compressedDataSize: packReader upToEnd.
	packReader position: position.
	
	^ compressedSize! !
