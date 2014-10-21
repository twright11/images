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

img.write("./axolotl_bw.jpg"re "./image_array.rb"

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

