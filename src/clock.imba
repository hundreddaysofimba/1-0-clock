tag clock
	prop utc = -4
	prop color = "yellow0"
	prop title = "Caracas"

	css pos:rel w:100% h:100% d:block
		.location fs:xl fw:700 ta:center c:gray9 pt:1rem
		.dial pos:abs b:50% l:50% x:-50% origin:50% 100% rd:1
		.hour bg:gray8 h:30% w:.3rem
		.minute bg:gray6 h:42% w:.2rem
		.second bg:red5 h:45% w:.1rem
		.circle pos:abs t:50% l:50% m:-.3rem size:.6rem bg:red5 rd:full

	def render
		<self 
			autorender=1s
			[w:20rem h:20rem bgc:{color} rd:full]
		>
			let ts = Date.now! / 60000 + utc * 60
			<.location> new Date().toTimeString("hh:mm:ss").substring(0, 8)
			<.dial.hour[rotate:{ts / 720}]>
			<.dial.minute[rotate:{ts / 60}]>
			<.dial.second[rotate:{ts % 1000}]>
			<.circle>