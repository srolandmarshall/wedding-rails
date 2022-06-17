class WelcomeController < ApplicationController
  def index; end

  def miller
    num = rand(1..7)
    @miller_pic = "miller#{num}.JPG"
  end
end
