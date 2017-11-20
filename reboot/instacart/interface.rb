# Objectif : coder un logicile de course
# SE donner un panier vide (tableau vide)
# Se donner un stock de Produit disponible
# Afficher le stock disponible
# demander à l'utilisateur quel produit il veut acheter
# ajouter au panier
# recommancer le choix

items = {
  "pomme" => {price: 3, stock: 50},
  "quinoa" => {price: 2, stock: 10},
  "orange" => {price: 5, stock: 20},
  "pain" => {price: 1, stock: 250}
}
cart = {}


puts "#{"-"*30} \n ~ Bienvenu chez Instacart ~ \n#{"-"*30}"

while true

  puts "\nLes produits disponibles sont: "

  items.each do |name, price|
     puts " #{items[name][:stock]} #{name.capitalize} à #{items[name][:price]}€"
  end

  puts "Quel produit voulez-vous ajouter ? 'exit' pour sortir"
  user_choice = gets.chomp

  if user_choice == "exit"
    break
  elsif items.include? user_choice

    puts "how many?"
    quantity = gets.chomp.to_i
    if cart.has_key? user_choice
      if items[user_choice][:stock]  - quantity <= 0
       puts "\n ~ Nous n'avons pas assez de #{user_choice}. Il ne me reste que #{items[user_choice][:stock]} #{user_choice} en stock"
      else
        cart[user_choice] += quantity
        items[user_choice][:stock] = items[user_choice][:stock]  - quantity
        puts "- Très bien, j'ajouter #{quantity} #{user_choice} à ton panier"
      end
    else
      if items[user_choice][:stock]  - quantity <= 0
       puts "Nous n'avons pas assez de #{user_choice} Il ne me reste que #{items[user_choice][:stock]} #{user_choice} en stock"
      else
        cart[user_choice] = quantity
        items[user_choice][:stock] = items[user_choice][:stock]  - quantity
        puts "- Très bien, j'ajouter #{quantity} #{user_choice} à ton panier."
      end
    end

  else
    puts "\n"
    puts "Invalide choice"
    puts "\n"
  end
end

puts "*" * 45

total = 0
cart.each do |name, quantity|
  subtotal = items[name][:price] * quantity
  puts " - Vous avez acheté #{subtotal}€ de #{name}."
  total = subtotal + total
end

 puts "\nTotal de vos achats :#{total}€"
puts "*" * 45


# p items["pain"][:stock] - quantity
#p  " Votre pannier est composé de #{prix_total(cart)}"




# def prix_total(panier)
#   total = 0
#   panier.each do |item|
#     total = total + ITEMS[item]
#   end
#   total
# end

# puts "Tu as acheté #{cart.count("pomme")} pomme"
# puts "Tu as acheté #{cart.count("quinoa")} quinoa"
# puts "Tu as acheté #{cart.count("orange")} orange"
# puts "Tu as acheté #{cart.count("pain")} pain"
# puts "\n Total = #{prix_total(cart)}€ pour #{cart.length} produits achetés"

