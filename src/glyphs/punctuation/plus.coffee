exports.glyphs['plus'] =
	unicode: '+'
	glyphName: "plus"
	characterName: "PLUS SIGN"
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 25 * spacing + (0)
		spacingRight: 25 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 295 / 520 ) * xHeight - (35)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: xHeight + 20
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
