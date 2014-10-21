puts "This program will take a picture and either make it black and white, invert the colors, or make it a grid."
puts "File path?"
file_path = gets.chomp

# open an image array at the given file path

while true
	puts "Effect? (bw, inv, grid, q to quit)"
	effect = gets.chomp

	if effect == "bw"
		# code to make the image array bw
		require "./image_array.rb"

		img = ImageArray.new("./axolotl.jpg")

		img.each do |row|
        		row.each do |pixel|
               			gray = ( pixel.red + pixel.blue + pixel.green)/3
               			pixel.red = gray
             			pixel.green = gray
              			pixel.blue = gray
      			end
		end

		img.write("./axolotl_bw.jpg")

	elsif effect == "inv"	

		# code to make the image array inv colors
		 require "./image_array.rb"

                img = ImageArray.new("./axolotl.jpg")

		img.each do |row|
			row.each do |pixel|
				pixel.red = img.max_intensity - pixel.red
				pixel.green = img.max_intensity - pixel.green
				pixel.blue = img.max_intensity - pixel.blue
			end
		end
	
	elsif effect == "grid"
	require "./image_array.rb"

		img = ImageArray.new("./axolotl.jpg")

		img.rows.times do |i|
			img.columns.times do |j|
				if (j < img.columns/2)
					if (i < img.rows/2)
						 img[i][j].red = 0
						 img[i][j].green = 0
					else
						img[i][j].blue = 0
						 img[i][j].green = 0
				end
					else
						if (i < img.rows/2)
							img[i][j].red = 0
							img[i][j].blue = 0
						 else
							img[i][j].green = 0
							purple = (img[i][j].red + img[i][j].blue)/2
							img[i][j].red = purple
							img[i][j].blue = purple

					 end
				 end
			 end
		end



		# code to make the image array a grid
	elsif effect == 'q'
		break
	else
		puts "Not a valid effect!"
	end
	# write the file back
	
end
img.write("./axolotl_grid.jpg")
