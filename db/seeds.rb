gallery_names = [ "Shizzles & Giggles", "Pipsqueaks", "Badboys", "Sipping on Gin & Juice", "Smasking Pumpkins" ]


gallery_names.each do |name|
	gallery = Gallery.create(title: name)
	gallery.photos << Photo.create(title: "Big Boi", image: File.open(File.join(Rails.root, '/public/pics/bulldogball.jpg')))
	gallery.photos << Photo.create(title: "Meat Log", image: File.open(File.join(Rails.root, '/public/pics/bulldog-home.png')))
	gallery.photos << Photo.create(title: "Ada Lovelace", image: File.open(File.join(Rails.root, '/public/pics/Ada_Lovelace_portrait.jpg')))
end