class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_lives
    @lives - 1
  end

  def alive?
    @lives > 0
  end
end

#Test Code
player1 = Player.new('Kabby')
puts player1.name  #'Kabby'
puts player1.lives #3
puts player1.decrease_lives #2
puts player1.alive? #true