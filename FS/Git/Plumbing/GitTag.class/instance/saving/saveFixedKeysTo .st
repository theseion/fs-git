
!GitTag methodsFor: 'saving' stamp: 'MaxLeske 6/30/2010 15:13'!
saveFixedKeysTo: aStream
	"From builtin-mktag.c:
	A signature file has a very simple fixed format: four lines
	of ""object <sha1>"" + ""type <typename>"" + ""tag <tagname>"" +
	""tagger <committer>"", followed by a blank line, a free-form tag
	message and a signature block that git itself doesn't care about,
	but that can be verified with gpg or similar."
	self saveKey: 'object' value: self object signature hexHash to: aStream.
	self saveKey: 'type' value: self object typeCode to: aStream.
	self saveKey: 'tag' value: self name to: aStream.
	self saveKey: 'tagger' value: self tagger printString to: aStream.! !
