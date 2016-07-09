class Timer
	attr_accessor :seconds

	def seconds
		@seconds=0
	end

	def time_string
		hours=@seconds/3600
		remainder=@seconds%3600
		mins=remainder/60
		secs=remainder%60
		sprintf("%02d:%02d:%02d",hours,mins,secs)
	end
end
