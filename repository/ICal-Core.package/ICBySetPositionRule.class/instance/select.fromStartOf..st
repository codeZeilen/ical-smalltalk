shrinking
select: indexFromStart fromStartOf: someDates
	| selectedDates |
	selectedDates := OrderedCollection new.
	(someDates groupBy: [ :each | self groupFor: each ])
		do: [ :eachGroup | 
			indexFromStart > eachGroup size
				ifFalse: [ selectedDates add: (eachGroup at: indexFromStart) ] ].
	^ selectedDates sort