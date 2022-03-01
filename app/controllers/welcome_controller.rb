class WelcomeController < ApplicationController

  def miller
    # random number one through seven
    num = rand(1..7)
    @miller_pic = "miller#{num}.JPG"
  end
end
