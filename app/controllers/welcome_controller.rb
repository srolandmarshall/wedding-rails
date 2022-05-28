class WelcomeController < ApplicationController
  def index
    # Time in 12 hr est
    @ceremony_time =
      Time
        .parse(Rails.application.credentials.CEREMONY_TIME)
        .strftime('%l:%M %p')
  end

  def miller
    num = rand(1..7)
    @miller_pic = "miller#{num}.JPG"
  end
end
