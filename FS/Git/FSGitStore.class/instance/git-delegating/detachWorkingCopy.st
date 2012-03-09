
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 18:03'!
detachWorkingCopy
	"removes all entries that exist in the parent tree from the
	working copy. Changes will stay intact.
	The next commit will not contain any objects 
	present in the parent tree."
	
	modManager clearRootTree! !
