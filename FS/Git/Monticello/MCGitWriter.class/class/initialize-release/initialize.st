
!MCGitWriter class methodsFor: 'initialize-release' stamp: 'CamilloBruni 3/9/2012 16:59'!
initialize 
	super initialize.
	EscapeCharacters := SmallDictionary new.
	EscapeCharacters 
		at: $: put: Character space;
		at: $/ put: '&#47;';
		at: $\ put: '&#92;'.! !
