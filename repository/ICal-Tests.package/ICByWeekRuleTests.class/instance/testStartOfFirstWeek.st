as yet unclassified
testStartOfFirstWeek

	| testing |
	testing := [:actual :expected |
				| result |
				result := byRule startOfFirstWeekAccordingToRFC2445For: actual.
				result := result offset: result class localOffset.
				self
					assert: result 
					equals: expected].

	(Array 
		with: (self dateAndTimeClass year: 2004 month: 3 day: 3) 
		with: (self dateAndTimeClass year: 2003 month: 12 day: 29)
	 	with: (self dateAndTimeClass year: 2005 month: 3 day: 3) 
		with: (self dateAndTimeClass year: 2005 month: 1 day: 3))
			pairsDo: testing.
		
	byRule weekStart: 'SA'.
		
	(Array 
		with: (self dateAndTimeClass year: 2004 month: 3 day: 3)
		with: (self dateAndTimeClass year: 2004 month: 1 day: 3)
		with: (self dateAndTimeClass year: 2005 month: 3 day: 3)
		with: (self dateAndTimeClass year: 2005 month: 1 day: 1))
			pairsDo: testing.