exports.glyphs['m'] =
	unicode: 'm'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 + (29)
		spacingRight: 70
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve(
				contours[1].nodes[1].expandedTo[0],
				contours[1].nodes[2].expandedTo[0],
				Math.min(
					( 100 / 115 ) * thickness,
					100
				),
				true
			)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: xHeight - Math.max(
										75 + ( 1 - thickness / 60 ) * 150,
										75
									)
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											80 + ( 1 - thickness / 60 ) * 50,
											80
										),
										60
									) + 'deg'
								tensionOut: 1 * breakPath
							}
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: contours[1].nodes[0].expandedTo[0].y - ( 130 / 115 ) * thickness
								dirIn: # 90 + 'deg'
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
								tensionIn: 1.1 * breakPath
							}
						]
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness
						angle: - 113 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 180 * width + (172)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
				3:
					x: contours[1].nodes[2].x
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: anchors[0].junction.x
								y: anchors[0].junction.y
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											80 + ( 1 - thickness / 60 ) * 50,
											80 # dirOut must not be over 80 deg
										),
										56 # dirOut must not be under 56 deg
									) + 'deg'
								tensionOut: 1 * breakPath
							}
							{
								x: contours[1].nodes[3].expandedTo[0].x
								y: contours[2].nodes[0].expandedTo[0].y - ( 130 / 115 ) * thickness
								dirIn: # 90 + 'deg'
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
								tensionIn: 1.1 * breakPath
							}
						]
				1:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.1 * breakPath
					tensionOut: 0.9
					expand: Object({
						width: ( 113 / 115 ) * thickness
						angle: - 113 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x + 180 * width + (172)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
				3:
					x: contours[2].nodes[2].x
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})