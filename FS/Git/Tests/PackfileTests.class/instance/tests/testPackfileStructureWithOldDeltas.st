
!PackfileTests methodsFor: 'tests' stamp: 'MaxLeske 7/31/2011 20:30'!
testPackfileStructureWithOldDeltas
"see pack-format.txt in the 'technical' directory of the git sources.
Another good resource is this document: http://git.rsbx.net/Documents/Git_Data_Formats.txt.
Also, read comments in #verifyPackfileHeader and
#verifyPackfileEntries"
	packReader := self oldPackBytes readStream.
		
	self 
		verifyPackfileHeader;
		verifyPackfileEntries! !
