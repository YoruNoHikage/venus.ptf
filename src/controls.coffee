exports.controls = [
	tab: true
	label: 'Func'
	icon: '...'
	parameters: [
		name: 'xHeight'
		label: 'x Height'
		min: 300
		max: 900
		step: 1
		init: 520
		minAdvised: 300
		maxAdvised: 800
		disabled: false
		demo: true
	,
		name: 'capDelta'
		label: 'Capital Height'
		min: 0
		max: 400
		step: 1
		init: 230
		minAdvised: 0
		maxAdvised: 350
		disabled: false
		demo: true
	,
		name: 'ascender'
		label: 'Ascender'
		min: 50
		max: 800
		step: 1
		init: 230
		minAdvised: 50
		maxAdvised: 500
		disabled: false
		demo: true
	,
		name: 'descender'
		label: 'Descender'
		min: -850
		max: -50
		step: 1
		init: -250
		minAdvised: -350
		maxAdvised: -100
		disabled: false
		demo: true
	,
		name: 'crossbar'
		label: 'Crossbar'
		min: 0.8
		max: 1.1
		step: 0.001
		init: 1
		minAdvised: 0.88
		maxAdvised: 1.05
		disabled: false
		demo: true
	,
		name: 'width'
		label: 'Width'
		min: 0.4
		max: 5
		step: 0.01
		init: 1
		minAdvised: 0.85
		maxAdvised: 1.3
		disabled: false
		demo: true
	,
		name: 'slant'
		label: 'Slant'
		min: -15
		max: 30
		step: 0.2
		init: 0
		minAdvised: -5
		maxAdvised: 8
		disabled: false
		demo: true
	,
		name: 'overshoot'
		label: 'Overshoot'
		min: 0
		max: 20
		step: 1
		init: 10
		minAdvised: 0
		maxAdvised: 20
		disabled: false
		demo: true
	]
,
	tab: true
	label: 'Style'
	icon: '...'
	parameters: [
		name: 'thickness'
		label: 'Thickness'
		min: 4
		max: 180
		step: 1
		init: 115
		minAdvised: 60
		maxAdvised: 130
		disabled: false
		demo: true
	,
		name: '_contrast'
		label: 'Contrast'
		min: -1.3
		max: -0.15
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.3
		disabled: false
		demo: true
	,
		name: '_contrastExtremity'
		label: 'extremity'
		min: -1.5
		max: -0.2
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.5
		disabled: false
		demo: true
		child: true
	,
		name: 'aperture'
		label: 'Aperture'
		min: 0.3
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0.9
		maxAdvised: 1.2
		disabled: false
		demo: true
	,
		name: 'apertureTop'
		label: 'Top'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		demo: true
		child: true
	,
		name: 'apertureBottom'
		label: 'Bottom'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		demo: true
		child: true
	,
		name: 'curviness'
		label: 'Curviness'
		min: 0.1
		max: 1.4
		step: 0.1
		init: 0.6
		minAdvised: 0.4
		maxAdvised: 0.8
		disabled: false
		demo: true
	,
		name: 'opticThickness'
		label: 'Optic thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 1
		minAdvised: 0.9
		maxAdvised: 1.1
		disabled: false
		demo: true
	,
		name: 'breakPath'
		label: 'Break Path'
		min: 0
		max: 1
		step: 0.1
		init: 1
		minAdvised: 0.5
		maxAdvised: 1
		disabled: true
		demo: true
	,
		name: 'axis'
		label: 'axis'
		min: - 35
		max: 35
		step: 1
		init: 0
		minAdvised: -15
		maxAdvised: 15
		disabled: true
		demo: true
	]
,
	tab: true
	label: 'Serif'
	icon: '...'
	parameters: [
		name: 'serifWidth'
		label: 'Serif Width'
		min: 0.001 #temporary FIX (instead 0)
		max: 200
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 80
		disabled: false
		demo: true
	,
		name: 'midWidth'
		label: 'Middle Width'
		min: 0.5
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: -0.8
		maxAdvised: 1.2
		disabled: false
		demo: true
	,
		name: 'serifHeight'
		label: 'Serif Height'
		min: 0.001
		max: 100
		step: 1
		init: 0.001
		minAdvised: 0
		maxAdvised: 80
		disabled: false
		demo: true
	,
		name: 'serifMedian'
		label: 'Serif Median'
		min: 0.2
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.3
		disabled: false
		demo: true
	,
		name: 'serifCurve'
		label: 'Bracket Curve'
		min: 0
		max: 100
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 80
		disabled: false
		demo: true
	,
		name: 'serifRoundness'
		label: 'Serif Roundness'
		min: 0
		max: 1.8
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		demo: true
	,
		name: 'serifArc'
		label: 'Serif Arc'
		min: -1.5
		max: 0.6
		step: 0.01
		init: 0
		minAdvised: -0.2
		maxAdvised: 0.5
		disabled: false
		demo: true
	,
		name: 'serifTerminal'
		label: 'Serif Terminal'
		min: -0.5
		max: 2
		step: 0.01
		init: 0
		minAdvised: -0.2
		maxAdvised: 0.8
		disabled: false
		demo: true
	,
		name: 'serifTerminalCurve'
		label: 'Serif Terminal Curve'
		min: 0
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		demo: true
	,
		name: 'spurHeight'
		label: 'Spur Height'
		min: 0
		max: 3
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 1
		disabled: false
		demo: true
	,
		name: 'serifRotate'
		label: 'Serif Rotation'
		min: 0
		max: 2
		step: 0.1
		init: 0
		minAdvised: 0
		maxAdvised: 0.8
		disabled: false
		demo: true
	,
		name: 'serifBall'
		label: 'Terminal Ball'
		min: 0.01
		max: 3
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.1
		disabled: true
		demo: true
	]
]
