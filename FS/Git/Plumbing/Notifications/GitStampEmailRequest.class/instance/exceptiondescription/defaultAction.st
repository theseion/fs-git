
!GitStampEmailRequest methodsFor: 'exceptiondescription' stamp: 'CamilloBruni 6/22/2011 05:21'!
defaultAction
	| mail |
	mail := GitStamp requestEmail.
	GitStamp defaultEmail: mail.
	^ mail! !
