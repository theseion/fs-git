
!AbstractGitProtocol class methodsFor: 'example' stamp: 'CamilloBruni 1/13/2012 18:22'!
example1
	|git|
	
	"setting up the remote repository"
	git := AbstractGitProtocol url: 'git://github.com/dh83/p.git'.

	"inspecting the repository returning list/dicts with GitObjectSignature"
	git refs.
	git branches.
	git tags.
	git head.

	"loading a remote object"
	^ git want: git head! !
