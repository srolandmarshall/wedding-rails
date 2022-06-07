class WelcomeController < ApplicationController
  def index
    # Time in 12 hr est
    @ceremony_time =
      Time
        .parse(Rails.application.credentials.CEREMONY_TIME)
        .strftime('%l:%M %p')
    @things_to_do = {
      food: [
        {
          name: "O\'Neill\'s Irish Pub & Restaurant",
          address: '93 N Main St, Norwalk, CT 06854',
          description:
            "Our favorite watering hole, tasty pub food and lots of outdoor tables. You'll probably find us there at some point this weekend...",
        },
        {
          name: "Knot Norm\'s",
          address: '10 1st St. Norwalk, CT 06855',
          description:
            'Best lobster roll in town, oysters from down the street and usually two or three great drafts on tap, with many more cans to match.',
        },
        {
          name: "Stew Leonard\'s",
          address: '100 Westport Ave, Norwalk, CT 06851',
          description:
            "Stew\'s is a Norwalk institution. To describe it as only a grocery store is unfaiir. Worth the stop if you're from out of town for the ice cream alone, but take a lap and spend more than you expected to get the real experience.",
        },
      ],
      nature: [
        {
          name: 'Wilton Town Forest',
          address: '162 Branch Brook Rd, Wilton, CT 06897',
          description:
            'A great place to get some fresh air and a good hike. Blue Trail is around 90 mins and has little elevation gain.',
        },
        {
          name: 'Calf Pasture Beach',
          address: 'Calf Pasture Beach Rd. Norwalk, CT 06851',
          description:
            'Our local beach with a decent snack shack.  Parking is expensive ($30 before 5pm) but the ticket for not paying is even more so. Carpooling encouraged or convince someone that lives in Norwalk to take you, because they get free parking!',
        },
      ],
    }
  end

  def miller
    num = rand(1..7)
    @miller_pic = "miller#{num}.JPG"
  end
end
