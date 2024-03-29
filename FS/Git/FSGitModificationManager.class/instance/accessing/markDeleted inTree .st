
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 7/20/2011 15:12'!
markDeleted: aPath inTree: aTree
	| duplicateDeletions |
	aPath isRoot ifTrue: [self halt].
	hasChanges := true.
	
	"remove any children of the deleted path"
	duplicateDeletions := OrderedCollection new.
	deletedPaths keysAndValuesDo: [ :key :paths|
		(paths includesSubPath: aPath)
			ifTrue: [ duplicateDeletions add: key]].
	duplicateDeletions do: [:aKey | deletedPaths removeKey: aKey].
		
	"collect a list of deleted paths"
	(deletedPaths
		at: aPath parent
		ifAbsentPut: [ FSGitSetWrapper new]) 
			add: aPath.! !
