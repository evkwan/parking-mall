require 'nokogiri'
require 'rubygems'
require 'open-uri'

class MallsController < ApplicationController

	def home
	  # Generates the view that has been routed in routes.rb!
	  # The view must exists in views/ though
	
      @malls = Mall.order(:name)
      @malls_parkings = get_available_parking()
	end
	
	def show
      @mall = Mall.find_by_name(params[:name])
	end

	#method to refresh the tables
	def refresh_part
	  puts "entered refresh!!"
	  puts @malls.to_s
	  @malls = Mall.order(:name)
	  @malls_parkings = get_available_parking()	
	  respond_to do |format|
	  	format.js
	  end
	end
	   
	private
	# method to scrap parking bays from the DBKL website
	def get_available_parking
	  malls_parking = Hash.new
	 
	  page = Nokogiri::XML(open("http://dbklpgis.my/dbklpgisd1.xml"))
	  lots = page.css("MALL")
	    
	  @malls.each do |m|
	    #puts "DEBUG: m now is #{m.name.downcase}"
	    lots.each do |lot|
	      #puts "DEBUG: now in #{lot}"
	      #puts "DEBUG: the mall name is: #{lot.css("NAME").text.downcase}"
	      ## compare the mall names in DB to the ones scrapped in the DBKL website
	      if m.name.downcase == lot.css("NAME").text.downcase
	        # if matched, then store the mall name and available parking in a hash
	        malls_parking[m.name] = lot.css("LOT").text
	      end
        end
      end
	  return malls_parking
	end
end
