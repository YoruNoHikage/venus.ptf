exports.glyphs['x'] =
	unicode: 'x'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 5 * spacing + (32) + serifWidth / 2 
		spacingRight: 5 * spacing + serifWidth / 2 
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x + 10 + (34)
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 375 * width + (35)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					###########################
					# FIXME: thickness issues
					###########################
					x: Utils.onLine({
						on: [ contours[1].nodes[1].point, contours[2].nodes[0].point ]
						y: ( 275 / 520 ) * xHeight
						})
					y: ( 275 / 520 ) * xHeight
					###########################
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - Math.PI / 6 + Math.PI / 4
						distr: 0.5
					})
				1:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					###########################
					# FIXME: thickness issues
					###########################
					x: Utils.onLine({
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[0].point ]
						y: ( 275 / 520 ) * xHeight
						})
					y: ( 275 / 520 ) * xHeight
					###########################
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - Math.PI / 6 + Math.PI / 4
						distr: 0.5
					})
