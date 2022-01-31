require("./player")
require("./questions")

class Game

    def initialize
        @player1 = Player.new('Player 1')
        @player2 = Player.new('Player 2')
    end


    def start
        puts "NEW GAME"
        puts "Todays game is featuring #{@player1.name} and #{@player2.name}"
        take_turn
    end

   
    def score
        if @player1.lives == 0
        puts "#{@player2.name} has won the game with a score of #{@player2.lives}/3"
        puts "----GAME OVER-----"
        puts "adios!"
        exit(0)
        elsif @player2.lives == 0
        puts "#{@player1.name} has won the game with a score of #{@player1.lives}/3"
        puts "----GAME OVER-----"
        puts "adios!"
        exit(0)
        end
    end

    def take_turn
        @player1.question
        score
        @player2.question
        score
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        puts "----------NEW TURN----------"
        take_turn
    end


end 