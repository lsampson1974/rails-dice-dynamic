class RollsController < ApplicationController

  def roll_dice

    @rolls = []

    @number_of_dice = params[:number_of_dice].to_i
    @number_of_faces = params[:number_of_faces].to_i
  
    @number_of_dice.times do
        @rolls.push(rand(1..@number_of_faces))
    end # Of loop.
  
    render ({ :template => "layouts/roll_dice"})

  end # Of method roll_dice.

  

  def show_homepage

      render ({ :template => "layouts/homepage"})

  end # of method show_homepage

end # Of class
