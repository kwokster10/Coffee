require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://buy.stumptowncoffee.com/all-coffees.html'))

# coffee names
coffee_names = doc.css("h2").select{|link| link["class"] == "s-coffee-tit"}
coffee_names.each{|link| puts link.text }

# coffee flavor notes
coffee_flavors = doc.css("ul").select{|link| link["class"] == "flavor-list"}
coffee_flavors.each{|link| puts link.text }

# puts doc.css("h2[class='s-coffee-tit']").text
# puts doc.css("ul[class='flavor-list']").text
