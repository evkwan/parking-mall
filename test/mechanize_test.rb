require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://dbklpgis.my/displaymimic.html')

pp page

