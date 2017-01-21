creation scripts
baselineScript
	MetacelloToolBox
		createBaseline: '1.0-baseline'
		for: 'ICal'
		repository: 'http://squeaksource.com/ical'
		requiredProjects: #('OSProcess' 'Chronos')
		packages: #('ICal' 'ICalChronos' 'ICalMagritte')
		dependencies:
			{('ICalMagritte' -> #('ICal')).
			('ICalChronos' -> #('ICal' 'Chronos'))}
		groups:
			{('Core' -> #('ICal')).
			('ICal-Magritte' -> #('ICalMagritte')).
			('ICal-Chronos' -> #('ICalChronos'))}	"Project name"