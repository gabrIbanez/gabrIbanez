WISHLIST = []
p WISHLIST

WISHLIST << {name: "Macbook", checked: false}
WISHLIST << {name: "Elephant", checked: false}
WISHLIST << {name: "Pain", checked: false}


WISHLIST.each_with_index do |item, index|
    p WISHLIST[index][:name]
    p WISHLIST[index][:checked]

end


WISHLIST = [
  {:name=>"Macbook", :checked=>false},
  {:name=>"Elephan", :checked=>false},
  {:name=>"Pain", :checked=>false}
 ]
