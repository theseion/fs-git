
!GitProtocol methodsFor: 'accessing' stamp: 'CamilloBruni 12/25/2011 13:44'!
refs
	^ refs ifNil: [ refs := self uploadPack ]! !
