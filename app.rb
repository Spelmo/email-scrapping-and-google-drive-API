require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'scrapper.rb'

$:.unshift File.expand_path("./../spreadsheet_scrapper/", __FILE__)
require 'spreadsheet_scrapper.rb'

$:.unshift File.expand_path("./../csv/", __FILE__)
require 'csv.rb'

#File.open("/USers/marie-charlotte/Documents/Code/The_Hacking_Project/Semaine_3/day3_Google_drive_JSon/JSON_Scrapper/db/emails.JSON", "w") do |f|
#  f.write((Scrapper.new.perform("http://annuaire-des-mairies.com/val-d-oise.html")).to_json)
#end

# Spreadsheet.new.write(Scrapper.new.perform("http://annuaire-des-mairies.com/val-d-oise.html"))

Csv.new.convert
