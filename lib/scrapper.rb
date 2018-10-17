require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scrapper

  attr_accessor :url

def initialize

end

# fonction qui recupere l'adresse mail dans chaque page de ville
def get_the_email_of_a_townhal_from_its_webpage(url)
  doc = Nokogiri::HTML(open(url))
  email_adress = ''
	  doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
  	 return node.text
  	end
end

# fonction qui recupere les url de toutes les pages ville et y applique la fonction
# ci-dessus pour les mettre dans un hash.
def perform(url)
  doc = Nokogiri::HTML(open(url))
  hash = {}
    doc.xpath('//p/a').each do |node|
      html = node["href"]
      html = "http://annuaire-des-mairies.com" + html[1..-1]
      hash[node.text]=get_the_email_of_a_townhal_from_its_webpage(html)
    end
    return hash
end

end
