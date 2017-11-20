require 'open-uri'
require 'nokogiri'

def scrap(to_scrap)
  url = "https://www.etsy.com/fr/search?q=#{to_scrap}"
  #ouvrir l'url pour récupérer le fichier de html
  file = open(url)
  html_file = file.read
  doc = Nokogiri::HTML(html_file)

  puts "Here, some idees from Etsy.com :"

  doc.search('.v2-listing-card').each_with_index do |element, index|
    if index >= 5
      break
    else
    scr_f = element.search('p')[0].text.strip.to_s
    puts "#{index + 1} > #{scr_f}"
    puts "~~~~~~~~~~~"
    end
  end
end
