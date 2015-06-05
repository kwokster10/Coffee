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
.floral {
	background-color: rgb(255, 92, 197);
}
.citrus {
	background-color: rgb(255, 168, 66);
}
.applepear {
	background-color: rgb(66, 217, 13);
}
.melon {
	background-color: rgb(98, 255, 160)
}
.grape {
	background-color: rgb(119, 217, 67);
}
.tropicalfruit {
	background-color: rgb(255, 244, 0);
}
.stonefruit {
	background-color: rgb(255, 124, 0);
}
.berry {
	background-color: rgb(208, 27, 232);
}
.driedfruit {
	background-color: rgb(184, 83, 12);
}
.chocolate {
	background-color: rgb(97, 55, 3);
}
.sugarysweet {
	background-color: rgb(255, 254, 229);
}
.nutty {
	background-color: rgb(143, 82, 5);
}
.graincereal {
	background-color: rgb(196, 126, 166);
}
.roast {
	background-color: rgb(76, 50, 0);
}
.spice {
	background-color: rgb(255, 0 , 33);
}
.savory {
	background-color: rgb(132, 21, 7);
}
.earthy {
	background-color: rgb(66, 36, 0);
}
.vegetal {
	background-color: rgb(43, 71, 0);
}
.herbal {
	background-color: rgb(21, 151, 20);
}

{Floral: ["Hibiscus", "Rose Hips", "Lavender", "Magnolia", "Jasmine", "Honeysuckle", "Orange Blossom"], 
Citrus: ["Lemon", "Lime", "Grapefruit", "Clementine", "Tangerine", "Mandarin Orange", "Orange", "Zest"], 
ApplePear: ["Red Apple", "Green Apple", "Pear"], 
Melon: ["Watermelon", "Honeydew", "Cantaloupe"],
Grape: ["White Grape", "Green Grape", "Red Grape", "Concord Grape"], 
TropicalFruit: ["Lychee", "Star Fruit", "Tamarind", "Passion Fruit", "Pineapple", "Mango", "Papaya", "Kiwi", "Banana", "Coconut"],
StoneFruit: ["Peach", "Nectarine", "Apricot", "Plum", "Cherry", "Black Cherry"],
Berry: ["Cranberry", "Raspberry", "Strawberry", "Blueberry", "Red Currant", "Black Currant"],
DriedFruit: ["Golden Raisin", "Raisin", "Dried Fig", "Dried Dates", "Prune"],
Chocolate: ["Cacao Nibs", "Baker's Chocolate", "Dark", "Bittersweet", "Milk", "Cocoa Powder", "Fudge"], 
SweetSugary: ["Vanilla", "Nougat", "Honey", "Butter", "Cream", "Marshmallow", "Sugar Cane", "Brown Sugar", "Caramel", "Maple Syrup", "Molasses", "Cola", "Toffee"],
Nutty: ["Walnut", "Peanut", "Cashew", "Pecan", "Hazelnut", "Almond", "Macademia"],
GrainCereal: ["Sweet Bread Pastry", "Granola", "Graham Cracker", "Rye", "Wheat", "Barley", "Fresh Bread"],
Roast: ["Toast", "Burnt Sugar", "Smokey", "Carbon"],
Spice: ["Black Pepper", "White Pepper", "Cinnamon", "Coriander", "Ginger", "Nutmeg", "Curry", "Licorice-Anise", "Clove"],
Savory: ["Leathery", "Meat-Like", "Soy Sauce", "Sundried Tomato", "Tomato"],
Earthy: ["Tobacco", "Fresh Wood", "Mushroom", "Cedar", "Soil", "Hay/Straw"],
Vegetal: ["Hops", "Green Tea", "Black Tea", "Grassy", "Snow Pea", "Sweet Pea", "Squash", "Leafy Greens", "Peppers", "Olive"],
Herbal: ["Lemongrass", "Dill", "Bergamot", "Mint", "Sage", "Rosemary", "Coriander", "Parsley", "Thyme"]}

// // table to add later
// Comments {

// }













