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
- Taking the bus not only saves you money on fuel and maintenance, but also [significantly reduces your carbon footprint](http://www.beagleybrown.com/planes-trains-or-automobiles-carbon-emissions-compared-for-different-forms-of-transport/)
- To plan your trip, use [RTD's trip planner](http://www.rtd-denver.com/GoogleTripPlanner.shtml) or just use [Google Maps](https://www.google.com/maps/dir/Naropa+University,+2130+Arapahoe+Avenue,+Boulder,+CO+80302/Naropa+University+Nalanda+Campus,+6287+Arapahoe+Avenue,+Boulder,+CO+80301/@40.0149543,-105.2717109,13z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x876bec2d6ad31cb1:0x298dfceb72968f05!2m2!1d-105.2671672!2d40.0138766!1m5!1m1!1s0x876bf211fb8a1919:0xfdb733d2057a0f22!2m2!1d-105.2074092!2d40.0160426!3e3)
- In most cases, you can even take your bike with you (using the bike racks)",
  :image => File.new("#{Rails.root}/public/images/transportation/bus.jpg")
  },
  {
  :category => transportation,
    :title => "Bring Your Friends",
  :summary => "Carpool.",
  :description =>
      "- Carpooling with one to four friends or classmates greatly reduces carbon emissions
- In your classes, ask who lives nearby and carpool with them. It's a great way to make friends and save the environment
- Use [GasBuddy](http://then.gasbuddy.com/Trip_Calculator.aspx) to calculate both trip costs and carbon emissions",
  :image => File.new("#{Rails.root}/public/images/transportation/carpool.jpg")
  },
  {
  :category => transportation,
  :title => "Add Some Air",
  :summary => "Regularly check your tire pressures.",
  :description =>
      "- Having underinflated tires decreases your fuel economy by up to 10% and increases the wear on your tires
- Check your tire pressure at least once a month (some recommend checking it every time you get gas)
- Make sure your tires are cold when checking and inflating them (not having driven during the past 4-5 hours)
- Learn more [ensuring proper tire inflation here](http://www.sustainablebabysteps.com/inflating-tires.html)",
  :image => File.new("#{Rails.root}/public/images/transportation/tire-pressure.jpg")
  },
  {
  :category => transportation,
    :title => "Drive Smart",
    :summary => "Accelerate slowly and anticipate stops.",
  :description =>
"- Go easy on the brakes and gas pedal
- Avoid hard accelerations
- Reduce your time spent idling (no more than 30 seconds)
- Unload unnecessary items in your trunk to reduce weight
- Use cruise control if you have it
- For vehicles with selectable four-wheel drive, consider operating in two-wheel drive mode when road conditions make it safe to do so

Source: [EPA](www3.epa.gov/climatechange/wycd/road.html)",
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
      "- 90% of the energy used in washing clothes goes towards heating the water [Treehugger](http://www.treehugger.com/culture/washing-laundry-in-cold-water-is-the-same-as.html)
- Unless your clothes are seriously stained, there is no difference in cleanliness between using hot and cold water. In fact, hot water actually does the most damage to clothes (shrinking, wrinkling, fading)
- Most detergents work fine on the cold-water setting, but if you are unsatisfied, there are specific cold-water detergents to choose from
- By washing on cold cycle, the average American family can reduce its carbon footprint by more than 2,000 pounds
- If you're getting a new washing machine, look out for the [Energy Star label](http://energy.gov/energysaver/tips-shopping-appliances)
- Interested in [making your own laundry soap](http://www.lizmarieblog.com/2013/05/diy-laundry-soap-one-year-review-recipe/)?",
    :image => File.new("#{Rails.root}/public/images/home-energy/washing-machine.jpg")
  },

  {
  :category => home_energy,
  :title => "Light It Up",
  :summary => "Replace your light bulbs with LEDs.",
  :description =>
      "- LEDs are up to 80% more efficient than regular light bulbs: 95% of energy is converted into light and only 5% wasted as heat
- Because of their efficiency, they reduce both your carbon footprint and your eletricity bill
- LEDs also have a 6 times longer lifespan than ordinary light bulbs
- You can buy LEDs between $5-15 at most larger store, such as King Soopers, Target, or BestBuy
- You can also compare prices and buy LEDs online from [EarthLED](https://www.earthled.com/)",
    :image => File.new("#{Rails.root}/public/images/home-energy/leds.jpg")
  },
  
  {
  :category => home_energy,
  :title => "Pull The Plug",
  :summary => "Unplug devices that are not in use.",
  :description => 
    "- Leaving your electronic devices plugged in continuously consumes electricity, so-called phantom power
- According to Energy Star, the average household spends $100 a year to power devices that are turned off
- You can avoid wasting electricity by simply pulling the plug. Or you can buy a power strip, which uses no electricity when turned off.",
    :image => File.new("#{Rails.root}/public/images/home-energy/unplug.jpg")
  },
  
  {
  :category => home_energy,
  :title => "Keep It Cool",
  :summary => "Turn down your thermostat.",
  :description => 
    "- Heating makes up the majority of household energy use
- Set your thermostat to 68&#x00b0;F while you are awake and to the mid 50s while you're away or asleep
- Learn more about home heating in [this infographic from the Department of Energy](http://energy.gov/articles/energy-saver-101-infographic-home-heating)
- Learn how to use a programmable thermostat in [this interactive tutorial](http://www.energystar.gov/index.cfm?c=thermostats.progThermostat)",
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
  "- Check out [Boulder County Farmer's Market](http://www.bcfm.org/) (every Saturday from April 2 to November 19) for a wide selection of local and seasonal foods
- Did you know that [Alfalfa's offers a free delivery serice](https://www.alfalfas.com/special-services/delivery/)?
- The entire produce section of [Vitamin Cottage](https://www.naturalgrocers.com/store-location/boulder/) is organic!
- On a budget? [Learn which 15 vegetables and fruits are most and least contaminated with pesticides](http://static.foodnews.org/pdf/EWG-shoppers-guide.pdf)
- Check out the [CFM crop calendar](http://coloradofreshmarkets.com/wp-content/uploads/2015/04/cfm_crop_calendar.pdf) to learn what's in season
- [Door to Door Organics](https://colorado.doortodoororganics.com/how-it-works) is a weekly local and organic grocery delivery service right to your doorstep",
    :image => File.new("#{Rails.root}/public/images/food/local.jpg")
    },
    {
  :category => food,
      :title => "Plant Muncher",
    :summary => "Have more plant-based meals.",
  :description => 
      "- The FAO estimates that 18% of global greenhouse gas emissions are attributable to livestock ([FAO](http://www.fao.org/docrep/010/a0701e/a0701e00.HTM))
- Switching from a meat-intense to a vegan-diet can reduce your carbon footprint by almost 2t CO₂ per year ([Shrink That Footprint](http://shrinkthatfootprint.com/food-carbon-footprint-diet))
- You're currently eating a lot of meat? Start out by having one veggie day per week.
- You're already vegetarian? Try having a vegan day once a week!
- You're already vegan? Keep it up.
- Check out [Peta's guide for transitioning to a vegetarian or vegan diet](http://www.peta.org/living/food/making-transition-vegetarian/)",
    :image => File.new("#{Rails.root}/public/images/food/vegetables.jpg")
    },
      {
  :category => food,
        :title => "Tree Hugger",
    :summary => "Plant your own food plants or trees.",
  :description => 
  "- You can get free Coloradan seeds at the [Seeds Boulder Public Library cafe](http://seedsboulder.com/)
- You can purchase organic seeds and plants at [Harlequin's Gardens](http://www.harlequinsgardens.com/) in North Boulder
- You can plant your own trees or [help reduce CO&u2082; emissions by protecting existing rainforests](https://standfortrees.org/en/)
- Get involved with the Naropa Community Greenhouse or the Food Forest",
  :image => File.new("#{Rails.root}/public/images/food/plant.jpg")
    },
    {
  :category => food,
        :title => "Bulk Commodity",
    :summary => "Buy in bulk.",
  :description => 
      "- Buying in bulk is more environmentally friendly, uses less packaging, and is often cheaper
- Did you know you can even buy spices and tea in bulk? Alfalfa's, for example, offers dozens of different spices and teas.",
    :image => File.new("#{Rails.root}/public/images/food/bulk.jpg")
    },
  {
  :category => food,
    :title => "Put It In The Bin",
    :summary => "Compost all organic waste.",
    :description => 
    "- When food waste decomposes in landfills, it produces methane &mdash; a gas 23 to 71 times worse than CO&#x2082;
- Landfills are the 3rd-largest source of methane emissions in the US ([EPA](http://www3.epa.gov/climatechange/ghgemissions/gases/ch4.html))
- **Everything** you eat can be composted (including meat, bones, and dairy scraps)!
- Not sure what can be composted? Check out [Eco-Cycle's handy one-pager](http://ecocycle.org/files/pdfs/CurbsideCompostGuidelines.pdf)
- When you compost with Eco-Cycle, [your compost is turned into rich Micro Brew soil](http://ecocycle.org/recycle-compost-reuse/microbe-brew) that feeds future plants and trees!
- If you prefer to start your own backyard compost, check out [this guide](http://ecocycle.org/backyard-composting) for more information",
    :image => File.new("#{Rails.root}/public/images/food/compost.jpg")
    },
  {
    :category => food,
    :title => "Refill Please",
    :summary => "Use a reusable water bottle.",
  :description => 
    "- It is estimated that it takes 3 liters of water to produce 1 liter of bottled water
- It takes over 1.5 million barrels of oil to meet the demand of US water bottle manufacturing
- A 12 ounce plastic bottle causes 0.15 pounds CO&#x2082; emissions",
    :image => File.new("#{Rails.root}/public/images/food/water-bottle.jpg")
    },
    {
    :category => food,
    :title => "Bring Your Own",
    :summary => "Do not use disposable plates and cutlery.",
  :description => 
      "- Most plastic cutlery cannot be recycled
- While compostable or biodegradable cutlery is a lot better than their plastic counterparts, they still cause more emissions than you bringing your own metal cutlery
- If you are offered plastic cutlery or paper napkins at a take-out restaurant, ask yourself if you really need them",
    :image => File.new("#{Rails.root}/public/images/food/plastic-fork.jpg")
    }
])
  
# Consumption
Activity.create([
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
      "- Check out Eco-Cycle's fantastic [Tour de Thrift Map](https://www.ecocycle.org/files/pdfs/Tour-de-Thrift_Boulder.pdf)",
      :image => File.new("#{Rails.root}/public/images/consumption/exchange.jpg")
    },
    {
    :category => consumption,
  :title => "Book Worm",
    :summary => "Borrow or exchange books.",
  :description => 
      "- Naropa's [Allen Ginsberg Library](http://www.naropa.edu/allen-ginsberg-library/index.php) carries over 30,000 books
- The [Boulder Public Library](http://boulderlibrary.org/) has thousands of books, CDs, and DVDs. Getting a library card is easy: Just present your Driver's License or [alternative evidence of local residence](https://boulderlibrary.org/card/#requirements)
- Did you know that - as a Naropa student - you can [obtain a free CU library card and get access to ten thousands of books](http://www.naropa.edu/allen-ginsberg-library/norlin-vouchers.php)? Visit the Allen Ginsberg Library to get started!
- Cannot find the book you are looking for in any of these libraries? Through [Naropa's Interlibrary Loan Program](http://www.naropa.edu/allen-ginsberg-library/interlibrary-loan.php), you can actually request books from all across the world to be sent right to our library!
- If for some reason you do really want to get your private copy of a book, consider buying used or 2nd-hand. One great reseller is [BetterWorldBooks](http://www.betterworldbooks.com/)",
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
      :title => "Get Me Recycled",
      :summary => "Buy recycled toilet paper.",
  :description => 
      "- According to [National Geographic](http://voices.nationalgeographic.com/2010/04/16/27000_trees_a_day_used_for_toilet_tissue/), 27,000 trees are flushed away in the form of toilet paper every day
- Producing recycled paper requires 28 - 70% less energy, saves water, and produces fewer air pollutants ([Ecologist](http://www.theecologist.org/green_green_living/behind_the_label/269364/behind_the_label_recycled_toilet_tissue.html))
- [Compare the environmental ratings of various tissue paper products](http://www.nrdc.org/land/forests/tissueguide/ratings.aspx) compiled by the NRDC",
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