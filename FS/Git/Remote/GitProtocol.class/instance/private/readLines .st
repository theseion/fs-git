
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 12/25/2011 14:29'!
readLines: aBlock
	
	self readLinesUpTo: '0000' do: aBlock! !
