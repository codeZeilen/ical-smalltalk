rfc2445-tests
testweeklyTueThurFor5Wk1
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weeklyTueThurFor5Wk1.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates do: [ :eachDate | self assert: (#(3 5) includes: eachDate dayOfWeek) ].
	self
		assert: generatedDates first
		equals:
			(self dateAndTimeClass
				year: 1997
				month: 9
				day: 2
				hour: 9
				minute: 0
				second: 0).
	self
		assert: generatedDates last
		equals:
			(self dateAndTimeClass
				year: 1997
				month: 10
				day: 2
				hour: 9
				minute: 0
				second: 0)