versions
version12: spec
	<version: '1.2' imports: #('1.2-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: 'New release referencing the latest CommandShell version.'.
			spec author: 'Patrick Rein'.
			spec timestamp: '2022-05-24 15:46'.
			spec
				project: 'CommandShell' with: '1.0-baseline';
				project: 'Chronos' with: #stable.
			spec
				package: 'ICal-Core' with: 'ICal-Core-PaulDeBruicker.5';
				package: 'ICal-Tests' with: 'ICal-Tests-PaulDeBruicker.6';
				package: 'ICalChronos' with: 'ICalChronos-PaulDeBruicker.8';
				package: 'ICalMagritte' with: 'ICalMagritte-pmm.10' ].
	spec for: #gemstone do: [ spec package: 'ICal-Core.Gemstone' with: 'ICal-Core.Gemstone-PaulDeBruicker.5' ]
