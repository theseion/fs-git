
!GitObjectSignature methodsFor: 'private' stamp: 'CamilloBruni 5/19/2011 21:19'!
byteSignatureFor: aGitObject
	| stream data |
	stream := GitStream new.
	data := aGitObject byteData.
	"format for object hash (see manual -> 'Object storage format'):
	<ascii type without space> + <space> + <ascii decimal size> + <byte\0> + <binary object data>"
	stream
		nextPutAll: aGitObject typeCode;
		space;
		nextPutAll: data size asString; "ASCII value for $0 is not 0 but 48!!"
		nullByte;
		nextPutAll: data.
	^stream contents! !
