
!FSGitRepositoryTests methodsFor: 'tests' stamp: 'CamilloBruni 1/24/2012 14:04'!
testFullTags
	| commit tags tag|
	commit := basicRepository objectWithSignature: (basicRepository resolveRef: 'refs/heads/branch1').
	[[ tag := GitTag
		makeFullTag: 'version 4.3alpha'
		for: commit
		message: 'PGP encrypted string'
		in: basicRepository ] 
			on: GitStampNameRequest 
			do: [ :req | req resume: 'Homer Simpson' ]]
				on: GitStampEmailRequest
				do: [ :req | req resume: 'homer@nuke.com' ].
			
	tags := repository tags.
	
	self assert: tags size = 1.
	
	self assert: tags keys first = tag.
	self assert: tags values first species = FSGitFilesystem.
	self assert: tags values first revision = commit.! !
