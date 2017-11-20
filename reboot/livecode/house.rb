require 'colorize'

class House
  def initialize(width, heigth, color)
    @width = width
    @heigth = heigth
    @color = color
  end

  def display
    puts  ("#"*@heigth).colorize(@color.to_sym)
    print (("#" + " "*(@heigth-2) + "#\n")*(@width*2)).colorize(@color.to_sym)
    puts  ("#"*@heigth).colorize(@color.to_sym)
  end
end

