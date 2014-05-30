videoElement = $ '#video'
video = videoElement[0]

videoList = [
	"assets/videos/Blind-Trust_Alcohol.mp4",
	"assets/videos/Blind-Trust_Testosteron.mp4",
	"assets/videos/Blind-Trust_Style.mp4"
]

keyList = [
	113,	#q
	51,		#3
	55		#7
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