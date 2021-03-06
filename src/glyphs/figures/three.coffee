exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (34)
					y: ( 245 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					# x: 200 + 210 * width + (109)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 165 + (109),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 210 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 - 2 + 'deg'
						distr: 0.25
					})
				3:
					expandedTo:
						[
							{
								x: contours[0].nodes[4].expandedTo[1].x + ( 110 / 115 ) * thickness + 60
								y: contours[0].nodes[4].expandedTo[0].y
								typeOut: 'line'
								dirIn: - Math.max(
									( 15 / 115 ) * thickness - 15 * width + 15,
									0 ) + 'deg'
							}
							{
								x: contours[0].nodes[4].expandedTo[1].x + 60
								y: contours[0].nodes[4].expandedTo[1].y
								typeIn: 'line'
								dirOut: 0 + 'deg'
							}
						]
				4:
					x: contours[0].nodes[1].x - 85
					y: ( 350 / 750 ) * capHeight - ( 60 / 115 ) * thickness + 60
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 73 / 115 ) * thickness * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].expandedTo[0].y - ( 20 / 115 ) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 115 ) * thickness * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 0
					})
				1:
					expandedTo:
						[
							{
								x: contours[1].nodes[0].expandedTo[1].x + ( 90 / 115 ) * thickness + 85
								y: contours[1].nodes[0].expandedTo[0].y
								dirOut: Math.max(
									( 15 / 115 ) * thickness - 15 * width + 15,
									0 ) + 'deg'
							}
							{
								x: contours[1].nodes[0].expandedTo[1].x + 80
								y: contours[1].nodes[0].expandedTo[1].y
								dirIn: 0 + 'deg'
							}
						]
				2:
					x: contours[0].nodes[2].x - (26)
					y: ( 555 / 750 ) * capHeight + (8)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness
						angle: 180 + 5 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 92 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 25 + (34)
					y: capHeight  - ( 210 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
