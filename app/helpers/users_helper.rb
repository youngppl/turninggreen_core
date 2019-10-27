module UsersHelper
  def getUserCompletedChallengeNames
    challengeNames = []
    current_user.challenges.each { |challenge| challengeNames << challenge.challenge_name }
    return challengeNames
  end

  def levels
    {
      0 => ['Seed', 'We present to you your own seed! Watch it grow as you journey through this app.'],
      1 => ['Planted', 'Into the soil your seed goes. Let\'s watch it grow up from here on out!'],
      2 => ['Germinated', 'From all the yummy nutrients and moisture, your seed has grown out of its coat!'],
      3 => ['Rooting', 'Your seed got a lil root. Watch that root wiggle its way down and branch out.'],
      4 => ['Leave-ing', 'Your seed is growin’ up! It\'s got its first pair of leaves. Can\'t wait til the leaves pop up above ground!'],
      5 => ['Sprout', 'Boop. Your seed\'s stem and leaves can now see sunlight! '],
      6 => ['Seedling', 'Your seedling is turning green and growing taller. It\'s growing up so fast!'],
      7 => ['Bud', 'Your seedling is now a budding plant! Let\'s see what grows from it!'],
      8 => ['Flower', 'Your plant is ready to mingle. Come, pollinators, we welcome you!'],
      9 => ['Fertilized', 'Oh, a bee just came by! Time to share that pollen!'],
      10 => ['Egg', 'Your plant is ready to now have a seed of its own! Let nature do its thing.'],
      11 => ['Fruiting', 'Your plant just had its own baby => a fruit!'],
      12 => ['Harvested', 'Your plant\'s fruit has been picked. Someone\'s now enjoying your plant\'s delicious sweetness. '],
      13 => ['Perennial', 'Congratulations, your plant is official! Now it\'ll grow and bloom every year without having to be replanted.']
    }
  end

  def level_ranges
    [0, 3, 8, 21, 51, 101, 158, 257, 352, 468, 602, 702, 752, 902, 10000]
  end

  def challenge_points
    {
      'pre': 5,
      'self': 10,
      'friends': 20,
      'community': 40
    }
  end
end
