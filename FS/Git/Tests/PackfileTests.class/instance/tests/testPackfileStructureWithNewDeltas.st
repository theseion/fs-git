
!PackfileTests methodsFor: 'tests' stamp: 'MaxLeske 7/31/2011 19:24'!
testPackfileStructureWithNewDeltas
"see pack-format.txt in the 'technical' directory of the git sources.
Another good resource is this document: http://git.rsbx.net/Documents/Git_Data_Formats.txt.
Also, read comments in #verifyPackfileHeader and
#verifyPackfileEntries"
	packReader := self newPackBytes readStream.
		
	self 
		verifyPackfileHeader;
		verifyPackfileEntries! !
