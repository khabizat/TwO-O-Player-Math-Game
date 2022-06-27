class Question
  attr_accessor :answer
  #sets initial values
  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
  end

  def print_question
    puts "What does #{@number1} plus #{@number2} equals?"
  end
end


#Test Code
question1 = Question.new
puts question1.answer
puts question1.print_question