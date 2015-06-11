# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "Stumptown", website: "http://stumptowncoffee.com/", logo: "http://westlakevillage.enewsletters.fourseasons.com/files/2015/04/7Mk85HC2_400x400-1-300x300.jpeg", approved: true)

Bean.create([
	{
		company_id: 1, name: "Hair Bender", origin: "Latin America, East Africa, and Indonesia", variety: "Varying", processing: "Washed and Semi-Washed"
	},
	{
		company_id: 1, name: "Indonesia Sulawesi Toarco Toraja", origin: "Toraja, Sulawesi", estate: "Pedamaran Estate", variety: "Typica", elevation: "1400-1800", processing: "Washed"
	}, 
	{
		company_id: 1, name: "Rwanda Huye Mountain", origin: "Rwanda", estate: "Huye Mountain", variety: "Bourbon", elevation: "1500-1800", processing: "Raised Drying Beds"
	}, 
	{
		company_id: 1, name: "Colombia Nariño Borderlands", origin: "Colombia", estate: "Nariño Borderlands Coffee Project", variety: "Colombia, Caturra", elevation: "1920-2030", processing: "Manual Depulper"
	}, 
	{
		company_id: 1, name: "Trapper Creek Decaf", origin: " ", estate:, " ", variety: "Varying", elevation: "High", processing: "Swiss Water Process"
	},
	{
		company_id: 1, name: "Indonesia Bies Penantan", origin: "Takengon, Indonesia", estate: "Ketiara Co-op", variety: "Jember", elevation: "1200-1600", processing: "Sorting"
	},
	{
		company_id: 1, name: "Holler Mountain Blend", origin: "Latin America, East Africa and Indonesia", variety: "Varying", elevation: "Varying", processing: "Washed and Semi-Washed"
	},
	{
		company_id: 1, name: "House Blend", origin: "Latin America and East Africa", variety: "Varying", elevation: "Varying", processing: "Washed"
	},
	{
		company_id: 1, name: "French Roast", origin: "Latin America", variety: "Varying", elevation: "Varying", processing: "Washed" 
	},
	{
		company_id: 1, name: "Ethiopia Duromina", origin: "Ethiopia", estate: "Duromina Cooperative", variety: "Ethiopia Heirloom",elevation: "1900-2200", processing: "Washed"
	},
	{
		company_id: 1, name: "Ethiopia Yirgacheffe Chelbessa", origin: "Gedeo, Ethiopia", estate: "Chelbessa", variety: "Ethiopia Heirloom", elevation: "1900-2200", processing: "Washed"
	},
	{
		company_id: 1, name: "Guatemala Finca El Injerto – Pacamara", origin: "Guatemala", estate: "Finca El Injerto", variety: "Pacamara", elevation: "1630", processing: "Raised Drying Beds"
	},
	{
		company_id: 1, name: "Ecuador Cariamanga", origin: "Ecuador", estate: "Procafeq Cooperative", variety: "Bourbon, Caturra, Typica", elevation: "1900-2100", processing: "Raised Bed Drying"
	}
])

Flavor.create([
	{
		category: "Stone Fruit",
		note: "Cherry",
		color: "rgb(255, 124, 0)",
		bean_id: 1
	},
	{
		category: "Sweet and Sugary",
		note: "Toffee",
		color: "rgb(255, 254, 229)",
		bean_id: 1
	},
	{
		category: "Chocolate",
		note: "Fudge",
		color: "rgb(97, 55, 3)",
		bean_id: 1
	},
	{
		category: "Citrus",
		note: "Lemon",
		color: "rgb(255, 168, 66)",
		bean_id: 2
	},
	{
		category: "Vegetal",
		note: "Hops",
		color: "rgb(43, 71, 0)",
		bean_id: 2
	},
	{
		category: "Sweet and Sugary",
		note: "Vanilla",
		color: "rgb(255, 254, 229)",
		bean_id: 2
	},
	{
		category: "Melon",
		note: "Melon",
		color: "rgb(98, 255, 160)",
		bean_id: 3
	},
	{
		category: "Sweet and Sugary",
		note: "Cocoa",
		color: "rgb(255, 254, 229)",
		bean_id: 3
	},
	{
		category: "Dried Fruit",
		note: "Golden Raisin",
		color: "rgb(184, 83, 12)",
		bean_id: 3
	},
	{
		category: "Stone Fruit",
		note: "Stone Fruit",
		color: "rgb(255, 124, 0)",
		bean_id: 4
	},
	{
		category: "Sweet and Sugary",
		note: "Caramel",
		color: "rgb(255, 254, 229)",
		bean_id: 5
	},
	{
		category: "Dried Fruit",
		note: "Raisin",
		color: "rgb(184, 83, 12)",
		bean_id: 5
	},
	{
		category: "Sweet and Sugary",
		note: "Butter",
		color: "rgb(255, 254, 229)",
		bean_id: 5
	},
	{
		category: "Chocolate",
		note: "Dark",
		color: "rgb(97, 55, 3)",
		bean_id: 6
	},
	{
		category: "Spice",
		note: "Clove",
		color: "rgb(255, 0 , 33)",
		bean_id: 6
	},
	{
		category: "Herbal",
		note: "Mint",
		color: "rgb(21, 151, 20)",
		bean_id: 6
	},
	{
		category: "Citrus",
		note: "Zest",
		color: "rgb(255, 168, 66)",
		bean_id: 7
	},
	{
		category: "Sweet and Sugary",
		note: "Caramel",
		color: "rgb(255, 254, 229)",
		bean_id: 7
	},
	{
		category: "Nutty",
		note: "Hazelnut",
		color: "rgb(143, 82, 5)",
		bean_id: 7
	},
	{
		category: "Chocolate",
		note: "Chocolate",
		color: "rgb(97, 55, 3)",
		bean_id: 8
	},
	{
		category: "Chocolate",
		note: "Bittersweet Dark",
		color: "rgb(97, 55, 3)",
		bean_id: 9
	},
	{
		category: "Sweet and Sugary",
		note: "Syrup",
		color: "rgb(255, 254, 229)",
		bean_id: 9
	},
	{
		category: "Spice",
		note: "Clove",
		color: "rgb(255, 0 , 33)",
		bean_id: 9
	},
	{
		category: "Sweet and Sugary",
		note: "Candied Orange",
		color: "rgb(255, 254, 229)",
		bean_id: 10
	},
	{
		category: "Vegetal",
		note: "Hops",
		color: "rgb(43, 71, 0)",
		bean_id: 10
	},
	{
		category: "Citrus",
		note: "Lime",
		color: "rgb(255, 168, 66)",
		bean_id: 11
	},
	{
		category: "Floral",
		note: "Hibiscus",
		color: "rgb(255, 92, 197)",
		bean_id: 11
	},
	{
		category: "Grapefruit",
		note: "Grapefruit",
		color: "rgb(255, 168, 66)",
		bean_id: 12
	},
	{
		category: "Floral",
		note: "Honeysuckle",
		color: "rgb(255, 92, 197)",
		bean_id: 12
	},
	{
		category: "Sweet and Sugary",
		note: "Viscous",
		color: "rgb(255, 254, 229)",
		bean_id: 12
	},
	{
		category: "Butterscotch",
		note: "Butterscotch",
		color: "rgb(255, 254, 229)",
		bean_id: 13
	},
	{
		category: "Citrus",
		note: "Tangerine",
		color: "rgb(255, 168, 66)",
		bean_id: 13
	},
	{
		category: "Nutty",
		note: "Almond",
		color: "rgb(143, 82, 5)",
		bean_id: 13
	}
])

