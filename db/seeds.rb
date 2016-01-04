# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = Question.create([
  {title: "Transportation: Driving",
    question: "How many miles do you drive a car per week?"},
  
  {title: "Transportation: Public",
    question: "How many miles do you ride the bus per week?"},

  {title: "Transportation: Flying",
    question: "How many hours do you fly each year?"},
  
  {title: "Home Energy: Electricity",
    question: "How much electricity (kWh) do you use per year?"},
  
  {title: "Food: Meat Consumption",
    question: "How many meals with meat do you eat per week?"}  
  ])

reduction_options = ReductionOption.create([
  {title: "Bike Friend",
    description: "Bike to school once per week.",
    carbon_impact: "250",
    image_url: "http://www.missohiobiketour.com/wp-content/uploads/2014/02/Biking-in-Europe.jpg"},
  {title: "Plant Muncher",
    description: "Have only vegan meals one day per week.",
    carbon_impact: "375",
    image_url: "http://img2.timeinc.net/health/img/web/2014/01/slides/vegan-intro-400x400.jpg"},
  {title: "Light It Up",
    description: "Replace your light bulbs with energy-saving LEDs.",
    carbon_impact: "160",
    image_url: "http://s3.amazonaws.com/digitaltrends-uploads-prod/2015/06/Generic-LED-light-bulb.jpg"},
  {title: "Cold As Ice",
    description: "Wash your clothes with cold water.",
    carbon_impact: "50",
    image_url: "http://i.telegraph.co.uk/multimedia/archive/01850/washing-machine_1850435b.jpg"},
   {title: "Tree Hugger",
    description: "Plant one hectare of trees.",
    carbon_impact: "1000",
    image_url: "http://www.earthtimes.org/newsimage/protecting-rainforests-responsibility-conservation_18411.jpg"}, 
  
  ])