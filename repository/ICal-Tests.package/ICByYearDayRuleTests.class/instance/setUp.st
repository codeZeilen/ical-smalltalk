as yet unclassified
setUp
	super setUp.
	event addRecurrenceRule: (ICRecurrenceRule fromICalString: 'FREQ=WEEKLY;COUNT=10;BYYEARDAY=-221,144').
	byRule := (ICSchedule fromEvent: event) recurrenceSchedules first byRules first