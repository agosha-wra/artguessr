# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtsSerie.destroy_all
Art.destroy_all
Serie.destroy_all
User.destroy_all

serie = Serie.create(name: 'Amériques', description: 'lorem ipsum', latitude: 0.390432583085818e2, longitude: -0.977911835313839e2, zoom: 0.33e1)

file = URI.open('https://www.christies.com/img/LotImages/2018/NYR/2018_NYR_16390_0012_000(sanford_robinson_gifford_white_mountain_scenery120835).jpg')
serie.image.attach(io: file, filename: 'seriephoto.png', content_type: 'image/png')

art  = Art.create(name: 'Chop Suey', latitude: 40.768067370393354, longitude: -73.9815326308001, author: 'Edward Hopper', location_story: 'The layout of this restaurant has been associated by scholars including Patricia Junker with a spot in Portland, Maine, where Hopper spent the summer of 1927, as well as a restaurant on Columbus Circle on the Upper West Side of New York. Called The Far East Tea Garden, the New York establishment was a cheap, second-floor spot that the Hoppers frequented while dating and in the early years of their marriage, and was also known as a meeting place for Alfred Stieglitz, Georgia O’Keeffe and other Modernists in their circle. (A.F. Smith, ed., Savoring Gotham: A Food Lover’s Companion to New York City, New York, 2015, n.p.)')
art2 = Art.create(name: 'American Gothic', latitude: 40.92212, longitude: -92.21, author: 'Grant Wood', location_story: 'Although Wood had intended for some time to do a “portrait” of Midwestern “types,” it is known that the house in Eldon, Iowa inspired the painting Wood called American Gothic, because only the house is shown in surviving preliminary sketches for the painting. Another early sketch places a man and woman in front of the house, very similar to the final composition. Wood’s selection of this arrangement may have been based on the late nineteenth and early twentieth century practice of traveling photographers posing subjects in front of their homes. The choice by either the homeowner or photographer as to where the people stood, testifies to the association Americans have with their homes as extensions of themselves. In rural America, a home not only signified family but also the mutual hard work of its members, and as the family’s greatest financial possession.')
art3 = Art.create(name: "Chrstina's World", latitude: 43.98, longitude: -69.26, author: 'Andrew Wyeth', location_story: "It was Olson's home, which she shared with her younger brother, Alvaro. But Wyeth took some liberties with its architecture and surrounding landscape to better emphasize the scope of Christina's journey. Today the farmhouse is a national landmark. The Olson house has won comparisons to Monet's garden at Giverny because of the plethora of paintings and sketches it inspired. In the 30 years from their first meeting to Christina's death, Wyeth created over 300 works at the Olson house, thanks to the Olsons allowing him to use their home as his studio. Explaining the house's hold on him, Wyeth said, 'In the portraits of that house, the windows are eyes or pieces of the soul almost. To me, each window is a different part of Christina's life'. For all this, the Olson House was designated a National Historic Landmark in 2011. As part of the Farnsworth Museum, you’ll be able to visit the Olson house starting on Memorial Day weekend, 2016. Until then, the house is closed for vital infrastructure upgrades.")

file = URI.open('https://www.christies.com/img/LotImages/2018/NYR/2018_NYR_17448_0012B_000(edward_hopper_chop_suey070232).jpg')
art.art_image.attach(io: file, filename: 'locationphoto.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/1200px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg')
art2.art_image.attach(io: file, filename: 'locationphoto.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/f3/43/de/f343de0bdc039ec4f97c2f2bf13e59be.jpg')
art3.art_image.attach(io: file, filename: 'artimage.png', content_type: 'image/png')

arts_serie = ArtsSerie.create(serie: serie, art: art)
arts_serie2 = ArtsSerie.create(serie: serie, art: art2)
arts_serie3 = ArtsSerie.create(serie: serie, art: art3)

antoine = User.create! email: 'antoine@gmail.com', password: '123456', password_confirmation: '123456'
