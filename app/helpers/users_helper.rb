module UsersHelper
  def getUserCompletedChallengeNames
    challengeNames = []
    current_user.challenges.each { |challenge| challengeNames << challenge.challenge_name }
    return challengeNames
  end

  def getMemberParticipation(challenge)
    (Challenge.where(challenge_name: challenge).length / User.all.length.to_f * 100).to_i
  end

  def retrieveGlobalImpacts
    global_impacts = []
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/'Global%20Impact'!A:E?key=#{Rails.application.credentials[:google_api_key]}")
    json = JSON.load(request.body)
    impacts_json = json['values'][1..json.length]
    impacts_json.each do |challenge, theme, description, reflection|
      global_impacts << [challenge, theme, description, Reflection.find(reflection)]
    end
    return global_impacts
  end

  def generateMemberMap(challenge, mapid)
    # get location coordinates
    countries_json = File.read(Rails.root + 'app/helpers/countries.json')
    states_json = File.read(Rails.root + 'app/helpers/states.json')
    countries = JSON.parse(countries_json)
    states = JSON.parse(states_json)

    # get user location data
    users = Challenge.where(challenge_name: challenge).pluck(:user_id)
    coordinates = []
    users.each do |id|
      user = User.find(id)
      state = user.state
      country = user.country

      if (state != 'NO') 
        # user is located in US
        coordinates << states[state]
      else
        # user lives in another country
        coordinates << countries[country]
      end
    end

    maps_js = 
    "
    var #{mapid} = L.map('#{mapid}', {
      center: [40, -5],
      zoom: 0,
      dragging: false,
      doubleClickZoom: false,
      zoomControl: false,
      layers: [
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png')
      ]
    })
    maps.push(#{mapid})

    "
    markers = ""
    coordinates.each do |coordinate|
      markers += "L.circleMarker(#{coordinate},{radius: 5, color: '#7b9c74', fillOpacity: 1}).addTo(#{mapid})\n"
    end

    return (maps_js + markers).html_safe
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

  

  def challengeDataFromName(name) 
    all_challenges.detect {|challenge| challenge[:name] == name}
  end
end
