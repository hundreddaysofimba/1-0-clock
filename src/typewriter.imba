tag typewriter
	prop message\string = "It works!"
	index = 0
	reverse = no

	get partial_message
		if reverse or index is message.length + 1
			index--
			reverse = yes
			if index is -1
				emit("new_word")
				reverse = no
		if !reverse 
			index++
			reverse = no
		message.substring(0, index)

	<self [mt:1rem] autorender=100ms>
		<[fs:1.2rem bdr:.2rem solid cooler0 pr:.3rem]> partial_message