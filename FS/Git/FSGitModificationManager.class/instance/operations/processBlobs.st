
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 8/9/2011 19:14'!
processBlobs
	"only save new files here and put new git tree entries into their parent"
	
	| reference data blob entry |
	self createdPathsDo: [ :tree :path |
		self processBlobAt: path in: tree]! !
