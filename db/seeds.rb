gallery_names = [ "Shizzles & Giggles", "Pipsqueaks", "Badboys", "Sipping on Gin & Juice", "Smasking Pumpkins", "Top of the Pops" ]

photos = {
	"Baby Bacon" => '/public/pics/bulldogball.jpg',
	"Big Boi Bacon" => '/public/pics/bulldog-home.png',
	"Ada Lovelace" => '/public/pics/Ada_Lovelace_portrait.jpg',
	"George" => '/public/pics/george_parrot.jpg',
	"Charli XCX" => '/public/pics/charli-xcx.jpg', 
	skank: '/public/pics/skank.jpg',
	"Marga" => '/public/pics/marga_burlesque.jpg',
	"Lain" => '/public/pics/serial_experiments_lain.jpg',
	"Jumbo" => '/public/pics/jumbo.jpg',
	"D&G 2015" => '/public/pics/d&g.jpg',
	"Russ and Daughters" => '/public/pics/russ.jpg',
	"forward fold" => '/public/pics/forwardfold.jpg',
	"Magic Mike" => '/public/pics/magicmike.jpg',
	"Boulder, CO" => '/public/pics/boulderCO.jpg',
	"Harley Quinn" => '/public/pics/quinn.jpg',
	"Alan Cummings" => '/public/pics/cummings.jpg',
	"bother you" => '/public/pics/botheryou.jpg',
	"Cher" => '/public/pics/cher.jpg'
	}


samples = photos.clone

gallery_names.each do |name, file_path| 

	gallery = Gallery.create( title: name)

	puts
	puts
	puts "We start with: #{samples}"
	puts
	puts

	3.times do
		photo_name = samples.keys.sample

		gallery.photos << Photo.create(title: photo_name, image: File.open(File.join(Rails.root, samples[photo_name])))

		samples.delete(photo_name)


		puts
		puts
		puts "Samples now include: #{samples}"
		puts
		puts

	end

end

# gallery_names.each do |name|
# 	gallery = Gallery.create(title: name)
# 	gallery.photos << Photo.create(title: "Big Boi", image: File.open(File.join(Rails.root, '/public/pics/bulldogball.jpg')))
# 	gallery.photos << Photo.create(title: "Meat Log", image: File.open(File.join(Rails.root, '/public/pics/bulldog-home.png')))
# 	gallery.photos << Photo.create(title: "Ada Lovelace", image: File.open(File.join(Rails.root, '/public/pics/Ada_Lovelace_portrait.jpg')))
# end