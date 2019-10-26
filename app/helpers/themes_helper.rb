module ThemesHelper
  def themes
    ["Waste", "Body", "Fashion", "Water", "Food", "Biodiversity", "Clean", "Wellness", "Home", "Travel"]
  end

  def themes_description
    {
      Waste: "Have you ever thought about how much trash you toss everyday?",
      Body: "Did you know our skin absorbs 60% of everything we put on it?",
      Home: "Did you know that indoor air is more polluted than the air outside?",
      Water: "Do you know how much water it takes to fuel your lifestyle?",
      Food: "Before taking a bite of food, do you wonder how it got into your hands?",
      Travel: "Your actions matter no matter where you are in the world.",
      Biodiversity: "Did you know there are more organisms in a tbsp of healthy soil than people on Earth?",
      Wellness: "Good health enables you to do the things you want and dream of.",
      Clean: "Cleaning generally has a bad rap, but it shouldn't be harmful or complicated.",
      Fashion: "Have you considered how prices translate to how your clothes were made?"
    }
  end

  def themes_unlock
    {
      Home: "do 1 clean + 1 fashion challenge to unlock",
      Travel: "do 1 waste + 1 food challenge to unlock",
      Wellness: "do 1 food challenge to unlock",
      Clean: "do 2 body challenge to unlock"
    }
  end

  def themesContent
    {
      Waste: {
        instructions: "The challenges are listed in the recommended order. Click on each challenge to learn more and add to your current challenges."
      }
    }
  end
end
