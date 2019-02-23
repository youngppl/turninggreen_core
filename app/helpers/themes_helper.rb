module ThemesHelper
  def themesRows
    [
      ["Waste", "Food", "Body", "Water", "Biodiversity"],
      ["Fashion", "Clean", "Home", "Wellness", "Travel"]
    ]
  end

  def themesContent
    {
      Waste: {
        instructions: "The challenges are listed in the recommended order. Click on each challenge to learn more and add to your current challenges."
      }
    }
  end
end
