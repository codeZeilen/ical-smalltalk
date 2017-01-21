baselines
baseline10: spec
	<version: '1.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://squeaksource.com/ical'.
			spec
				project: 'CommandShell'
					with: [ 
							spec
								className: 'ConfigurationOfCommandShell';
								loads:'Piping';
								versionString: '1.0';
								repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				project: 'Chronos'
					with: [ 
							spec
								className: 'ConfigurationOfChronos';
								versionString: #stable;
								repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec
				package: 'ICal' with: [ spec requires: #('CommandShell') ];
				package: 'ICalChronos' with: [ spec requires: #('ICal' 'Chronos') ];
				package: 'ICalMagritte' with: [ spec requires: #('ICal') ].
			spec
			group: 'default' with: #('Core');
				group: 'Core' with: #('ICal');
				group: 'ICal-Magritte' with: #('ICalMagritte');
				group: 'ICal-Chronos' with: #('ICalChronos') ]