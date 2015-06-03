$ajax({
	url: "http://buy.stumptowncoffee.com/all-coffees.html",

});

var eachCoffee = $("article.coffee-card").html(); // all coffee info for one coffee
var coffeeName = $("h2.s-coffee-tit")child().html(); // name is in span
var tasteNotes = $("ul.flavor-list").child().html(); // in the li of ul, all coffee tasting notes

// next page get origins, elevations, seasons available if possible, and variety

// login via facebook? twitter? instagram? -- one that all coffee places seem to use
Roasters = {
	id
	email // general email 
	name // coffee shop name
	password-digest // will not need if get OAuth working
}

Coffees {
	id
	roaster_id
	name
	country of origin 
	coffee estate
	variety
	season
	elevation
	likes // only implement if users are implemented 
}
 
// one coffee can have many categories; one category can have many flavor notes

Categories {
	id 
	category
	color
	coffee_id
}

Floral = ["Hibiscus", "Rose Hips", "Lavender", "Magnolia", "Jasmine", "Honeysuckle", "Orange Blossom"]
Citrus = ["Lemon", "Lime", "Grapefruit", "Clementine", "Tangerine", "Mandarin Orange", "Orange"]
ApplePear = ["Red Apple", "Green Apple", "Pear"]
Melon = ["Watermelon", "Honeydew", "Cantaloupe"]
Grape = ["White Grape", "Green Grape", "Red Grape", "Concord Grape"]
TropicalFruit = ["Lychee", "Star Fruit", "Tamarind", "Passion Fruit", "Pineapple", "Mango", "Papaya", "Kiwi", "Banana", "Coconut"]
StoneFruit = ["Peach", "Nectarine", "Apricot", "Plum", "Cherry", "Black Cherry"]
Berry = ["Cranberry", "Raspberry", "Strawberry", "Blueberry", "Red Currant", "Black Currant"]
DriedFruit = ["Golden Raisin", "Raisin", "Dried Fig", "Dried Dates", "Prune"]
Chocolate = ["Cacao Nibs", "Baker's Chocolate", "Dark", "Bittersweet", "Milk", "Cocoa Powder"]
SweetSugary = ["Vanilla", "Nougat", "Honey", "Butter", "Cream", "Marshmallow", "Sugar Cane", "Brown Sugar", "Caramel", "Maple Syrup", "Molasses", "Cola"]
Nut = ["Walnut", "Peanut", "Cashew", "Pecan", "Hazelnut", "Almond"]
GrainCereal = ["Sweet Bread Pastry", "Granola", "Graham Cracker", "Rye", "Wheat", "Barley", "Fresh Bread"]
Roast = ["Toast", "Burnt Sugar", "Smokey", "Carbon"]
Spice = ["Black Pepper", "White Pepper", "Cinnamon", "Coriander", "Ginger", "Nutmeg", "Curry", "Licorice-Anise", "Clove"]
Savory = ["Leathery", "Meat-Like", "Soy Sauce", "Sundried Tomato", "Tomato"]
Earthy = ["Tobacco", "Fresh Wood", "Mushroom", "Cedar", "Soil", "Hay/Straw"]
Vegetal = ["Hops", "Green Tea", "Black Tea", "Grassy", "Snow Pea", "Sweet Pea", "Squash", "Leafy Greens", "Peppers", "Olive"]
Herbal = ["Lemongrass", "Dill", "Bergamot", "Mint", "Sage", "Rosemary", "Coriander", "Parsley", "Thyme"]

Flavors {
	id
	category_id
	flavor_note
}

// // table to add later
// Comments {

// }













