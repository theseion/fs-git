
!MCGitWriter methodsFor: 'visiting' stamp: 'CamilloBruni 8/9/2011 15:40'!
writeSnapshot: aSnapshot
	"write out a nice file based representation so you can easily track changes with a common git tool"
	self writeDefinitions: aSnapshot definitions! !
