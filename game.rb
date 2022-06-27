class Game
  attr_accessor :current_player, :first_player, :second_player

  def initialize
    @first_player = Player.new('Player 1')
    @second_player = Player.new('Player 2')
    @current_player = @second_player
    puts "Welcome to The Math Game!"
  end

  def change_player
    if @current_player == @first_player
        @current_player = @second_player
    else
      @current_player = @first_player
    end
  end

  def print_question
    @current_question = Question.new
    puts "#{@current_player.name} : #{@current_question.ask_question}"
  end

  def check_answer
    if @current_question.answer != gets.chomp.to_i
      @current_player.lives -= 1
      puts 'Seriously? No!'
    else
      puts 'YES! You are correct.'
    end
  end

  def print_lives
    puts "P1: #{@first_player.lives}/3 vs P2: #{@second_player.lives}/3"
  end

  def end_game
    if first_player.lives > 0
      puts "#{first_player.name} wins with score #{first_player.lives}/3"
    else
      puts "#{second_player.name} wins with score #{second_player.lives}/3"
    end
    puts '------ GAME OVER ------'
    puts 'Good bye!'
  end


  def turn
    while current_player.lives > 0
      puts puts '------ NEW TURN ------'
      change_player
      print_question
      check_answer
      print_lives
    end
      end_game
  end
end
