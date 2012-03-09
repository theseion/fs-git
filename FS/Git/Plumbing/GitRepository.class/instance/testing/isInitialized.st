
!GitRepository methodsFor: 'testing' stamp: 'MaxLeske 7/23/2010 18:13'!
isInitialized
	| isInitialized foundDirectories |
	foundDirectories := self gitDirectories collect: [:each | (self baseDir resolve: each) exists].
	isInitialized := foundDirectories size = (self gitDirectories size).
	isInitialized := self headFile exists.
	^isInitialized! !
