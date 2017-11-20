def adding(item)
    WISHLIST << {name: item, checked: false}
    puts "\nOK adding #{item.capitalize} to your list"
    puts ("O") + ("~")*20 + ("O")
end

def displayer(items)
  if items.empty?
    puts "Liste empty. "
  else
      items.each_with_index do |item, index|
        puts "#{index + 1}- #{items[index][:checked]? "[X]" : "[ ]"}  - #{items[index][:name].capitalize} "
      end
   end
end

def mark(to_check)
  WISHLIST[to_check][:checked] = !WISHLIST[to_check][:checked]
end

def welcom
puts ("O") + ("~")*20 + ("O")
puts ("O") + " Welcome on Whishly " + ("O")
puts ("O") + ("~")*20 + ("O")
end

def bye
puts ("O") + ("~")*27 + ("O")
puts ("O") + "  See you soon on Whishly  " + ("O")
puts ("O") + ("~")*27 + ("O")
end
