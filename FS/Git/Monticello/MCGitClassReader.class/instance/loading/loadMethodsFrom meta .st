
!MCGitClassReader methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:34'!
loadMethodsFrom: aMethodFolder meta: isMeta
	| methodFiles categories |
	aMethodFolder exists ifFalse: [ ^ #() ].
	
	"all methods are in a category"
	categories := aMethodFolder directories.
	
	methodFiles := categories gather: [ :categoryFolder|
		categoryFolder glob: [ :file| file name endsWith: '.st' ]].
	
	^ methodFiles collect: [ :methodSource|
		self loadMethodDefinitionFrom: methodSource reference meta: isMeta ]! !
