# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Picture.create!(
	:title => "The old church",
	:artist => "Sergey",
	:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	)

#call destructive class method "create" in the Picture class and pass three hashes as parameters.
#creates a new instance of the model Picture - remember we created picture.rb as a model


Picture.create!(
	:title => "Sea power",
	:artist =>"Stephen Scullion",
	:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	)

Picture.create!(
	:title => "Into the poppies",
	:artist => "John Wilherm",
	:url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	)
