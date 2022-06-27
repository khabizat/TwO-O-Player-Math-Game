class Question

  attr_accessor :answer

  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
  end

  def ask_question
    puts "What does #{@number1} plus #{@number2} equals?"
  end
end