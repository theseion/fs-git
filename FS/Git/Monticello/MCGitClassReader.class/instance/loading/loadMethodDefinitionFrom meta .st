
!MCGitClassReader methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:40'!
loadMethodDefinitionFrom: aFile meta: isMeta
	| methods |
	"
	self flag: 'TODO: check for multiple methods per file!!'.
	^ MCMethodDefinition
		className: self className
		classIsMeta: isMeta
		selector: #test
		category: aFile parent basename
		timeStamp: nil
		source: sources"
		
	methods := (MCStReader on: aFile readStream) definitions.
	self assert: methods size == 1.
	^ methods first! !
