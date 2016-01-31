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

transportation = ActivityCategory.create(:title => "Transportation", :slug => "transportation", :image => File.new("#{Rails.root}/public/images/transportation.jpg"))
home_energy = ActivityCategory.create(:title => "Home Energy", :slug => "home-energy", :image => File.new("#{Rails.root}/public/images/home-energy.jpg"))
food = ActivityCategory.create(:title => "Food", :slug => "food", :image => File.new("#{Rails.root}/public/images/food.jpg"))
consumption = ActivityCategory.create(:title => "Consumption", :slug => "consumption", :image => File.new("#{Rails.root}/public/images/consumption.jpg"))

  
# Transportation
Activity.create([
  {
  :category => transportation,
  :title => "Bike Friend",
  :summary => "Leave the car at home and bike.",
  :description =>
      "- Check out [Naropa's Bike Shack](http://www.naropa.edu/student-life/student-services/transportation/bike-shack.php) for free bike maintainance, repair and rentals
- Get a membership with [Boulder's bike-sharing program](https://boulder.bcycle.com/) for $40 per year (sign up with your Naropa .edu email address and use the promo code STUDENT)
- Sign up for [Boulder's free Bus-then-Bike program](http://www.bouldercounty.org/roads/transit/pages/finalmileproject.aspx) and receive access to safe, long-term bicycle storage shelters
- Did you know that you most Boulder buses have bike racks at the front, allowing you to take your bike with you?
- Boulder has miles and miles of bike paths &mdash; [see the map](https://www-static.bouldercolorado.gov/docs/map-bike-pedestrian-routes-1-201407111617.pdf)",
  :image => File.new("#{Rails.root}/public/images/transportation/bike-friend.jpg")
  },
  {
  :category => transportation,
    :title => "Take The Bus",
  :summary => "Take the bus.",
  :description =>
      "- Did you know that you can ride for free on all RTD buses using your Naropa bus pass? Even to the airport!
- To plan your trip, use [RTD's trip planner](http://www.rtd-denver.com/GoogleTripPlanner.shtml) or just use [Google Maps](https://www.google.com/maps/dir/Naropa+University,+2130+Arapahoe+Avenue,+Boulder,+CO+80302/Naropa+University+Nalanda+Campus,+6287+Arapahoe+Avenue,+Boulder,+CO+80301/@40.0149543,-105.2717109,13z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x876bec2d6ad31cb1:0x298dfceb72968f05!2m2!1d-105.2671672!2d40.0138766!1m5!1m1!1s0x876bf211fb8a1919:0xfdb733d2057a0f22!2m2!1d-105.2074092!2d40.0160426!3e3)",
  :image => File.new("#{Rails.root}/public/images/transportation/bus.jpg")
  },
  {
  :category => transportation,
    :title => "Bring Your Friends",
  :summary => "Carpool.",
  :description =>
      "- Use [GasBuddy](http://then.gasbuddy.com/Trip_Calculator.aspx) to calculate both trip costs and carbon emissions",
  :image => File.new("#{Rails.root}/public/images/transportation/carpool.jpg")
  },
  {
  :category => transportation,
  :title => "Add Some Air",
  :summary => "Regularly check your tire pressures.",
  :description =>
      "Learn more at [http://www.sustainablebabysteps.com/inflating-tires.html](http://www.sustainablebabysteps.com/inflating-tires.html)",
  :image => File.new("#{Rails.root}/public/images/transportation/tire-pressure.jpg")
  },
  {
  :category => transportation,
    :title => "Drive Smart",
    :summary => "Go easy on the brakes and the gas pedal.",
  :description =>
"To improve your fuel economy and reduce greenhouse gas emissions, go easy on the brakes and gas pedal, avoid hard accelerations, reduce your time spent idling (no more than 30 seconds), and unload unnecessary items in your trunk to reduce weight. If you have a removable roof rack and you are not using it, take it off to improve your fuel economy. Use cruise control if you have it, and for vehicles with selectable four-wheel drive, consider operating in two-wheel drive mode when road conditions make it safe to do so.

[Source: EPA]",
  :image => File.new("#{Rails.root}/public/images/transportation/drive-smart.jpg")
  },
  {
  :category => transportation,
    :title => "Fly Green",
    :summary => "Offset your flight-related carbon emissions.",
  :description =>
      "- Because of the altitude, emissions from airplanes are two times worse than emissions caused on the ground &mdash; a phenomenon called [radiative forcing](http://www.treehugger.com/aviation/what-the-heck-is-radiative-forcing-why-should-my-aviation-carbon-offset-include-it.html)

Check out various carbon footprint calculator and offset sites:

- [International Civil Aviation Organization](http://www.icao.int/environmental-protection/CarbonOffset/Pages/default.aspx)
- [Carbon Footprint](http://calculator.carbonfootprint.com/calculator.aspx?tab=3)
- [TerraPass](http://www.terrapass.com/carbon-footprint-calculator/)",
  :image => File.new("#{Rails.root}/public/images/transportation/airplane.jpg")
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
- Cold water washing detergent",
    :image => File.new("#{Rails.root}/public/images/home-energy/washing-machine.jpg")
  },

  {
  :category => home_energy,
  :title => "Light It Up",
  :summary => "Replace your light bulbs with LEDs.",
  :description =>
"- where to buy
- price",
    :image => File.new("#{Rails.root}/public/images/home-energy/leds.jpg")
  },
  
  {
  :category => home_energy,
  :title => "Pull The Plug",
  :summary => "Unplug devices that are not in use.",
  :description => 
  "- phantom power",
    :image => File.new("#{Rails.root}/public/images/home-energy/unplug.jpg")
  },
  
  {
  :category => home_energy,
  :title => "Keep It Cool",
  :summary => "Turn down your thermostat.",
  :description => 
  "TBA",
    :image => File.new("#{Rails.root}/public/images/home-energy/thermostat.jpg")
  },  
  
  {
  :category => home_energy,
  :title => "Speed Shower",
  :summary => "Take shorter showers and fewer baths.",
  :description => 
  "TBA",
    :image => File.new("#{Rails.root}/public/images/home-energy/shower.jpg")
  },

  {
  :category => home_energy,
    :title => "Conserve 'Em",
    :summary => "Turn down your fridge.",
  :description => 
  "TBA",
    :image => File.new("#{Rails.root}/public/images/home-energy/fridge.jpg")
  },  
  
  {
  :category => home_energy,
    :title => "Cool Dish Washer",
    :summary => "Wash your dishes in cold water.",
  :description => 
  "TBA",
    :image => File.new("#{Rails.root}/public/images/home-energy/washing-dishes.jpg")
  },  
  
  {
  :category => home_energy,
   :title => "Audition, Please!",
   :summary => "Get a home energy audit.",
  :description => 
  "TBA",
    :image => File.new("#{Rails.root}/public/images/home-energy/audit.jpg")
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
- Alfalfas offers free delivery on weekdays",
    :image => File.new("#{Rails.root}/public/images/food/local.jpg")
    },
    {
  :category => food,
      :title => "Plant Muncher",
    :summary => "Have more plant-based meals.",
  :description => 
  "-

- You're currently eating a lot of meat? Start out by having one veggie day per week. Then increase to two, three, four, five, six, and seven veggie days per week!
- You're already vegetarian? Try having a vegan day at least once a week! Then increase it to two, three, four, five, six, or even seven days a week.
- You're already vegan? Awesome.",
    :image => File.new("#{Rails.root}/public/images/food/vegetables.jpg")
    },
      {
  :category => food,
        :title => "Tree Hugger",
    :summary => "Plant your own food plants or trees.",
  :description => 
  "- You can get free Coloradan seeds at the Seeds Boulder Public Library cafe
- You can help reduce CO2 in the atmosphere by purchasing tree offsets
- You can purchase organic seeds and plants at Harlequin's Gardens in North Boulder",
  :image => File.new("#{Rails.root}/public/images/food/plant.jpg")
    },
    {
  :category => food,
        :title => "Bulk Commodity",
    :summary => "Buy in bulk.",
  :description => 
  "...",
    :image => File.new("#{Rails.root}/public/images/food/bulk.jpg")
    }
])
  
# Consumption
Activity.create([
  {
  :category => consumption,
    :title => "Refill Please",
    :summary => "Use a reusable water bottle.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/water-bottle.jpg")
    },
    {
  :category => consumption,
  :title => "Bag",
  :summary => "Bring your own grocery bags.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/bag.jpg")
    },
    {
  :category => consumption,
  :title => "Thrift Shopper",
  :summary => "Buy or exchange second-hand clothing.",
  :description => 
    "... facts, tips, resources ...",
      :image => File.new("#{Rails.root}/public/images/consumption/exchange.jpg")
    },
    {
    :category => consumption,
  :title => "...",
    :summary => "Borrow or exchange books.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/books.jpg")
    },
    {
    :category => consumption,
    :title => "Old School",
    :summary => "Keep your phone (don't buy a new one).",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/phone.jpg")
    },
    {
    :category => consumption,
    :title => "...",
    :summary => "Keep your laptop (don't buy a new one).",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/laptop.jpg")
    },
    {
    :category => consumption,
    :title => "...",
      :summary => "Buy recycled toilet paper.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/toilet-paper.jpg")
    },
    {
    :category => consumption,
    :title => "Zero Waste",
    :summary => "Recycle all waste.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/zero-waste.jpg")
    },
    {
    :category => consumption,
    :title => "...",
      :summary => "Read articles for class digitally.",
  :description => 
    "... facts, tips, resources ...",
    :image => File.new("#{Rails.root}/public/images/consumption/read-digitally.jpg")
    }
])

# Create public user
User.skip_callback(:create, :after, :send_welcome_email_to_user)

u = User.new({
  :name => "Test",
  :email => "test",
  :password => "test"
  })

u.save(:validate => false)

User.set_callback(:create, :after, :send_welcome_email_to_user)