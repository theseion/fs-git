
!FSGitModificationManager methodsFor: 'private' stamp: 'MaxLeske 10/18/2010 20:25'!
newTreeFrom: aTree
	| tree |
	tree := GitTree new.
	tree entries: aTree entries.
	^ tree! !
