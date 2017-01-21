versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: 'initial development version'.
			spec author: 'PaulDeBruicker'.
			spec timestamp: '12/12/2012 17:22'.
			spec
				project: 'CommandShell' with: '1.0';
				project: 'Chronos' with: #stable.
			spec
				package: 'ICal' with: 'ICal-PaulDeBruicker.85';
				package: 'ICalChronos' with: 'ICalChronos-PaulDeBruicker.5';
				package: 'ICalMagritte' with: 'ICalMagritte-pmm.10' ]