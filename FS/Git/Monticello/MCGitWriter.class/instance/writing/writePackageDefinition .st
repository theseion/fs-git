
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:19'!
writePackageDefinition: aMCOrganizationDefinition 
	aMCOrganizationDefinition categories do: [ :category|
		(self reference / category) ensureDirectory].! !
