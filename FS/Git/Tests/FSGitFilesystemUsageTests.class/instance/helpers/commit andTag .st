
!FSGitFilesystemUsageTests methodsFor: 'helpers' stamp: 'MaxLeske 10/18/2010 16:11'!
commit: aMessage andTag: tagName
	[ [ workingCopy commit: aMessage andTag: tagName ] 
		on: GitStampNameRequest
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest 
			do: [ :req | req resume: 'homer@nuke.com' ]! !
