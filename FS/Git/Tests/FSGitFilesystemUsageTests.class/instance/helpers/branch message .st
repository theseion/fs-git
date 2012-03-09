
!FSGitFilesystemUsageTests methodsFor: 'helpers' stamp: 'MaxLeske 10/18/2010 16:11'!
branch: branchName message: aMessage
	[ [ workingCopy branch: branchName message: aMessage ] 
		on: GitStampNameRequest
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest 
			do: [ :req | req resume: 'homer@nuke.com' ]! !
