require_relative 'methods.rb'
require_relative 'scraping.rb'

WISHLIST = [{name: "Macbok", checked: false}, {name: "Brioche", checked: false}]

welcom()

while true
  puts "What would you like to do on your list?"
  puts "Your Choices: add, display, delete, mark, pick or exit"
  action = gets.chomp

  case action
  when "add"
    puts "What do you like do add?"
    answer = gets.chomp
    adding(answer)
  when "display"
    displayer(WISHLIST)
  when "delete"
    puts "Here your Whishly list :"
    displayer(WISHLIST)
    puts "Witch item to delete? (enter number)"
    answer = gets.chomp.to_i
    WISHLIST.delete_at(answer - 1)
    displayer(WISHLIST)
  when "mark"
    displayer(WISHLIST)
    puts "Witch item to check ? give the number"
    index_to_check = gets.chomp.to_i - 1
    mark(index_to_check)
    displayer(WISHLIST)
  when "pick"
    puts "Witch catégorie to search?"
    cat = gets.chomp
    scrap(cat)
  when "exit"
    bye()
    break
  end
end
