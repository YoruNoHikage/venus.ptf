exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (39) + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness + ( 30 / 115 ) * thickness * width
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[1].expandedTo[0].x + ( 10 / 115 ) * thickness * width + ( 5 / 115 ) * thickness * width - 5
					# Try to fix the contrast:
					# x: contours[2].nodes[1].expandedTo[0].x + ( 10 / 115 ) * thickness * width + ( 5 / 115 ) * thickness * width - 5 + ( 50 / 115 ) * thickness * width - 50 * contrast
					y: ( 330 / 750 ) * capHeight - ( 50 / 115 ) * thickness + 50
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 155 / 115 ) * thickness
						# width: ( 125 / 115 ) * thickness
						angle: Math.min(
							Math.PI / 2,
							Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - Math.PI / 3.33 + Math.PI
						)
						# angle: 0 + 'deg'
						# angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI
						distr: 0
					})
				# 1:
				# 	expandedTo:
				# 		[
				# 			{
				# 				x: contours[2].nodes[1].expandedTo[0].x + ( 10 / 115 ) * thickness * width + ( 5 / 115 ) * thickness * width - 5
				# 				y: ( 330 / 750 ) * capHeight
				# 			}
				# 			{
				# 				# x: contours[1].nodes[1].expandedTo[0].x
				# 				y: contours[1].nodes[1].expandedTo[0].y + 30
				# 				x: Utils.onLine({
				# 					on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
				# 					y: contours[1].nodes[1].expandedTo[0].y + 30
				# 				})
				# 			}
				# 		]
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 300 + 285 * width - (39)
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 375 - (39)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 125 / 115 ) * thickness + ( 30 / 115 ) * thickness * width ) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x - ( 10 / 115 ) * thickness * width - ( 5 / 115 ) * thickness * width + 5
					y: contours[2].nodes[0].y - ( contours[2].nodes[0].y - contours[0].nodes[1].expandedTo[0].y ) * contrast
					# y: contours[0].nodes[1].expandedTo[0].y
					# y: ( 330 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 155 / 115 ) * thickness * contrast
						angle: Math.max(
							Math.PI / 2 + Math.PI,
							Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) + Math.PI / 3.33 + Math.PI
						)
						# angle: 0 + 'deg'
						# angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					# y: contours[1].nodes[1].expandedTo[0].y
					# y: contours[0].nodes[1].expandedTo[1].y + 50
					# y: ( 330 / 750 ) * capHeight + 150
					y: ( 330 / 750 ) * capHeight + ( 168 / 115 ) * thickness * contrast
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].y
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].y
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					directionY: -1
