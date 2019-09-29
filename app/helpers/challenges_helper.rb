module ChallengesHelper
  def challenges
    {
      Waste: {
        :videoCaption => "Reducing your waste isn't hard to do.",
        :videoID => "BxKfpt70rLI",
        :briefDescription => "We throw a lot into the trash, and oftentimes,
        we don't think about it after closing the trash lid. How much trash do
        you toss everyday? Have you ever thought about where it all goes? Do you
        consider how you could avoid the waste to begin with?",
        :challenges => [
          {
            :name => "Audit your waste",
            :question => "Why does waste matter?",
            :description => "Our planet has a finite amount of resources. Instead of throwing things away, we should pass it onto someone else to use, OR repurpose it mechanically (recycle) or biologoically (compost) into a useful product. Follow the 5R's in this order, and you'll <a href=\"https://www.plasticpollutioncoalition.org/take-action-1\">minimize your waste</a> real fast: refuse, reduce, reuse, rot, recycle.",
            :links => {
              'How to conduct a waste audit (guide)' => 'https://www.goingzerowaste.com/31-day-challenge/how-to-conduct-a-waste-audit-day-31-of-the-zero-waste-challenge',
              'What you can do (guide)' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/category/getting-started/',
              'How much plastic do you use? (quiz)' => 'https://survey.thinkfieldpanel.com.au/wcfs/29402'
            },
            :instructions => ["Take a bag with you today + collect every piece of waste you'd throw in the trash, recycling, and compost.", 'At end of day, separate your collection into compostable, recyclable, and trash. Evaluate size of each pile.', 'Reflect upon your findings. How could you have avoided the trash you collected? Could you use alternative products to minimize your category sizes?'],
            :alt_instructions => ["Track your waste production with a list + mark them as compostable, recyclable, and trash."],
            :metric_question => "",
            :reflection_question => "What are ways in which you can reduce your waste?",
            :photo_prompt => ""
          },
          {
            :name => "Practice refusing",
            :question => "Why should I refuse taking freebies?",
            :description => "\"Freebies\" are passed out all the time. The problem is this \"free\" stuff often ends up in landfills, which is a waste of resources. When we take \"free\" stuff, we indirectly send the signal to make + buy more of these products. To reduce our trash output, we need to firmly say 'no thank you' and explain why. ",
            :links => {
              "Ask yourself these questions before taking something (blog)" => "https://www.goingzerowaste.com/blog/2015/9/17/the-power-of-saying-no",
              'How to ask for no gifts this holiday (guide)' => 'https://www.thegoodtrade.com/features/how-to-ask-for-no-gifts'
            },
            :instructions => ["Before you take any \"freebie\" (e.g. free stuff at events, <a href=\"https://trashisfortossers.com/why-requesting-no-straw-is-awesome/\">straw in drink</a>, napkin for takeout), pause and ask yourself: will I use this more than 5 times? If no, say 'No thank you. I won't use this.'", "Also consider: do I already own something that can serve the same purpose? If yes, then say 'No thank you, I don't need this.'", "If you do need it, feel free to take it. This challenge is about knowing when to say 'no' and when to say 'yes'."],
            :metric_question => "How many times did you refuse something you didn't need?",
            :reflection_question => "How was the experience of refusing things?",
            :photo_prompt => "Share a photo capturing this experience. Tell us what you refused."
          },
          {
            :name => "Shop with reusables",
            :question => "What's the deal with food packaging?",
            :description => "Packaging, even if it's recyclable or compostable, still end up in landfills. To best combat this, refuse waste at the root source so you don't have to figure out proper disposal later. For example, food packaging extends shelf life + makes shopping conveninet, but ask yourself: Is it necessary? Think about farmers' markets + grocery stores; it's possible to buy loose produce.",
            :links => {
              "How to shop with your own bags + jars (guide)" => "https://www.goingzerowaste.com/blog/2016/3/14/ultimate-guide-to-zero-waste-grocery-shopping",
              "Zero waste shopping at the farmers' market (video)" => "https://trashisfortossers.com/how-to-shop-at-farmers-market-withou/",
              "Where can I find bulk? (finder)" => "https://app.zerowastehome.com/",
              "Is bulk not available? (blog)" => "https://www.goingzerowaste.com/blog/2015/12/31/life-without-bulk"
            },
            :instructions => ["Bring your own reusable bags and jars", "Opt for loose goods (e.g. fruits, veggies, meat, cheese, bread) instead of packaged ones. Try to avoid any packaging that will be disposed of.", "Shop at bulk bins.", "Get 3 friends and family to join you! ***If goods are charged by weight (e.g. pounds or kilos), don't forget to tare your reusables before filling them up!"],
            :metric_question => "How many times did you use reusable containers (e.g. bags, jars) instead of single-use disposables?",
            :reflection_question => "How challenging was it to avoid food packaging waste?",
            :photo_prompt => "Share a photo of your shopping experience. Tell us what you learned from this experience."
          },
          {
            :name => "Eat without diposables",
            :question => "Why is disposable foodware a problem?",
            :description => "Paper plates, plastic cutlery, and foam cups are disposable. You use it once and throw it away. The problem is they end up sitting in landfills for a very long time. Additionally, disposable plastic foodware, particularly those with number 3 and 6 recycling number, are made with carcinogens that put wildlife and human health at risk.",
            :links => {
              "How to avoid plastic cutlery and containers (guide)" => "https://www.plasticfreejuly.org/get-involved/what-you-can-do/takeaway-cutlery-and-containers/",
              "What are the toxic chemicals in plastics? (blog)" => "https://www.madesafe.org/avoid-toxic-chemicals-plastics/",
              'Global fast food plastic survey' => 'https://www.plasticpollutioncoalition.org/global-fast-food-plastic-survey'
            },
            :instructions => ["Refuse any single-use disposables (e.g. food containers, utensils, straws, napkins, bags).", "Bring your own reusable alternatives to events (serving food).", "People will notice. Some will say something, and some won't. Simply explain to them: \"I bring my own reusable ___ to avoid the unnecessary waste.\" Feel free to engage in conversation or elaborate more."],
            :metric_question => "How many times did you bring your own (e.g. cup, bottle, plate, utensil, bowl, straw, napkin, bag) instead of using single-use disposable? ",
            :reflection_question => "How has your perspective about single-use disposables changed?",
            :photo_prompt => "Share a photo of bringing your own reusables. Tell us something you learned from this experience."
          },
          {
            :name => "Compost & recycle",
            :question => "Why is prioritize composting over recycling? ",
            :description => "When we <a href=\"https://www.goingzerowaste.com/blog/composting-for-apartments\">compost</a>, the remaining nutrients in food scraps + plant-based goods are reused in our environment. Recycling is also good (way better than sending goods to the landfill). However, <a href=\"https://www.goingzerowaste.com/blog/how-to-recycle-paper-the-right-way?rq=RECYCLE\">recyclables</a> like plastic and paper can't be recycled infinitely. Furthermore, recycling goods requires more resources (e.g. fuel costs, labor, energy, water) than composting.",
            :links => {
              "How to compost at home (video)" => "https://kisstheground.com/how-to-compost-at-home-simple/",
              "How to compost at home (infographic)" => "https://kisstheground.com/how-to-compost-at-home/",
              "What do all the plastic numbers mean? (guide)" => "https://www.babygreenthumb.com/p-122-safe-plastic-numbers-guide.aspx"
            },
            :background => "Composting can take on any form like starting your own compost pile, putting it in your green bin (if you have municipal composting), giving your compost to local farms, or tossing it into a compost bin in your community.",
            :instructions => ["Compost any waste that is compostable and biodegradable. If it's not compostable, then recycle it.", "As a last resort, send your trash into the landfill if it isn't reusable, compostable, or recyclable."],
            :metric_question => "Estimate how many times you composted or recycled instead of trashing something.",
            :reflection_question => "How challenging was it to avoid sending waste to the landfill?",
            :photo_prompt => "Take a photo of your compost. Tell us something you learned from this experience."
          },
          {
            :name => "Party zero waste style",
            :question => "How does this have an impact?",
            :description => "How many people do you know actually think about their trash? Hosting a zero waste party is a fun way to show people what reducing your waste looks like and how simple it is. Your party opens up the conversation for you to share what you've learned about waste with your guests and inspire them to reduce their waste as well!",
            :links => {
              "Tips for throwing a zero waste party (guide)" => "https://www.goingzerowaste.com/blog/five-tips-for-throwing-a-zero-waste-party ",
              "Hosting a zero waste dinner party (blog)" => "http://trashisfortossers.com/hosting-zero-waste-dinner-party/",
              "Composting From Apartment" => "https://www.goingzerowaste.com/blog/composting-for-apartments",
              "How to have a trash-free Halloweekend (blog)" => "http://trashisfortossers.com/how-to-have-a-trash-free-halloweekend/",
              "How to host a zero waste bachelorette party (blog)" => "http://trashisfortossers.com/zero-waste-bachelorette-party/"
            },
            :instructions => ["Curate a waste-free menu. That is, purchase ingredients with little to no packaging waste, and serve on reusable dishware.", "Provide reusable dishware, utensils, and napkins.", "Decorate as you wish with nature and non-single-use disposable items.", "Make a compost bin accessible.", "Invite at least 3 people and tell them it's a zero waste party!", "If you'd like, invite your guests to help clean up after the party: put things in the dishwasher or handwash; toss dirtied cloths into the laundry; and empty the compost bin. Don't worry, this is bonding time and not as bad as it sounds.", "Have fun!"],
            :metric_question => "How many people did you invite to your party?",
            :reflection_question => "What did you like about this challenge?",
            :photo_prompt => "Take a photo of your party setup. Tell us how you made your party zero waste."
          },
          {
            :name => "Collaborate locally",
            :question => "Why should I even try to be zero waste?",
            :description => "Anne-Marie says it well: <a href=\"https://zerowastechef.com/2019/02/14/how-to-cope-with-environmental-guilt-syndrome-egs/\">\"We don’t need a handful of people doing zero waste perfectly. We need millions of people doing it imperfectly.\"</a> The few individuals who commit to zero waste won't reverse the environmental damage already done; we need a whole lot more people involved. So what you do counts(! -- no matter how seemingly insignificant), because your actions show people around you an alternative way to live. This is how we slowly inspire change together. :)",
            :links => {
              "Guide to banning polystyrene in your community(guide)" => "https://www.5gyres.org/polystyrene",
              'Guide to change procurement practices (guide)' => "https://www.plasticfreejuly.org/get-involved/what-you-can-do/workplace-procurement/",
              'How have governments gotten involved in the zero waste movement? (info)' => 'https://www.greenamerica.org/blog/plastic-out-sustainability-in'
            },
            :instructions => ["Choose your target audience. (e.g. local business, local government)", "Draft up a proposal of what you want them to change and why it matters to them. Be specific. (e.g. Ask a local restaurant to provide plastic straw only upon request.)", "Reach out and give them your pitch.", "Offer to work with them to create this change for the community."],
            :metric_question => "How many businesses and government officials did you speak to about waste?",
            :reflection_question => "How can you engage more of your community of friends and family to reduce their waste?",
            :photo_prompt => "Take a photo capturing your attempt to speak up. Tell us something how you felt doing this challenge."
          }
          # ,
          # {
          #   :name => "",
          #   :question => "",
          #   :description => "",
          #   :links => {
          #
          #   },
          #   :instructions => [],
          #   :metric_question => "",
          #   :reflection_question => "",
          #   :photo_prompt => ""
          # }
        ]
      },
      Food: {
        :videoCaption => "Here is one farmer's take on sustainable regenerative farming.",
        :videoID => "hWkYtZxpQUo",
        :briefDescription => "Before taking a bite of food, do you ever think about how
        it got to you? Food should nourish us, but not all food is created equal. How food
        is grown influences nutritional quality, and you have the power to choose the
        quality of nutrients your body gets.",
        :challenges => [
          {
            :name => "Know your food",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Go to farmers' markets",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Make your own snacks",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Zero your food waste",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Cook a FLOSN meal",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Support the ocean",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Eat meat responsibly",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Body: {
        :videoCaption => "The main takeaway: know what's in your products.",
        :videoID => "6wAToqkcAow",
        :briefDescription => "Did you know our skin absorbs 60% of everything we put on it?
        When buying products, we look for ones that make us feel our best. But, how often have
        you flipped the package to read the ingredient list? Even then, do you know what the
        ingredients are?",
        :challenges => [
          {
            :name => "Know your products",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Make your own",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Find alternatives",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Inform companies",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Care for your body",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Replenish zero waste",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Be the influencer",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Water: {
        :videoCaption => "Think about water in the big picture.",
        :videoID => "b1f-G6v3voA",
        :briefDescription => "An incredibly small amount (0.35%) of the water in
        our planet is available to us. To ensure equitable access, we need to change
        our lifestyle habits, like the food we eat and how we commute. Do you know how
        much water it takes to fuel your lifestyle?",
        :challenges => [
          {
            :name => "Track your usage",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Skip the slip",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Get a bucket buddy",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "No more single-use bottles",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Eat plant-based",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Cruise lightly",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Raise awareness",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Biodiversity: {
        :videoCaption => "Biodiversity is like insurance to our survival.",
        :videoID => "GK_vRtHJZu4",
        :briefDescription => "Did you know there are more organisms in a tablespoon
        of healthy soil than there are people on Earth? This diversity in our soil is
        responsible for 95%(!) of our food. We don't think much about these little
        fellas much, but they're critical to our food security.",
        :challenges => [
          {
            :name => "Biodiversity 101",
            :question => "What is biodiversity?",
            :description => "Nature is a complex system, where every species plays an important role. Biodiversity is the checks and balances system in nature. A significant loss in biodiversity (in water, soil, and land) can imbalance our world such that food security + human health become at risk. Knowing this helps us understand why it's so important to care for soil health and promote biodiversity.",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Volunteer in garden",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Start a compost pile",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Attract pollinators",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Plant perennials",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Shop local & organic",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Know your community",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Fashion: {
        :videoCaption => "What is fast fashion (in under 5 minutes)?",
        :videoID => "fR7bXsoNwwE",
        :briefDescription => "We live in a world of fast fashion where low prices often mean worker exploitation
        and cheap quality. Have you ever thought about how the price of your clothes translate to how your
        clothes were made?",
        :challenges => [
          {
            :name => "Know your clothes",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Keep them useful",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Find alternatives",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Challenge brands",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Clean naturally",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Take a shopping break",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "No more synthetics",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Clean: {
        :videoCaption => "To unlock the Clean theme, you must complete 2 Body challenges.",
        :briefDescription => "There are many products on the market that leave behind harmful chemicals in place of
        the dirt and grime we want to remove. Cleaning shouldn't be harmful or complicated. We'll show you how to
        keep it simple and fun!",
        :challenges => [
          {
            :name => "Audit your products",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Make your own",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Find alternatives",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Give feedback",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Go plastic-free reusable",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Host a cleaning party",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Push for change",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Home: {
        :videoCaption => "To unlock the Home theme, you must complete 1 clean and 1 fashion challenge.",
        :briefDescription => "Did you know that indoor air is more polluted than the air outside? Carpets,
        paint, and furniture, for example, can release pollutants that build up in our homes. This raises the
        question: do you know the material composition of the things in your home?",
        :challenges => [
          {
            :name => "Declutter your space",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Freshen the air",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Conserve energy",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Swap out plastic",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Detox your bed",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Show off your home",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Curate a healthy home",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Wellness: {
        :videoCaption => "To unlock Wellness theme, you complete 1 food challenge.",
        :briefDescription => "Your health is most important because good health enables you to do the things you want
        and dream of. It sucks to be sick, so take care of your mental, physical, and spiritual health. Here, we'll just
        remind you of how to do that.",
        :challenges => [
          {
            :name => "You're #1",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Get enough sleep",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Build your relationships",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Exercise",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Take a sugar detox",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Free yourself",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Find peace",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      },
      Travel: {
        :videoCaption => "To unlock the Travel theme, you must complete 1 waste and 1 food challenge.",
        :briefDescription => "Being mindful of the impact of our daily actions doesn't stop when we leave home. It
        is still important if we're in the front yard, down the street, another city, and another country. Take what
        you've learned on your next trip, and show us what you can do!",
        :challenges => [
          {
            :name => "Know your values",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Go outdoors",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Eat out mindfully",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Refuse single-use",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Affirm your interests",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Shop fair trade",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          },
          {
            :name => "Gift responsibly",
            :question => "",
            :description => "",
            :links => {

            },
            :instructions => "",
            :metric_question => "",
            :reflection_question => "",
            :photo_prompt => ""
          }
        ]
      }
    }
  end

  def all_challenges
    all_challenges = []
    themes.each do |theme|
      challenges[theme.to_sym][:challenges].each do |challenge|
        all_challenges << challenge
      end
    end
    all_challenges
  end
end
