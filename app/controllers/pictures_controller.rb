class PicturesController < ApplicationController

	def index #this somehow automatically renders index.html
		@pictures = Picture.all #.all --- probably in the activerecord:base? see railsguides s5.2
	end

	def show
		@picture = Picture.find(params[:id]) #.find --- also in the activerecord:base?
	end

	def new
		@picture = Picture.new
	end

	def create #called when there's a post

		@picture = Picture.new(picture_params) #call the new methid in teh picture class

		if @picture.save
			#if save OK go to index.html.erb
			redirect_to pictures_url #where is pictures_url? a routing helper?
		else
			render :new #render new.html.erb

			#render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
			#render a hash called "text". the key is text. the value is an interpolated string.
			#interpolated values are probably from the form?
		end

	end

	def edit
		@picture = Picture.find(params[:id]) #:id from router
	end

	def update #called when there's a patch request
		@picture = Picture.find(params[:id])
		if @picture.update_attributes(picture_params)
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy #comes with rails
		redirect_to pictures_url
	end


	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :url)
	end



end




	# def show ((#old show data stored in hashes in the controller))

	# 			@pictures = [ #array of hashes

	# 		{

	# 			:title => "The old church",
	# 			:artist => "Sergey Ershov",
	# 			:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"

	# 		},

	# 		{
	# 			:title => "Sea power",
	# 			:artist => "Stephen Schullion",
	# 			:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"

	# 		},

	# 		{
	# 			:title => "Into the poppies",
	# 			:artist => "John Wilhelm",
	# 			:url =>  "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	# 		}

	# 	]
	# 	@picture = @pictures[params[:id].to_i] #takes the id that was given by the route and sends to view
	# 	# if params[:id] =1, then @picture = @pictures[1]
	# end