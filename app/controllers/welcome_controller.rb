class WelcomeController < ApplicationController
  def index
    @highlighted_challenges = [
      challenges[:Waste][:challenges].select {|x| x[:name] == "Audit your waste" }[0],
      challenges[:Body][:challenges].select {|x| x[:name] == "DIY body products" }[0],
      challenges[:Fashion][:challenges].select {|x| x[:name] == "Keep clothes useful" }[0],
      challenges[:Water][:challenges].select {|x| x[:name] == "Eat plant-based" }[0],
      challenges[:Food][:challenges].select {|x| x[:name] == "Know your food" }[0],
      challenges[:Biodiversity][:challenges].select {|x| x[:name] == "Attract pollinators" }[0],
      challenges[:Clean][:challenges].select {|x| x[:name] == "Host a cleaning party" }[0],
      challenges[:Wellness][:challenges].select {|x| x[:name] == "Take a sugar detox" }[0],
      challenges[:Home][:challenges].select {|x| x[:name] == "Freshen the air" }[0],
      challenges[:Travel][:challenges].select {|x| x[:name] == "Refuse single-use" }[0]
    ]
  end

  def privacy
  end
end
