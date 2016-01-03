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