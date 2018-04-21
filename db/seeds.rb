# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all
Piece.destroy_all
#Create Categories
post_impressionist = Category.create(name: "Post-Impressionist")
oil = Category.create(name: "Oil")
portrait = Category.create(name: "Portrait")
landscape = Category.create(name: "Landscape")
renaissance = Category.create(name: "Renaissance")
religious = Category.create(name: "Religious")
drawing = Category.create(name: "Drawing")
scientific = Category.create(name: "Scientific")
pop = Category.create(name: "Pop Art")
synthetic = Category.create(name: "Synthetic Polymer Paint")
silkscreen = Category.create(name: "Silkscreen")

#Create Artists, associate pieces, add categories to pieces
vinnie = Artist.create(email: "vinnie@email.com", password:'hellothere', permissions: 10, first_name: 'Vincent', last_name: 'van Gogh', current_cart: Cart.new)
starry = vinnie.pieces.create(name: "Starry Night", prints_available: true, original_available: false, price: 34.95)
starry.categories << [post_impressionist, oil, landscape]
starry.save

self_portrait = vinnie.pieces.create(name: "Self Portrait", prints_available: true, original_available: false, price: 39.95)
self_portrait.categories << [post_impressionist, portrait, oil]
self_portrait.save

wheatfield = vinnie.pieces.create(name: "Wheatfield with Crows", prints_available: true, original_available: false, price: 24.95)
wheatfield.categories << [post_impressionist, oil, landscape]
wheatfield.save
vinnie.save

leo = Artist.create(email: "leo@thepope.net", password:'hellothere', permissions: 10, first_name: 'Leonardo', last_name: 'da Vinci', current_cart: Cart.new)
mona = leo.pieces.create(name: "Mona Lisa", prints_available: true, original_available: false, price: 69.95)
mona.categories << [oil, portrait, renaissance]
mona.save

supper = leo.pieces.create(name: "Last Supper", prints_available: true, original_available: false, price: 14.95)
supper.categories << [oil, renaissance, religious]
supper.save

virtuvian = leo.pieces.create(name: "Vitruvian Man", prints_available: true, original_available: false, price: 54.95)
virtuvian.categories << [renaissance, drawing, scientific]
virtuvian.save
leo.save

warhol= Artist.create(email: "andy@campbellsoup.com", password:'hellothere', permissions: 10, first_name: 'Andy', last_name: 'Warhol', current_cart: Cart.new)
soup = warhol.pieces.create(name: "Campbell's Soup Cans", prints_available: true, original_available: false, price: 54.95)
soup.categories << [pop, synthetic]
soup.save

elvis = warhol.pieces.create(name: "Triple Elvis", prints_available: true, original_available: false, price: 36.95)
elvis.categories << [pop, silkscreen, portrait]

marilyn = warhol.pieces.create(name: "Shot Marilyns", prints_available: true, original_available: false, price: 54.95)
marilyn.categories << [pop, silkscreen, portrait]

