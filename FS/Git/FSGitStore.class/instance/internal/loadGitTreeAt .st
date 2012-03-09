
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/15/2011 21:13'!
loadGitTreeAt: aPath
	"recursivel walk through all the git trees and resolve the path"
	|currentGitTree|
	currentGitTree := modManager rootTree.
	
	(aPath withParents reject: [ :path | path isRoot]) do: [ :path |
		currentGitTree isTree ifFalse: [ ^ nil ]. 
		currentGitTree
			entryAt: path basename
			ifPresent: [ :entry | 
				currentGitTree := repository objectWithSignature: entry objectSignature.
				self updateCacheAt: path with: currentGitTree.]
			ifAbsent: [ 
				^ nil ] ].
	^ currentGitTree! !
