baselines
baseline12: spec
	<version: '1.2-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://squeaksource.com/ical'.
		spec
				project: 'Chronos'
					with: [ 
							spec
								className: 'ConfigurationOfChronos';
								versionString: #stable;
								file: 'ConfigurationOfChronos';
								repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec
				package: 'ICal-Core' ;
				package: 'ICal-Tests' with: [ spec requires: #('ICal-Core') ];
				package: 'ICalChronos' with: [ spec requires: #('ICal-Core' 'Chronos') ];
				package: 'ICalMagritte' with: [ spec requires: #('ICal-Core') ].
			spec
				group: 'default' with: #('ICal-Core');
				"group:'Core' with:#('ICal-Core');"
				group: 'Tests' with: #('ICal-Tests');
				group: 'ICal-Magritte' with: #('ICalMagritte');
				group: 'ICal-Chronos' with: #('ICalChronos') ].
			spec for: #squeakCommon do:[	spec
				project: 'CommandShell'
					with: [ 
							spec
								className: 'ConfigurationOfCommandShell';
								loads:'Piping';
								versionString: '1.0-baseline';
								file: 'ConfigurationOfCommandShell';
								repository: 'http://www.squeaksource.com/MetacelloRepository' ].
							spec package:'ICal-Core' with:[spec requires:#('CommandShell')]].
		spec for: #gemstone do:[
			spec package:'ICal-Core.Gemstone' with:[spec requires: #('ICal-Core')];
				package: 'ICal-Tests' with: [ spec requires: #('ICal-Core.Gemstone') ];
				package: 'ICalChronos' with: [ spec requires: #('ICal-Core.Gemstone' 'Chronos') ];
				package: 'ICalMagritte' with: [ spec requires: #('ICal-Core.Gemstone') ].
			spec
				group: 'default' with: #('ICal-Core')]
							
