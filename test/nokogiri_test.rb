require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'

#page = Nokogiri::HTML(open("http://dbklpgis.my/displaymimic.html"))
page2 = Nokogiri::XML(open("http://dbklpgis.my/dbklpgisd1.xml"))

##puts page2.to_xhtml( indent:3, indent_text:"." )
lots = page2.css("MALL")

puts "evkwan xpath output is:" 
lots.each do |lot| 
	puts "evkwan: Available parking lots for mall name #{lot.css("NAME").text} is #{lot.css("LOT").text}"
end
