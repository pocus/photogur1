class PicturesController < ApplicationController

	def index #this somehow automatically renders index.html

		@pictures = [ #array of hashes

			{

				:title => "The old church",
				:artist => "Sergey Ershov",
				:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"

			},

			{
				:title => "Sea power",
				:artist => "Stephen Schullion",
				:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"

			},

			{
				:title => "Into the poppies",
				:artist => "John Wilhelm",
				:url =>  "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
			}

		]

	end

	def show

				@pictures = [ #array of hashes

			{

				:title => "The old church",
				:artist => "Sergey Ershov",
				:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"

			},

			{
				:title => "Sea power",
				:artist => "Stephen Schullion",
				:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"

			},

			{
				:title => "Into the poppies",
				:artist => "John Wilhelm",
				:url =>  "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
			}

		]
		@picture = @pictures[params[:id].to_i] #takes the id that was given by the route and sends to view
		# if params[:id] =1, then @picture = @pictures[1]
	end

	def new
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
		#render a hash called "text". the key is text. the value is an interpolated string.
		#interpolated values are probably from the form?
	end

end



	# def picture0 #this looks for something called picture0.html.
	# 	@picture = {
	# 		:title => "The old church",
	# 		:artist => "Sergey Ershov",
	# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	# 	}
	# end

	# def picture1
	# 	@picture = {
	# 			:title => "Sea power",
	# 			:artist => "Stephen Schullion",
	# 			:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	# 	}
	# end


	# def picture2
	# 	@picture = {
	# 			:title => "Into the poppies",
	# 			:artist => "John Wilhelm",
	# 			:url =>  "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	# 	}
	# end