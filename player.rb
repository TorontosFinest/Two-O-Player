require "./questions"

class Player 
attr_reader :name,:lives


def initialize(name)
    @name = name
    @lives = 3
end

def lose_life
    @lives -= 1
end



def question
    q1 = Questions.new
    q1.ask_question(name)
    print '>'
    @input = $stdin.gets.chomp
    if q1.check(@input.to_i)
        puts "Correct!"
    else 
        puts "Incorrect!"
        lose_life
    end
end

end 