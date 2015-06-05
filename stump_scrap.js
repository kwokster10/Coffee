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

}

Companies {
	name: 
	website: 
}

Coffees {
	id
	company_id
	company
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
	name
	color
	coffee_id
}

Flavors {
	id
	taste_note
	category_id
}

Floral = ["Hibiscus", "Rose Hips", "Lavender", "Magnolia", "Jasmine", "Honeysuckle", "Orange Blossom"]
rgb(255, 92, 197)

Citrus = ["Lemon", "Lime", "Grapefruit", "Clementine", "Tangerine", "Mandarin Orange", "Orange", "Zest"]
rgb(255, 168, 66)

ApplePear = ["Red Apple", "Green Apple", "Pear"]
rgb(66, 217, 13)

Melon = ["Watermelon", "Honeydew", "Cantaloupe"]
rgb(98, 255, 160)

Grape = ["White Grape", "Green Grape", "Red Grape", "Concord Grape"]
rgb(119, 217, 67)

TropicalFruit = ["Lychee", "Star Fruit", "Tamarind", "Passion Fruit", "Pineapple", "Mango", "Papaya", "Kiwi", "Banana", "Coconut"]
rgb(255, 244, 0)

StoneFruit = ["Peach", "Nectarine", "Apricot", "Plum", "Cherry", "Black Cherry"]
rgb(255, 124, 0)

Berry = ["Cranberry", "Raspberry", "Strawberry", "Blueberry", "Red Currant", "Black Currant"]
rgb(208, 27, 232)

DriedFruit = ["Golden Raisin", "Raisin", "Dried Fig", "Dried Dates", "Prune"]
rgb(184, 83, 12)

Chocolate = ["Cacao Nibs", "Baker's Chocolate", "Dark", "Bittersweet", "Milk", "Cocoa Powder", "Fudge"]
rgb(97, 55, 3)

SweetSugary = ["Vanilla", "Nougat", "Honey", "Butter", "Cream", "Marshmallow", "Sugar Cane", "Brown Sugar", "Caramel", "Maple Syrup", "Molasses", "Cola", "Toffee"]
rgb(255, 254, 229)

Nutty = ["Walnut", "Peanut", "Cashew", "Pecan", "Hazelnut", "Almond", "Macademia"]
rgb(143, 82, 5)

GrainCereal = ["Sweet Bread Pastry", "Granola", "Graham Cracker", "Rye", "Wheat", "Barley", "Fresh Bread"]
rgb(196, 126, 166)

Roast = ["Toast", "Burnt Sugar", "Smokey", "Carbon"]
rgb(76, 50, 0)

Spice = ["Black Pepper", "White Pepper", "Cinnamon", "Coriander", "Ginger", "Nutmeg", "Curry", "Licorice-Anise", "Clove"]
rgb(255, 0 , 33)

Savory = ["Leathery", "Meat-Like", "Soy Sauce", "Sundried Tomato", "Tomato"]
rgb(132, 21, 7)

Earthy = ["Tobacco", "Fresh Wood", "Mushroom", "Cedar", "Soil", "Hay/Straw"]
rgb(66, 36, 0)

Vegetal = ["Hops", "Green Tea", "Black Tea", "Grassy", "Snow Pea", "Sweet Pea", "Squash", "Leafy Greens", "Peppers", "Olive"]
rgb(43, 71, 0)

Herbal = ["Lemongrass", "Dill", "Bergamot", "Mint", "Sage", "Rosemary", "Coriander", "Parsley", "Thyme"]
rgb(21, 151, 20)

// // table to add later
// Comments {

// }













