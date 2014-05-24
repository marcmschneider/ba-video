videoElement = $ '#video'
video = videoElement[0]

videoList = [
	"assets/videos/1.mp4",
	"assets/videos/2.mp4",
	"assets/videos/3.mp4"
]

keyList = [
	55,	# 7
	56,	# 8
	57	# 9
]

$(document).ready ->

	video.onended = () ->
		video.src = ''
	
	$(document).keypress (e) ->
		console.log e.keyCode
		
		switch e.keyCode
			when 102 #F -> Fullscreen
				if screenfull.enabled
					screenfull.request(video)

			when 112 #P -> Pause
				video.pause()

			when keyList[0] #-> Video 1
				video.src = videoList[0]
				video.play()

			when keyList[1] #-> Video 2
				video.src = videoList[1]
				video.play()

			when keyList[2] #-> Video 3
				video.src = videoList[2]
				video.play()