desc "Update Activities"

task :update_activities => :environment do

  activities = [
    {
      # Speed Shower / Turn down your fridge
      :id => 11,
      :description => "
- Installing a low-flow shower head (2.5 gallons per minute or less) saves you money and protects the environment
- Challenge yourself to reduce the time spent in the shower
- A shower uses a lot less water and energy than a bath
- My favorite tip from the UK: \"Shower or bathe with a friend\" ([Waterwise](http://www.waterwise.org.uk/news.php/11/showers-vs.-baths-facts-figures-and-misconceptions))"
    },
    {
      # Conserve 'Em / Turn down your fridge
      :id => 12,
      :description => "
- Refridgerators use the most energy of any home appliance ([David Suzuki Foundation](http://www.davidsuzuki.org/what-you-can-do/reduce-your-carbon-footprint/use-your-home-appliances-more-wisely/))
- Place your fridge away from the stove and out of direct sunlight
- If you have cold storage places in your house, you can cool your products without wasting any electricity at all
- If you need a new refridgerator, look out for the [Energy Star label](http://www.energystar.gov/)"
    },
    {
      # Cool Dish Washer
      :id => 13,
      :description => "
- Running a full dishwasher is usually more efficient than hand-washing because it uses less water and is more efficient ([TreeHugger](http://www.treehugger.com/kitchen-design/built-in-dishwashers-vs-hand-washing-which-is-greener.html))
- If you are washing your dishes by hand, use cold water to rinse!
"
    },
    {
      # Audition, Please!
      :id => 14,
      :description => "
- You can get a free sustainability assessment through [SCORE](http://www.colorado.edu/ecenter/score). SCORE is a CU-funded program that is now also available to Naropa students. You receive free LED and CFL light bulbs, the install water-saving faucets and shower heads, and you get a free pizza!"
    },   
    {
      # Bag
      :id => 22,
      :title => "Re-Use Me",
      :description => "
- It takes 15 - 1,000 years for a plastic bag to break down (depending on the environment)
- When plastic degrades, it breaks down into tiny, toxic particles that severely affect the food chain
- The average person in the US uses between 350 and 500 plastic bags a year
- While paper bags can be recycled more easily, it requires more energy and resources to produce them and only a fraction of them end up being recycled (~ 20%)
- The best choice are reuseable bags
- By choosing reuseable bags, you remove more than 22,000 plastic bags from the environment over your lifetime"
    },
    {
      # Read articles for class digitally
      :id => 29,
      :description => "
- Printing articles uses both trees and electricity
- Producing 1lb of paper (~ 100 sheets) emits 2lbs of CO&#x2082;
- Most laptops consume around 60W of electricity. Meaning you can run your computer for 15 hours until you produce the same 2lbs of CO&#x2082;
- Having a laptop in class can be distracting! Make sure to ask your class for permission. And maybe turn off your WiFi, so you aren't tempted to distract yourself"
    },
    {
      # Old School
      :id => 25,
      :description => "
- The average US consumer upgrades their phone every 22 months
- Producing an iPhone 5S causes 64kg of CO&#x2082; emissions ([Ecologist](http://www.theecologist.org/green_green_living/2084407/the_carbon_credentials_of_smartphones.html))
- Producing an iPhone 6 causes 80kg of CO&#x2082; emissions ([restart](https://therestartproject.org/consumption/the-footprint-of-those-iphones/))"
    },
    {
      # Zero Waste
      :id => 28,
      :description => "
- When biodegradable materials (paper products, food scraps) are sent to a landfill, they decompose without oxygen and in the process create methane. Methane is 71 times more potent than CO&#x2082; over a 20-year period
- Recycling an aluminium can saves 95% of the energy used to make it
- The most environmentally friendly waste is the waste that is never created! Do you really need that disposable fork or that plastic bag?"
    },
    {
      # Keep your old laptop
      :id => 26,
      :title => "One More Year!",
      :description => "
- Production of a MacBook causes about 230kg of CO&#x2082; emissions
- If you do need new electronics, check out [Greenpeace's Guide to Greener Electronics](http://www.greenpeace.org/international/en/campaigns/detox/electronics/how-the-companies-line-up/)"
    },
    {
      # Thrift Shopper
      :id => 23,
      :description => "
- Check out Eco-Cycle's fantastic [Tour de Thrift Map](https://www.ecocycle.org/files/pdfs/Tour-de-Thrift_Boulder.pdf)"
    }
    ]
  
  activities.each do |a| 
    
    activity = Activity.find(a[:id])
    
    puts "Updating #{activity.id}: #{activity.title}"
    
    activity.update_attributes(a)
    
  end
  
end