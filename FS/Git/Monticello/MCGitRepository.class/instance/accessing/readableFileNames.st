
!MCGitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 20:17'!
readableFileNames
	"^ self repository tags keys collect: [ :tag| tag object signature hexHash, '.git' ]"
	^ self repository tags keys collect: [ :tag| tag name, '.git' ]! !
