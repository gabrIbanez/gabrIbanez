
# Récupérer le nom du joueur
# Récupérer les points du joueur
#jusqu'a ce que l'utilisateur "exit"

#le programme exécute un classement
CLASSEMENT = {
  "Nadal"=> 134,
  "Federer"=> 13,
  "Djoko"=> 213
}

while true

  puts "Nom du Joueur? ('x' to exit)"
  answer = gets.chomp
  if answer != "x"
    puts "Combien de point #{answer} à t'il gagné"
    point_earned = gets.chomp
    CLASSEMENT << {name: answer, point: point_earned}
  else
    break
  end
end

 p CLASSEMENT.values.sort
 p CLASSEMENT.keys


# resultat = CLASSEMENT.map.with_index do |joueur|
#       CLASSEMENT[index].values_at[:point]
#       CLASSEMENT[index][:name]
#     end
# p resultat



