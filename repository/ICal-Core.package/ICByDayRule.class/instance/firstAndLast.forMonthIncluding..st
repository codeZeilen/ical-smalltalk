growing
firstAndLast: dayOfWeek forMonthIncluding: startDate
	| firstAndLast dateArray period periodStart periodEnd |
	period := startDate asMonth.
	dateArray := #(1 2 3 4 5 6 7).
	firstAndLast := Array new: 2.
		periodStart := period start dayOfWeek.
	periodEnd := period end dayOfWeek.
	0 to: 6 do: [ :each | 
		(dateArray atWrap: periodStart + each) = dayOfWeek
			ifTrue: [ firstAndLast at: 1 put: period start dayOfMonth + each ].
		(dateArray atWrap: periodEnd - each) = dayOfWeek
			ifTrue: [ firstAndLast at: 2 put: period end dayOfMonth - each ] ].
	^ firstAndLast