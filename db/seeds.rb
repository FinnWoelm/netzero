# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#questions = Question.create([
#  {title: "Transportation: Driving",
#    question: "How many miles do you drive a car per week?"},
#  
#  {title: "Transportation: Public",
#    question: "How many miles do you ride the bus per week?"},
#
#  {title: "Transportation: Flying",
#    question: "How many hours do you fly each year?"},
#  
#  {title: "Home Energy: Electricity",
#    question: "How much electricity (kWh) do you use per year?"},
#  
#  {title: "Food: Meat Consumption",
#    question: "How many meals with meat do you eat per week?"}  
#  ])
#
#reduction_options = ReductionOption.create([
#  {title: "Bike Friend",
#    description: "Bike to school once per week.",
#    carbon_impact: "250",
#    image_url: "http://www.missohiobiketour.com/wp-content/uploads/2014/02/Biking-in-Europe.jpg"},
#  {title: "Plant Muncher",
#    description: "Have only vegan meals one day per week.",
#    carbon_impact: "375",
#    image_url: "http://img2.timeinc.net/health/img/web/2014/01/slides/vegan-intro-400x400.jpg"},
#  {title: "Light It Up",
#    description: "Replace your light bulbs with energy-saving LEDs.",
#    carbon_impact: "160",
#    image_url: "http://s3.amazonaws.com/digitaltrends-uploads-prod/2015/06/Generic-LED-light-bulb.jpg"},
#  {title: "Cold As Ice",
#    description: "Wash your clothes with cold water.",
#    carbon_impact: "50",
#    image_url: "http://i.telegraph.co.uk/multimedia/archive/01850/washing-machine_1850435b.jpg"},
#   {title: "Tree Hugger",
#    description: "Plant one hectare of trees.",
#    carbon_impact: "1000",
#    image_url: "http://www.earthtimes.org/newsimage/protecting-rainforests-responsibility-conservation_18411.jpg"}, 
#  
#  ])

transportation = ActivityCategory.create(:title => "Transportation", :slug => "transportation")
home_energy = ActivityCategory.create(:title => "Home Energy", :slug => "home-energy")
food = ActivityCategory.create(:title => "Food", :slug => "food")
consumption = ActivityCategory.create(:title => "Consumption", :slug => "consumption")

  
# Transportation
Activity.create([
  {
  :category => transportation,
  :title => "Bike Friend",
  :summary => "Leave the car at home and bike.",
  :description =>
"Check out Naropa's Bike Shack for...
- free assistance in maintainance and bike repair
- free bike rentals up to two weeks
- building your own bike from scratch through the Earn-A-Bike program

Other:
- Recycle old bike tubes with Green Guru
- You can get an annual membership with B-Cycle for $40 (sign up with your Naropa .edu email address and use the promo code STUDENT)"
  },
  {
  :category => transportation,
    :title => "Take The Bus",
  :summary => "Take the bus.",
  :description =>
"..."
  },
  {
  :category => transportation,
    :title => "...",
  :summary => "Carpool.",
  :description =>
"..."
  },
  {
  :category => transportation,
    :title => "...",
    :summary => "Regularly check your tire pressures.",
  :description =>
"..."
  },
  {
  :category => transportation,
    :title => "Drive Smart",
    :summary => "Go easy on the brakes and the gas pedal.",
  :description =>
"To improve your fuel economy and reduce greenhouse gas emissions, go easy on the brakes and gas pedal, avoid hard accelerations, reduce your time spent idling (no more than 30 seconds), and unload unnecessary items in your trunk to reduce weight. If you have a removable roof rack and you are not using it, take it off to improve your fuel economy. Use cruise control if you have it, and for vehicles with selectable four-wheel drive, consider operating in two-wheel drive mode when road conditions make it safe to do so.

[Source: EPA]"
  }
])

# Home Energy
Activity.create([
  {
  :category => home_energy,
  :title => "Cold As Ice",
  :summary => "Wash clothes with cold water.",
  :description =>
"- Average savings
- Cold water washing detergent"
  },

  {
  :category => home_energy,
  :title => "Light It Up",
  :summary => "Replace your light bulbs with LEDs.",
  :description =>
"- where to buy
- price"
  },
  
  {
  :category => home_energy,
  :title => "Pull The Plug",
  :summary => "Unplug devices that are not in use.",
  :description => 
  "- phantom power"
  },
  
  {
  :category => home_energy,
  :title => "Keep It Cool",
  :summary => "Turn down your thermostat.",
  :description => 
  "TBA"
  },  
  
  {
  :category => home_energy,
  :title => "Speed Shower",
  :summary => "Take shorter showers and fewer baths.",
  :description => 
  "TBA"
  },

  {
  :category => home_energy,
    :title => "Conserve 'Em",
    :summary => "Turn down your fridge.",
  :description => 
  "TBA"
  },  
  
  {
  :category => home_energy,
    :title => "Cool Dish Washer",
    :summary => "Wash your dishes in cold water.",
  :description => 
  "TBA"
  },  
  
  {
  :category => home_energy,
   :title => "Audition, Please!",
   :summary => "Get a home energy audit.",
  :description => 
  "TBA"
  }
])

# Food
Activity.create([
  {
  :category => food,
    :title => "Seasoned Eater",
    :summary => "Buy more local, organic, and seasonal food.",
  :description => 
  "- Check out Boulder County Farmer's Market (every Saturday from April to November)
- Alfalfas offers free delivery on weekdays"
    },
    {
  :category => food,
      :title => "Plant Muncher",
    :summary => "Have more plant-based meals.",
  :description => 
  "-

- You're currently eating a lot of meat? Start out by having one veggie day per week. Then increase to two, three, four, five, six, and seven veggie days per week!
- You're already vegetarian? Try having a vegan day at least once a week! Then increase it to two, three, four, five, six, or even seven days a week.
- You're already vegan? Awesome."
    },
      {
  :category => food,
        :title => "Tree Hugger",
    :summary => "Plant your own food plants or trees.",
  :description => 
  "- You can get free Coloradan seeds at the Seeds Boulder Public Library cafe
- You can help reduce CO2 in the atmosphere by purchasing tree offsets
- You can purchase organic seeds and plants at Harlequin's Gardens in North Boulder"
    },
    {
  :category => food,
        :title => "Bulk Commodity",
    :summary => "Buy in bulk.",
  :description => 
  "..."
    }
])
  
# Consumption
Activity.create([
  {
  :category => consumption,
    :title => "Refill Please",
    :summary => "Use a reusable water bottle.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
  :category => consumption,
  :title => "Bag",
  :summary => "Bring your own grocery bags.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
  :category => consumption,
  :title => "Thrift Shopper",
  :summary => "Buy or exchange second-hand clothing.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
  :category => consumption,
  :title => "Thrift Shopper",
  :summary => "Buy or exchange second-hand clothing.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
  :title => "...",
    :summary => "Borrow or exchange books.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
    :title => "Old School",
    :summary => "Keep your phone (don't buy a new one).",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
    :title => "...",
    :summary => "Keep your laptop (don't buy a new one).",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
    :title => "...",
      :summary => "Buy recycled toilet paper.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
    :title => "Zero Waste",
    :summary => "Recycle all waste.",
  :description => 
    "... facts, tips, resources ..."
    },
    {
    :category => consumption,
    :title => "...",
      :summary => "Read articles for class digitally.",
  :description => 
    "... facts, tips, resources ..."
    }
])