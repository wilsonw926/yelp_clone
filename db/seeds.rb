
#------- FOOD CATEGORIES SECTION -------
american = Category.where(name: "American").first_or_create(name: "American")
asian = Category.where(name: "Asian").first_or_create(name: "Asian")
french = Category.where(name: "French").first_or_create(name: "French")
italian = Category.where(name: "Italian").first_or_create(name: "Italian")
mediterranean = Category.where(name: "Mediterranean").first_or_create(name: "Mediterranean")
mexican = Category.where(name: "Mexican").first_or_create(name: "Mexican")

#------- USERS SECTION -------
#User Creation - Admin and Nonadmin
users = [User.new(email: "wilsonw926@berkeley.edu", password: "password", password_confirmation: "password", first_name: "Wilson", last_name: "Wang", admin: true),
		 User.new(email: "user@berkeley.edu", password: "password", password_confirmation: "password", first_name: "Aaron", last_name: "Rodgers", admin: false)
		]
users.each do |u|
	u.save!
end

#------- RESTAURANTS SECTION ------- 
#Example
#Restaurant.where(name: "Burrita").first_or_create(name: "Burrita", description: "asdf", address1: "Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "4859", category_id: mexican.id, image: File.new("app/assets/images/Laburrita.jpg"))

#American, id: 1-4
Restaurant.where(name: "Eureka!").first_or_create(name: "Eureka!", description: "Elevated menu of burgers, mains, local brews & whiskey in stylish, bustling environs.", address1: "2068 Center St", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 809-8282", category_id: american.id, image: File.new("app/assets/images/eureka.jpg"))
Restaurant.where(name: "Snack Shack").first_or_create(name: "Snack Shack", description: "The Snack Shack is a fast casual restaurant in Berkeley, California offering gourmet burgers, snacks and craft beers.", address1: "2505 Hearst Ave", city: "Berkeley", state: "CA", zipcode: "94709", phone: "(510) 679-5171", category_id: american.id, image: File.new("app/assets/images/snackshack.jpg"))
Restaurant.where(name: "McDonald's").first_or_create(name: "McDonald's", description: "Classic, long-running fast-food chain known for its burgers, fries & shakes.", address1: "1998 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 843-1500", category_id: american.id, image: File.new("app/assets/images/mcdonalds.jpg"))
Restaurant.where(name: "Venus Restaurant").first_or_create(name: "Venus Restaurant", description: "Californian eatery featuring seasonal dishes & organic wine in a bustling brick-walled space.", address1: "2327 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 540-5950", category_id: american.id, image: File.new("app/assets/images/venus.jpg"))

#Asian, id: 5-8
Restaurant.where(name: "Thai Basil").first_or_create(name: "Thai Basil", description: "A nice option for Thai food, famous among Berkeley students as a perfect spot for late-night eats.", address1: "2519 Durant Ave F", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 548-6692", category_id: asian.id, image: File.new("app/assets/images/thaibasil.jpg"))
Restaurant.where(name: "Amakara").first_or_create(name: "Amakara", description: "House sushi rolls join noodles, tempura & other Japanese dishes in this spacious, modern restaurant.", address1: "7222 Regional St", city: "Dublin", state: "CA", zipcode: "94568", phone: "(925) 803-8485", category_id: asian.id, image: File.new("app/assets/images/amakara.jpg"))
Restaurant.where(name: "Toss Noodle Bar").first_or_create(name: "Toss Noodle Bar", description: "Compact storefront eatery with modern decor serving up noodle entrees & soup, plus rice dishes.", address1: "2272 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 845-8677", category_id: asian.id, image: File.new("app/assets/images/toss.jpg"))
Restaurant.where(name: "KoJa Kitchen").first_or_create(name: "KoJa Kitchen", description: "Food truck team's stylish permanent space serving innovative Korean & Japanese fusion fare.", address1: "2395 Telegraph Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 962-5652", category_id: asian.id, image: File.new("app/assets/images/koja.jpg"))

#French, id: 9-11
Restaurant.where(name: "La Note").first_or_create(name: "La Note", description: "Lively setting for French eats for breakfast, lunch or dinner, plus a garden open in good weather.", address1: "2377 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 843-1525", category_id: french.id, image: File.new("app/assets/images/Lanote.jpg"))
Restaurant.where(name: "Chez Panisse").first_or_create(name: "Chez Panisse", description: "Alice Waters' acclaimed flagship downstairs & cafe upstairs offer seasonal fare & a chic, cozy vibe.", address1: "1517 Shattuck Ave, Berkeley", city: "Berkeley", state: "CA", zipcode: "94709", phone: "(510) 548-5525", category_id: french.id, image: File.new("app/assets/images/chezpanisse.jpg"))
Restaurant.where(name: "Gregoire").first_or_create(name: "Gregoire", description: "Neat eatery dispenses signature potato puffs & other gourmet French fast food, mostly for takeout.", address1: "2109 Cedar St", city: "Berkeley", state: "CA", zipcode: "94709", phone: "(510) 883-1893", category_id: french.id, image: File.new("app/assets/images/Gregoire.jpg"))

#Italian, id: 12-15
Restaurant.where(name: "Cheese Board Pizza").first_or_create(name: "Cheese Board Pizza", description: "A pizzeria, bakery & cheese shop, this spot serves 1 style of veggie pizza per day & limited seats.", address1: "1512 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94709", phone: "(510) 549-3183", category_id: italian.id, image: File.new("app/assets/images/cheeseboard.jpg"))
Restaurant.where(name: "Gypsy's Trattoria Italiana").first_or_create(name: "Gypsy's Trattoria Italiana", description: "Fast-food outfit with late hours provides Italian comfort dishes to a student-heavy clientele.", address1: "2519 Durant Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 548-4860", category_id: italian.id, image: File.new("app/assets/images/gypsys.png"))
Restaurant.where(name: "Lo Coco's").first_or_create(name: "Lo Coco's", description: "Pizza & homemade pasta made from Sicilian recipes, served amid traditional Italian restaurant decor.", address1: "1400 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94709", phone: "(510) 843-3745", category_id: italian.id, image: File.new("app/assets/images/lococo.jpg"))
Restaurant.where(name: "Pasta Bene").first_or_create(name: "Pasta Bene", description: "Thin-crust pizzas, happy hour & classic Italian fare in a bright, airy eatery with a patio.", address1: "2565 Telegraph Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 845-2363", category_id: italian.id, image: File.new("app/assets/images/pastabene.jpg"))

#Mediterranean, id: 16-18
Restaurant.where(name: "La Mediterranee").first_or_create(name: "La Mediterranee", description: "Longtime Middle Eastern-Mediterranean spot known for its meze sampler platters & outdoor seating.", address1: "2936 College Ave", city: "Berkeley", state: "CA", zipcode: "94705", phone: "(510) 540-7773", category_id: mediterranean.id, image: File.new("app/assets/images/Lamediterranee.jpg"))
Restaurant.where(name: "Oasis Grill").first_or_create(name: "Oasis Grill", description: "Narrow counter-serve destination features Mediterranean comfort eats prepared in an open kitchen.", address1: "2114 Center St", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 666-8951", category_id: mediterranean.id, image: File.new("app/assets/images/oasisgrill.jpg"))
Restaurant.where(name: "Zut!").first_or_create(name: "Zut!", description: "Mediterranean fare from local, organic ingredients, plus handcrafted cocktails, in a sunny space.", address1: "1820 Fourth St", city: "Berkeley", state: "CA", zipcode: "94710", phone: "(510) 644-0444", category_id: mediterranean.id, image: File.new("app/assets/images/zut.jpg"))

#Mexican, id: 19-22
Restaurant.where(name: "La Burrita").first_or_create(name: "La Burrita", description: "Burritos & other Mexican classics star at this snug spot with a few tables & outdoor seats.", address1: "2530 Durant Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 845-4859", category_id: mexican.id, image: File.new("app/assets/images/Laburrita.jpg"))
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "Fast-food chain serving Mexican-inspired fare such as tacos, quesadillas & nachos.", address1: "2528 Durant Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 984-0079", category_id: mexican.id, image: File.new("app/assets/images/tacobell.jpg"))
Restaurant.where(name: "Comal").first_or_create(name: "Comal", description: "Modern design & Mexican cuisine meet at this eatery known for its cocktails & vibrant outdoor area.", address1: "2020 Shattuck Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 926-6300", category_id: mexican.id, image: File.new("app/assets/images/comal.jpg"))
Restaurant.where(name: "Tacos Sinaloa").first_or_create(name: "Tacos Sinaloa", description: "Compact, bright & playfully outfitted taco shop with Mexican basics, veggie options & aguas frescas.", address1: "2384 Telegraph Ave", city: "Berkeley", state: "CA", zipcode: "94704", phone: "(510) 665-7895", category_id: mexican.id, image: File.new("app/assets/images/tacosinaloa.jpg"))

#------- REVIEWS SECTION -------
#Example:
#Review.create(comment: "Okay.", rating: 3, restaurant_id: 3, user_id: 1)

#Wilson's Reviews
Review.create(comment: "Best sliders in Berkeley. Truffle fries are amazing.", rating: 5, restaurant_id: 1, user_id: 1)
Review.create(comment: "Great place to get a snack while on north side. Fries are a bit dry.", rating: 4, restaurant_id: 2, user_id: 1)
Review.create(comment: "Your typical McDonalds. Sometimes they close early due to all the hobos outside.", rating: 3, restaurant_id: 3, user_id: 1)
Review.create(comment: "All the fried rices are amazing. Food is fresh, sometimes a long line during busy hours.", rating: 5, restaurant_id: 5, user_id: 1)
Review.create(comment: "Expensive, but food is very good. Katsu was fried to perfection.", rating: 4, restaurant_id: 6, user_id: 1)
Review.create(comment: "Best place to get some noodles to go. Ideal restaurant for college students.", rating: 4, restaurant_id: 7, user_id: 1)
Review.create(comment: "Must get their Kojas of course. I get the Beef Koja every time! Amazing!", rating: 4, restaurant_id: 8, user_id: 1)
Review.create(comment: "Cheeseboard is a must go restaurant in Berkeley. Their pizza is the best I've ever eaten. Love the Saturday option! Not a lot of seats though. Also the line is extremely long, but the wait is worth.", rating: 5, restaurant_id: 12, user_id: 1)
Review.create(comment: "Pasta is super good. Calzones are super huge. Recommend getting Godfather's Favorite.", rating: 4, restaurant_id: 13, user_id: 1)
Review.create(comment: "Burritos are very filling, recommend the California Burrito. Nothing really special. Free chips thought.", rating: 3, restaurant_id: 19, user_id: 1)
Review.create(comment: "Nicer looking Taco Bell restaurant than your usual fast food restaurant. Get the Cinnabon Delights.", rating: 4, restaurant_id: 20, user_id: 1)
Review.create(comment: "Decent.", rating: 4, restaurant_id: 12, user_id: 1)
#Aaron's Reviews

