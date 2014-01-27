class PicturesController < ApplicationController

	def index #I guess this somehow automatically renders index.html?

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

end

