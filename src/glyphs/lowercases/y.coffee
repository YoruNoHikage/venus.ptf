exports.glyphs['y'] =
	unicode: 'y'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 10 * spacing + (32)
		spacingRight: 10 * spacing
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
					x: 45
					y: Math.min(
						( 200 / 250 ) * descender,
						contours[0].nodes[2].expandedTo[1].y - ( 100 / 115 ) * thickness - 15
					)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + 50
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 275 - (21)
					y: ( ( 85 / 115 ) * thickness / 250 ) * descender + (12)
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point )
					tensionIn: 1.3
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast
						angle: 180 - 26 + 'deg'
						distr: 0.25
					})
				3:
					x: 480 - (33)
					y: xHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 130 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( 15 / 115 ) * thickness
					y: contours[0].nodes[2].expandedTo[1].y - ( 10 / 115 ) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 180 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point ) + Math.PI
						distr: 0
					})
