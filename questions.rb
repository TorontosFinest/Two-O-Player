
class Questions 
def initialize
@number1 = rand(0...10) 
@number2 = rand(0...10) 
@answer = @number1 + @number2
end 

def ask_question(name)
puts "#{name}: What is #{@number1} + #{@number2}?"
end

def check(solution)
    @answer == solution
end


end