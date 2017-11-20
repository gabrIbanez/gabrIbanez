require 'colorize'

class Road
  def initialize(length, width, name, color)
    @length = length
    @width = width
    @name = name
    @color = color
  end

  def display
    puts ("-"*@length).colorize(@color.to_sym)
    print ("\n"*((@width/2) - 2)).colorize(@color.to_sym)
    print (" - "*(@length/3)).colorize(@color.to_sym)
    print ("\n"*((@width/2) - 2)).colorize(@color.to_sym)
    puts ("-"*@length).colorize(@color.to_sym)

  end


end
