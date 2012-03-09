
!MCGitVersionInfo methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:00'!
loadBasicProperties
	id := commit signature hexHash.
	author := commit author name.
	date := commit author timeStamp date.
	time := commit author timeStamp time.
	message := commit message.
	name := self loadName.
	"ancestors are lazy"! !
