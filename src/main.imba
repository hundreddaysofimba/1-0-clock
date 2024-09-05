import "./clock.imba"
import "./typewriter.imba"

global css 
	body c:cooler0 bg:teal5 ff:monospace fs:1.5rem inset:0 d:vcc

tag app
	messages = [
		"Just in time... Always!",
		"Just read the clock... Nothing else",
		"TL;DR... if you don\'t have time",
		"Oh C\'mon, don\'t waste my time!",
		"God\'s time is perfect!",
		"But now it\'s time to say goodbye time flows like tears...",
		"Perfect timing like a swiss clock ;)",
		"Three Sweden swingers switch their swiss swatches for watch time swift...",
		"It\'s Tea Time, muthafucka...",
		"Here goes the time for Lorem Ipsum!",
		"I... I don\'t have time for this...",
		"I don\'t wrote this in \"Times New Roman\" letter",
		"Did you notice that all phrases have a time on it? Even this! LOL",
		"There is no spoon...  I mean... time...",
		"Still there? Just keep focus with your time!"
	]
	message_to_render = messages[randomize messages.length]

	def randomize top\number
		Math.floor(Math.random! * top)

	<self [d:vcc]>
		<svg src="./clock.svg" [mx:auto s:8rem]>
		<h1 [ta:center]> "⏱ O'Clock"
		<clock>
		<%center [my:2rem h:4rem]>
			<typewriter 
				message=message_to_render 
				@new_word=(message_to_render = messages[randomize messages.length])
			>

imba.mount <app>