exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 50 + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[3].nodes[1].x - 15 * width
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 387 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[3].nodes[1].x - 35 * width
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 125 + 250 * width
					y: contours[3].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					directionY: -1
					right: false
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve )
					y: contours[2].nodes[0].expandedTo[0].y
				1:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve )
					y: contours[2].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x
					# leftWidth: 75
					# rightWidth: 75
			# parentParameters:
			# 	serifMedian: serifMedian * 75/100
			# 	serifHeight: serifHeight * 16/20
			# 	serifCurve: serifCurve * 30/15
		3:
			base: 'serif-v'
			parentAnchors:
				1:
					x: Math.max(contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve )
					y: contours[1].nodes[1].expandedTo[1].y
				0:
					x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					right: false
					# leftWidth: 60
					# leftCurve: 1.2
					baseRight: contours[1].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-15) + 'deg' ] )
		4:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[3].nodes[0].expandedTo[1].x, contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve )
					y: contours[3].nodes[0].expandedTo[1].y
				1:
					x: Math.max(contours[3].nodes[0].expandedTo[0].x, contours[3].nodes[1].expandedTo[0].x - serifHeight - serifCurve )
					y: contours[3].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[3].nodes[1].expandedTo[1].x
					# rightWidth: 60
					left: false
					baseLeft: contours[3].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[3].nodes[0].expandedTo[0].x, contours[3].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (20) + 'deg' ] )
