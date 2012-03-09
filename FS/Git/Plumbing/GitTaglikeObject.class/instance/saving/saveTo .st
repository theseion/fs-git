
!GitTaglikeObject methodsFor: 'saving' stamp: 'CamilloBruni 7/11/2011 17:23'!
saveTo: aStream
	self validate.
	self saveFixedKeysTo: aStream.
	properties ifNotNil: [properties keysAndValuesDo:[:key :value |
			self saveKey: key value: value to: aStream]].
	aStream lf.
	aStream nextPutAll: message.! !
