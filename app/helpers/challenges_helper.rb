# frozen_string_literal: true

module ChallengesHelper
  def challenges
    {
      Waste: {
        videoCaption: "Reducing your waste isn't hard to do.",
        videoID: 'BxKfpt70rLI',
        briefDescription: "We throw a lot into the trash, and oftentimes,
        we don't think about it after closing the trash lid. How much trash do
        you toss everyday? Have you ever thought about where it all goes? Do you
        consider how you could avoid the waste to begin with?",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=BxKfpt70rLI\">\"Going green shouldn't be this hard\"</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Audit your waste',
            type: 'pre',
            question: 'Why does waste matter?',
            description: "The chemicals used in the production of goods impact workers' health. The materials and energy required to make and transport goods contribute to climate change. The generation and accumulation of waste disproportionately affects the world's poorest communities. Waste matters. And it comes from <a target=\"_blank\" href=\"https://www.breakfreefromplastic.org/globalbrandauditreport2019/?mc_cid=8671ee16ab&mc_eid=f265c1970f\">every part of the production, usage, and disposal of goods.</a> <a target=\"_blank\" href=\"https://www.plasticpollutioncoalition.org/take-action-1\">Minimize your waste</a> (in this order): refuse, reduce, reuse, rot, recycle.",
            links: {
              'How to conduct a waste audit (guide)' => 'https://www.goingzerowaste.com/31-day-challenge/how-to-conduct-a-waste-audit-day-31-of-the-zero-waste-challenge',
              'What you can do (guide)' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/category/getting-started/',
              'How much plastic do you use? (quiz)' => 'https://survey.thinkfieldpanel.com.au/wcfs/29402'
            },
            instructions: ["Take a bag with you today + collect every piece of waste you'd throw in the trash, recycling, and compost.", 'At end of day, separate your collection into compostable, recyclable, and trash. Evaluate size of each pile.', 'Reflect upon your findings. How could you have avoided the trash you collected? Could you use alternative products to minimize your category sizes?'],
            alt_instructions: ['Alternative: Track your waste production with a list + mark them as compostable, recyclable, and trash.'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'What are ways in which you can reduce your waste?',
            photo_prompt: ''
          },
          {
            name: 'Practice refusing',
            type: 'self',
            question: 'Why should I refuse taking freebies?',
            description: "\"Freebies\" are passed out all the time. The problem is this \"free\" stuff often ends up in landfills, which is a waste of resources. When we take \"free\" stuff, we indirectly send the signal to make + buy more of these products. To reduce our trash output, we need to firmly say 'no thank you' and explain why. ",
            links: {
              'Ask questions before taking something (blog)' => 'https://www.goingzerowaste.com/blog/2015/9/17/the-power-of-saying-no',
              'How to ask for no gifts this holiday (guide)' => 'https://www.thegoodtrade.com/features/how-to-ask-for-no-gifts'
            },
            instructions: ["Before you take any \"freebie\" (e.g. free stuff at events, <a target=\"_blank\" href=\"https://trashisfortossers.com/why-requesting-no-straw-is-awesome/\">straw in drink</a>, napkin for takeout), pause and ask yourself: will I use this more than 5 times? If no, say 'No thank you. I won't use this.'", "Also consider: do I already own something that can serve the same purpose? If yes, then say 'No thank you, I don't need this.'", "If you do need it, feel free to take it. This challenge is about knowing when to say 'no' and when to say 'yes'."],
            metric_question: "How many times did you refuse something you didn't need?",
            metric_verb: "You refused something you didn't need ",
            metric_unit: ' times!',
            reflection_question: 'How was the experience of refusing things?',
            photo_prompt: 'Share a photo capturing this experience. Tell us what you refused.'
          },
          {
            name: 'Shop with reusables',
            type: 'friends',
            question: "What's the deal with food packaging?",
            description: "Packaging, even if it's <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=urFZ5o0az_4\">recyclable</a> or compostable, still end up in landfills. To best combat this, refuse waste at the root source so you don't have to figure out proper disposal later. For example, food packaging extends shelf life + makes shopping convenient, but ask yourself: Is it necessary? Think about farmers' markets + grocery stores; it's possible to buy loose produce.",
            links: {
              'Shopping with your own bags + jars (guide)' => 'https://www.goingzerowaste.com/blog/2016/3/14/ultimate-guide-to-zero-waste-grocery-shopping',
              "Zero waste shopping at the farmers' market (video)" => 'https://trashisfortossers.com/how-to-shop-at-farmers-market-withou/',
              'Where can I find bulk? (finder)' => 'https://app.zerowastehome.com/',
              'Is bulk not available? (blog)' => 'https://www.goingzerowaste.com/blog/2015/12/31/life-without-bulk',
              'The Indonesian Plastic Bag Diet (video)' => 'https://www.youtube.com/watch?v=PBhakv9DQFQ'
            },
            instructions: ['Bring your own reusable bags and jars', 'Opt for loose goods (e.g. fruits, veggies, meat, cheese, bread) instead of packaged ones. Try to avoid any packaging that will be disposed of.', 'Shop at bulk bins.', 'Get 3 friends and family to join you!'],
            extra: "*If goods are charged by weight (e.g. pounds or kilos), don't forget to tare your reusables before filling them up!",
            metric_question: 'How many times did you use reusable containers (e.g. bags, jars) instead of single-use disposables?',
            metric_verb: 'You used reusable containers instead of single-use disposables ',
            metric_unit: ' times!',
            reflection_question: 'How challenging was it to avoid food packaging waste?',
            photo_prompt: 'Share a photo of your shopping experience. Tell us what you learned from this experience.'
          },
          {
            name: 'Eat without disposables',
            type: 'self',
            question: 'Why is disposable foodware a problem?',
            description: "Paper plates, plastic cutlery, and foam cups are disposable. You use it once and throw it away. The problem is they end up sitting in landfills for a <a target=\"_blank\" href=\"https://greendiningalliance.org/2016/12/the-real-cost-of-styrofoam/\">very long time</a>. Additionally, disposable plastic foodware, particularly those with
            <img src=\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJ%0D%0AQyAiLS8vVzNDLy9EVEQgU1ZHIDIwMDEwOTA0Ly9FTiIKICJodHRwOi8vd3d3LnczLm9yZy9UUi8y%0D%0AMDAxL1JFQy1TVkctMjAwMTA5MDQvRFREL3N2ZzEwLmR0ZCI+CjxzdmcgdmVyc2lvbj0iMS4wIiB4%0D%0AbWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiB3aWR0aD0iODUuMDAwMDAwcHQiIGhl%0D%0AaWdodD0iODMuMDAwMDAwcHQiIHZpZXdCb3g9IjAgMCA4NS4wMDAwMDAgODMuMDAwMDAwIgogcHJl%0D%0Ac2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQgbWVldCI+Cgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0%0D%0AZSgwLjAwMDAwMCw4My4wMDAwMDApIHNjYWxlKDAuMTAwMDAwLC0wLjEwMDAwMCkiCmZpbGw9IiMw%0D%0AMDAwMDAiIHN0cm9rZT0ibm9uZSI+CjxwYXRoIGQ9Ik0zNDEgNzQ0IGMtMTcgLTE0IC01MCAtNTcg%0D%0ALTcyIC05NiAtMjUgLTQzIC00NiAtNjggLTU0IC02NSAtMTMgNgotMjUgLTUyIC0yNSAtMTI1IGww%0D%0AIC0zOSA3MCA0OCBjNjAgNDIgNjggNTAgNTUgNjIgLTEzIDEzIC0xMiAxOSA3IDUwIDg1IDE0NAo5%0D%0ANCAxNDUgMTcyIDEzIGwzOCAtNjMgMzEgMjEgYzE4IDExIDMxIDI0IDMwIDI4IC02IDI3IC04MCAx%0D%0AMzYgLTExMCAxNjIgLTQ1CjQwIC05OCA0MSAtMTQyIDR6Ii8+CjxwYXRoIGQ9Ik01NzQgNDg0IGMz%0D%0AIC0yNiA2IC02NCA2IC04NiAwIC0zNSAyIC0zOCAyMCAtMjggMTkgMTAgMzAgLTUgMTA3Ci0xNDMg%0D%0AMyAtNSAtMyAtMTcgLTEzIC0yOCAtMTQgLTE2IC0zMSAtMTkgLTEwNiAtMTkgbC04OCAwIDAgLTQw%0D%0AIDAgLTQwIDgzIDAKYzEzNiAwIDE5MSAyOCAyMDMgMTAyIDYgMzUgLTE3IDkyIC03MiAxNzkgLTE3%0D%0AIDI3IC0yMCAzOSAtMTEgNDggNiA2IDkgMTIgNgoxNCAtMjkgMjMgLTEyNyA4NyAtMTMzIDg3IC01%0D%0AIDAgLTYgLTIxIC0yIC00NnoiLz4KPHBhdGggZD0iTTM2MiA0NDggYy03IC03IC0xMiAtMTggLTEy%0D%0AIC0yNSAwIC0xNSAyNiAtMTggMzUgLTMgMyA2IDE1IDEwIDI2IDEwCjI1IDAgMjUgLTMwIC0xIC0z%0D%0ANyAtMjcgLTcgLTI1IC0zMSAzIC0zNSAzMiAtNCAzMSAtNTIgLTEgLTU2IC0xMyAtMiAtMjUgMwot%0D%0AMjggMTIgLTMgOSAtMTIgMTYgLTIwIDE2IC0xNyAwIC0xOCAtMzIgLTIgLTQ4IDE2IC0xNiA4MCAt%0D%0AMTYgOTYgMCAxNCAxNCAxNgo3NCAyIDgzIC01IDMgLTcgMTkgLTMgMzUgMyAxOCAwIDM2IC03IDQ1%0D%0AIC0xNSAxOCAtNzEgMjAgLTg4IDN6Ii8+CjxwYXRoIGQ9Ik0xMjcgMzczIGMtNjcgLTEwNSAtODEg%0D%0ALTE2MiAtNTUgLTIxOCAxOSAtNDIgNTYgLTU1IDE1NyAtNTUgNzIgMCA5MgotMyA5OSAtMTYgOCAt%0D%0AMTQgMTggLTExIDgwIDIwIDQwIDIwIDcyIDM5IDcyIDQyIDAgNiAtMTI1IDY0IC0xNDAgNjQgLTUg%0D%0AMCAtMTAKLTkgLTEwIC0yMCAwIC0xOCAtNyAtMjAgLTgzIC0yMCAtMTIyIDAgLTEzMCAxNSAtNjcg%0D%0AMTMwIDIyIDQwIDQwIDc0IDQwIDc2IDAKNCAtNTcgMzQgLTY0IDM0IC0zIDAgLTE2IC0xNyAtMjkg%0D%0ALTM3eiIvPgo8L2c+Cjwvc3ZnPgo=\" width=\"40px\">
             and <img src= \"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJ%0D%0AQyAiLS8vVzNDLy9EVEQgU1ZHIDIwMDEwOTA0Ly9FTiIKICJodHRwOi8vd3d3LnczLm9yZy9UUi8y%0D%0AMDAxL1JFQy1TVkctMjAwMTA5MDQvRFREL3N2ZzEwLmR0ZCI+CjxzdmcgdmVyc2lvbj0iMS4wIiB4%0D%0AbWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiB3aWR0aD0iODYuMDAwMDAwcHQiIGhl%0D%0AaWdodD0iODMuMDAwMDAwcHQiIHZpZXdCb3g9IjAgMCA4Ni4wMDAwMDAgODMuMDAwMDAwIgogcHJl%0D%0Ac2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQgbWVldCI+Cgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0%0D%0AZSgwLjAwMDAwMCw4My4wMDAwMDApIHNjYWxlKDAuMTAwMDAwLC0wLjEwMDAwMCkiCmZpbGw9IiMw%0D%0AMDAwMDAiIHN0cm9rZT0ibm9uZSI+CjxwYXRoIGQ9Ik0zODMgNzQwIGMtMjUgLTEwIC03NSAtNzUg%0D%0ALTEwNiAtMTM4IC0xNSAtMzAgLTI3IC00MiAtMzggLTM5IC0xNCA0Ci0xNyAtOCAtMjIgLTc3IC0z%0D%0AIC00NCAtNCAtODMgLTEgLTg1IDMgLTQgMjYgMTEgMTI4IDgyIDggNSA2IDEyIC02IDIxIC0xNiAx%0D%0AMgotMTQgMTggMjUgODEgNjggMTExIDc5IDExMCAxNDkgLTYgbDQwIC02OCAzMSAxNiBjMTggOCAz%0D%0ANCAxNyAzNiAxOSA0IDQgLTY5CjEyOCAtOTEgMTU0IC0zNyA0NiAtOTMgNjEgLTE0NSA0MHoiLz4K%0D%0APHBhdGggZD0iTTYwMyA0MzAgYzYgLTg3IDEwIC0xMDEgMjkgLTgyIDkgOSAyMiAtNyA1NSAtNjgg%0D%0AMzYgLTY2IDQyIC04MyAzMwotMTAwIC0xMCAtMTggLTIxIC0yMCAtMTA1IC0yMCBsLTk1IDAgMCAt%0D%0ANDAgMCAtNDAgOTQgMCBjMTEyIDAgMTQ5IDExIDE3NiA1NQozMSA1MSAyNiA4OSAtMjYgMTc3IC0z%0D%0ANSA2MCAtNDQgODIgLTM1IDkyIDkgMTAgLTQgMjMgLTYwIDYxIGwtNzIgNDcgNiAtODJ6Ii8+Cjxw%0D%0AYXRoIGQ9Ik0zOTAgNDIwIGMtMjUgLTI1IC0yOSAtMTMwIC01IC0xNTQgNDEgLTQxIDEwNyAtMTgg%0D%0AMTEzIDQwIDQgNDMgLTE5CjY4IC02MiA2OCAtMzcgMCAtNDIgMTIgLTEzIDMwIDEyIDggMjEgNSAz%0D%0ANyAtOSAyNyAtMjUgNDYgLTggMjQgMjMgLTE5IDI4IC02NwoyOSAtOTQgMnogbTgwIC0xMDUgYzAg%0D%0ALTI2IC0yOSAtNDYgLTUxIC0zNSAtMjQgMTMgLTI1IDQ2IC0yIDU5IDIxIDExIDUzIC0zCjUzIC0y%0D%0ANHoiLz4KPHBhdGggZD0iTTEzMyAzMTggYy01MSAtOTAgLTU4IC0xMTcgLTQzIC0xNjIgMTkgLTU4%0D%0AIDUxIC03NiAxMzUgLTc2IDkxIDAgMTM1Ci05IDEzNSAtMjYgMCAtMTAgMjMgLTIgNzUgMjMgNDEg%0D%0AMjEgNzUgNDAgNzUgNDQgMCA3IC0xMzcgNjkgLTE1MiA2OSAtNSAwIC02Ci05IC0zIC0yMCA2IC0x%0D%0AOSAyIC0yMCAtODQgLTIwIC04MSAwIC05MSAyIC0xMDEgMjAgLTkgMTcgLTQgMzUgMzIgMTAxIGw0%0D%0AMyA4MAotMjUgMTkgYy0xNCAxMSAtMzAgMjAgLTM2IDIwIC01IDAgLTI5IC0zMyAtNTEgLTcyeiIv%0D%0APgo8L2c+Cjwvc3ZnPgo=\" width=\"40px\">
             , are made with carcinogens that put wildlife and human health at risk.",
            links: {
              'How to avoid plastic cutlery + containers (guide)' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/takeaway-cutlery-and-containers/',
              'What are toxic chemicals in plastics? (blog)' => 'https://www.madesafe.org/avoid-toxic-chemicals-plastics/',
              'Global fast food plastic survey (list)' => 'https://www.plasticpollutioncoalition.org/global-fast-food-plastic-survey'
            },
            instructions: ['Refuse any single-use disposables (e.g. food containers, utensils, straws, napkins, bags).', 'Bring your own reusable alternatives to events (serving food).', "People will notice. Some will say something, and some won't. Simply explain to them: \"I bring my own reusable ___ to avoid the unnecessary waste.\" Feel free to engage in conversation or elaborate more."],
            metric_question: 'How many times did you opt for a reusable cup, bottle, plate, utensil, bowl, straw, napkin, bag, etc. over single-use outside of your home?',
            metric_verb: 'You opted for reusable items ',
            metric_unit: ' times over single-use!',
            reflection_question: 'How has your perspective about single-use disposables changed?',
            photo_prompt: 'Share a photo of bringing your own reusables. Tell us something you learned from this experience.'
          },
          {
            name: 'Compost & recycle',
            type: 'self',
            question: 'Why prioritize composting over recycling? ',
            description: "When we <a target=\"_blank\" href=\"https://www.goingzerowaste.com/blog/composting-for-apartments\">compost</a>, the remaining nutrients in food scraps + plant-based goods are reused in our environment. Recycling is also good (way better than sending goods to the landfill). However, <a target=\"_blank\" href=\"https://www.goingzerowaste.com/blog/how-to-recycle-paper-the-right-way?rq=RECYCLE\">recyclables</a> like plastic and paper can't be recycled infinitely. Furthermore, recycling goods requires more resources (e.g. fuel costs, labor, energy, water) to process than composting.",
            links: {
              'How to compost at home (video)' => 'https://kisstheground.com/how-to-compost-at-home-simple/',
              'How to compost at home (infographic)' => 'https://kisstheground.com/how-to-compost-at-home/',
              'What do all the plastic numbers mean? (guide)' => 'https://www.babygreenthumb.com/p-122-safe-plastic-numbers-guide.aspx'
            },
            background: 'Composting can take on any form like starting your own compost pile, putting it in your green bin (if you have municipal composting), giving your compost to local farms, or tossing it into a compost bin in your community.',
            instructions: ["Compost any waste that is compostable and biodegradable. If it's not compostable, then <a target=\"_blank\" href=\"http://apps.npr.org/plastics-recycling/?utm_medium=social&utm_source=facebook.com&utm_term=nprnews&utm_campaign=npr\">recycle it</a>.", "As a last resort, send your trash into the landfill if it isn't reusable, compostable, or recyclable."],
            metric_question: 'Estimate how much (in kilos) waste you composted and/or recycled. Note: 1 lb = 0.45 kg',
            metric_verb: 'You composted or recycled ',
            metric_unit: ' about kg! (Note: 1lb = 0.45kg)',
            reflection_question: 'How challenging was it to avoid sending waste to the landfill?',
            photo_prompt: 'Take a photo of your compost. Tell us something you learned from this experience.'
          },
          {
            name: 'Party zero waste style',
            type: 'friends',
            question: 'How does this have an impact?',
            description: "How many people do you know actually think about their trash? Hosting a zero waste party is a fun way to show people what reducing your waste looks like and how simple it is. Your party opens up the conversation for you to share what you've learned about waste with your guests and inspire them to reduce their waste as well!",
            links: {
              'How to throw a zero waste party (guide)' => 'https://www.goingzerowaste.com/blog/five-tips-for-throwing-a-zero-waste-party ',
              'Hosting a zero waste dinner party (blog)' => 'http://trashisfortossers.com/hosting-zero-waste-dinner-party/',
              'How to have a trash-free Halloweekend (blog)' => 'http://trashisfortossers.com/how-to-have-a-trash-free-halloweekend/',
              'Hosting a zero waste bachelorette party (blog)' => 'http://trashisfortossers.com/zero-waste-bachelorette-party/'
            },
            instructions: ['Curate a waste-free menu. That is, purchase ingredients with little to no packaging waste, and serve on reusable dishware.', 'Provide reusable dishware, utensils, and napkins.', 'Decorate as you wish with nature and non-single-use disposable items.', 'Make a compost bin accessible.', "Invite at least 3 people and tell them it's a zero waste party!", "If you'd like, invite your guests to help clean up after the party: put things in the dishwasher or handwash; toss dirtied cloths into the laundry; and empty the compost bin. Don't worry, this is bonding time and not as bad as it sounds.", 'Have fun!'],
            metric_question: 'How many people came to your party?',
            metric_verb: '',
            metric_unit: ' people came to your zero waste party!',
            reflection_question: 'What did you like about this challenge?',
            photo_prompt: 'Take a photo of your party setup. Tell us how you made your party zero waste.'
          },
          {
            name: 'Reduce community waste',
            type: 'community',
            question: 'Why should I even try to be zero waste?',
            description: "Anne-Marie says it well: <a target=\"_blank\" href=\"https://zerowastechef.com/2019/02/14/how-to-cope-with-environmental-guilt-syndrome-egs/\">\"We don’t need a handful of people doing zero waste perfectly. We need millions of people doing it imperfectly.\"</a> The few individuals who commit to zero waste won't reverse the environmental damage already done; we need a whole lot more people involved. So what you do counts(! -- no matter how seemingly insignificant), because your actions show people around you an alternative way to live. This is how we slowly inspire change together. :)",
            links: {
              'Guide to banning polystyrene (guide)' => 'https://www.5gyres.org/polystyrene',
              'Changing purchasing practices (guide)' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/workplace-procurement/',
              'How governments go zero waste (info)' => 'https://www.greenamerica.org/blog/plastic-out-sustainability-in',
              'How Plastic Production Pollutes Small Towns (video)' => 'https://www.youtube.com/watch?v=OFMau-t3QaI'
            },
            instructions: ['Choose your target audience. (e.g. local business, local government)', 'Draft up a proposal of what you want them to change and why it matters to them. Be specific. (e.g. Ask a local restaurant to provide plastic straw only upon request.)', 'Reach out and give them your pitch.', 'Offer to work with them to create this change for the community.'],
            metric_question: 'How many businesses and government officials did you speak to about waste?',
            metric_verb: 'You spoke with ',
            metric_unit: ' businesses and government officials about waste!',
            reflection_question: 'How can you engage more of your community of friends and family to reduce their waste?',
            photo_prompt: 'Take a photo capturing your attempt to speak up. Tell us something how you felt doing this challenge.'
          }
          # ,
          # {
          #   :name => "",
          #   :type => "",
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
        videoCaption: "Here is one farmer's take on sustainable regenerative farming.",
        videoID: 'hWkYtZxpQUo',
        briefDescription: "Before taking a bite of food, do you ever think about how
        it got to you? Food should nourish us, but not all food is created equal. How food
        is grown influences nutritional quality, and you have the power to choose the
        quality of nutrients your body gets.",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=hWkYtZxpQUo\">'The Future of Food' video</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Know your food',
            type: 'pre',
            question: 'What makes food so important?',
            description: 'Food should nourish us. However, the ways food is grown + processed impact the nutritional quality + quantity we get. To make healthy decisions, we need to <a target="_blank" href="https://foodprint.org/shopping-sustainably/">ask</a>: what are we eating? Were <a target="_blank" href="https://rodaleinstitute.org/why-organic/organic-basics/regenerative-organic-agriculture/ ">regenerative practices</a> used to grow the food we eat?',
            links: {
              "Q's to ask food distributors (list)" => 'https://foodprint.org/shopping-sustainably/',
              'Look for these food labels (list)' => 'https://foodprint.org/eating-sustainably/food-label-guide/',
              'What makes up a nutritious diet?' => 'https://www.drfuhrman.com/get-started/eat-to-live-blog/62/the-healthiest-anti-cancer-foods-g-bombs',
              'Does diet influence allergies?' => 'https://www.drfuhrman.com/get-started/eat-to-live-blog/131/does-diet-influence-seasonal-allergies',
              "What's your foodprint?" => 'https://foodprint.org/eating-sustainably/real-food-encyclopedia/'
            },
            instructions: ['For packaged goods: read ingredient lists. Do you know what the ingredients are & how they impact your body?', 'For fruits + veggies: ask the people you get your food from (e.g. farmers, store employees) how the food was grown', 'Search the web to learn about the practices & values of the farms + companies whose products you buy'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'What was challenging? What did you learn from reading ingredients lists and asking people where your food came from?',
            photo_prompt: ''
          },
          {
            name: 'Make your own snacks',
            type: 'self',
            question: 'Why make my own?',
            description: "There are LOTS of unhealthy snacks on the market. Read the ingredients list & you'll find they're loaded with many forms of refined sugar (e.g. cane sugar, high fructose corn syrup) , imitation flavors (e.g. natural and artificial flavors), and other <a target=\"_blank\" href=\"https://www.ewg.org/research/ewg-s-dirty-dozen-guide-food-additives\">unhealthy additives</a> that weaken your body.",
            links: {
              'Seasonal produce to snack on' => 'https://www.seasonalfoodguide.org/california/early-april',
              'Common ingredients in processed food (list)' => 'https://foodbabe.com/ingredients-to-avoid/',
              'Healthy snacks to munch on (recipes)' => 'https://foodrevolution.org/blog/healthy-snacks/'
            },
            instructions: ['Find recipes for your favorite + go-to snacks', "Whole fruits, veggies, nuts, and seeds come in clutch if you don't want to make your own", 'Shop local + seasonal ingredients to make your snacks', 'Whip up your snack, take a pic, and share!'],
            metric_question: 'How many different wholesome snacks did you eat?',
            metric_verb: 'You homemade ',
            metric_unit: ' different snacks!',
            reflection_question: 'How has this challenge influenced your perspective about snacks?',
            photo_prompt: 'Share a photo of your snacks. Tell us what makes it good.'
          },
          {
            name: 'Support the ocean',
            type: 'friends',
            question: 'How does fish consumption relate to the environment?',
            description: 'Industrial-scale fishing has driven fish populations to <a target="_blank" href="https://www.msc.org/what-we-are-doing/oceans-at-risk">all-time lows</a> and some towards extinction. Toxins such as mercury, dioxins, antibiotics, and pesticide residue are increasingly found in the fish we eat.',
            links: {
              'Countries striving for sustainable seafood (list)' => 'https://www.seafoodwatch.org/resources',
              'Buying sustainable seafood (guide)' => 'https://www.nrdc.org/stories/smart-seafood-buying-guide',
              'Find local seafood (finder)' => 'https://localcatch.org/'
            },
            instructions: ['<a target="_blank" href="https://foodprint.org/shopping-sustainably/">Ask fishmongers or store managers</a> whether they sell <a target="_blank" href="https://foodprint.org/issues/sustainable-seafood/">sustainable seafood</a> + find out where their seafood comes from', 'Do your best to find a local + accessible sustainable seafood source to purchase from'],
            metric_question: 'How many times did you ask someone whether they sell sustainable seafood?',
            metric_verb: 'You asked whether someone sells sustainable seafood ',
            metric_unit: ' times!',
            reflection_question: 'How challenging was this for you?',
            photo_prompt: 'Share a photo capturing this experience. Tell us something you learned from this challenge.'
          },
          {
            name: 'Zero your food waste',
            type: 'self',
            question: 'How problematic is food waste?',
            description: '<a target="_blank" href="https://friendsoftheearth.uk/food-waste">1/3 of food produced globally</a>(!) each year is wasted, while there are hungry people + talk about not having enough food to feed the human population. To make things worse, food scraps end up decomposing in landfills, producing methane, worsening climate change.',
            links: {
              'Food Waste 101' => 'https://www.imperfectproduce.com/food-waste-101',
              'How to reduce food waste' => 'https://foodprint.org/blog/15-easy-ways-to-reduce-food-waste/',
              'Culinary tricks to reduce food waste' => 'https://foodprint.org/blog/10-tips-i-learned-in-culinary-school-to-reduce-food-waste/',
              "What's the shelf life of food?" => 'https://www.stilltasty.com/',
              'Compost your food waste (video)' => 'https://www.youtube.com/watch?v=bqDQD8cvO5Y&feature=youtu.be&vq=hd1080&rel=0&autoplay=1'
            },
            instructions: ['Buy and take <a target="_blank" href="https://www.lovefoodhatewaste.com/article/spoiled-rotten">only what you will eat</a>', "Use the <a target=\"_blank\" href=\"https://www.lovefoodhatewaste.com/compleating\">whole ingredient</a>. Don't waste any of the skins, leaves, or seeds", "Eat your leftovers or share them with others, so they don't go to waste"],
            metric_question: 'How many times did you take action to reduce food waste?',
            metric_verb: 'You took action to reduce food waste ',
            metric_unit: ' times!',
            reflection_question: 'What steps did you take to reduce your food waste? Anything surprise you from this challenge?',
            photo_prompt: 'Share a photo that captures this experience. Tell us how you reduced your food waste.'
          },
          {
            name: 'Eat meat responsibly',
            type: 'friends',
            question: 'How does meat impact the environment?',
            description: "The <a target=\"_blank\" href=\"https://foodprint.org/issues/raising-animals-industrial-system/ \">livestock industry</a> has resorted to deforesting land for grazing animals & confining them in enclosed spaces, leading to air + water pollution and land degradation. This environmental stress negatively impact the animals' health, and that's just not right.",
            links: {
              'A climate diet (video)' => 'https://www.youtube.com/watch?v=nUnJQWO4YJY',
              'Buying better meat [pg 21, 27] (guide)' => 'https://kisstheground.com/purchasingguide/',
              'How raising animals can regenerate land [pg 18-28]' => 'https://kisstheground.com/purchasingguide/',
              "Meat's impact on health" => 'https://www.drfuhrman.com/get-started/eat-to-live-blog/163/the-protein-problem-how-the-source-affects-cardiovascular-risk'
            },
            background: "Let's be clear: we aren't telling you, \"Don't eat any meat.\" We simply encourage you to <a target=\"_blank\" href=\"https://foodprint.org/eating-sustainably/eating-meat-sustainably/\">eat less meat and better meat</a>.",
            instructions: ['Eat meatless for some meals', 'Reduce overall meat consumption by making it a side instead of the entree', "For meat-eaters: Ask the rancher, farmer, butcher, or store manager about the animals' grazing plan, the care given to the animals, and their practices to restore soil and grasslands.", 'Purchase grass-fed, pasture-raised, humanely raised meat'],
            metric_question: 'How many times did you go meatless? How many times did you buy responsibly raised meat?',
            metric_verb: 'You ate meatless and/or bought responsibly raised meat ',
            metric_unit: ' times!',
            reflection_question: 'How challenging was this for you?',
            photo_prompt: 'Share a photo of your meal capturing this experience. Tell us how the experience was.'
          },
          {
            name: "Go to farmers' markets",
            type: 'friends',
            question: "Why do farmers' markets matter?",
            description: "Farmers' markets are a galore of freshly harvested fruits, vegetables, nuts, and other goodies at <a target=\"_blank\" href=\"https://foodrevolution.org/blog/why-buy-local-food/\">peak nutrition levels</a>. Shopping there means <a target=\"_blank\" href=\"https://growcleanwater.org/\">uplifting farmers</a> & keeping your hard-earned money in the <a target=\"_blank\" href=\"https://farmersmarketcoalition.org/education/stimulate-local-economies/ \">local economy</a>, which stimulates job creation and local businesses.",
            links: {
              "Find farmers' markets + CSAs near you" => 'https://www.localharvest.org/search.jsp?lat=37.7697&lon=-122.393295&scale=9&ty=1',
              "Q's to ask farmers [pg 9]" => 'https://kisstheground.com/purchasingguide/',
              'What are sustainable farming practices?' => 'https://rodaleinstitute.org/why-organic/organic-farming-practices/'
            },
            instructions: ["Shop at a farmers' market. Buy organic whenever possible", "If this isn't possible, look for a <a target=\"_blank\" href=\"https://www.localharvest.org/csa/\">CSA (community supported agriculture) box</a> to purchase", 'Bring your friends and family along!', 'Start a conversation and get to know the farmers who grew your food', 'Ask them about their soil, pest management, and crop rotation practices'],
            alt_instructions: ['Buy organic of the <a target="_blank" href="https://www.ewg.org/foodnews/dirty-dozen.php">produce most commonly sprayed with pesticides, herbicides, etc.</a>', "It's okay to not buy organic of these <a target=\"_blank\" href=\"https://www.ewg.org/foodnews/clean-fifteen.php\">produce, which are least likely to be sprayed with pesticides, etc.</a>"],
            metric_question: "How many people did you bring with you to the farmers' market?",
            metric_verb: 'You brought ',
            metric_unit: " people to the farmers' market with you!",
            reflection_question: "What did you like about your adventure to the farmers' market?",
            photo_prompt: "Share a photo of your farmers' market trip. Tell us how your experience was."
          },
          {
            name: 'Cook a FLOSN meal',
            type: 'friends',
            question: 'Why FLOSN?',
            description: "Eating healthy shouldn't be a compromise. Nutrient-dense foods should be affordable. Fresh + local produce = more nutrients. Seasonal produce = more available + affordable. Organic foods = little to no toxic chemicals. Non-GMO foods = not genetically modified. Claim space on your plate for REAL food.",
            links: {
              'What should I buy? (guide)' => 'https://kisstheground.com/purchasingguide/',
              "What's in season?" => 'https://www.seasonalfoodguide.org/',
              'Leafy greens are important!' => 'https://www.doctorklaper.com/dark-leafy-greens',
              'Cook like a chef to reduce food waste' => 'https://foodprint.org/blog/cook-like-a-chef-to-reduce-food-waste/'
            },
            instructions: ['Shop 100% fresh, local, organic, seasonal, non-GMO for your meal.', 'Invite at least 2 people to join you in cooking and/or eating!', "Aim to make your meal cost <$9 per person (it's totally possible!)"],
            metric_question: 'How many <$9 meals did you make in this challenge?',
            metric_verb: 'You made ',
            metric_unit: ' meals that cost less than $9!',
            reflection_question: 'How can you incorporate more FLOSN foods in your diet?',
            photo_prompt: 'Share a photo of the meal you prepared. Tell us how much it cost and how your experience was.'
          }
        ]
      },
      Body: {
        videoCaption: "The main takeaway: know what's in your products.",
        videoID: '6wAToqkcAow',
        briefDescription: "Did you know our skin absorbs 60% of everything we put on it?
        When buying products, we look for ones that make us feel our best. But, how often have
        you flipped the package to read the ingredient list? Even then, do you know what the
        ingredients are?",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=6wAToqkcAow\">\"Are the ingredients in fragrance safe?\"</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Know your products',
            type: 'pre',
            question: "What's in your bodycare?",
            description: "~60% of what's put on your skin is absorbed into your bloodstream. There's lots of products on the market with ingredients that inhibit your natural skin health. It sucks, but information is power. Read the ingredient lists & research what those ingredients do to your body.",
            links: {
              'EWG Skin Deep database' => 'https://www.ewg.org/skindeep/',
              "Ingredients' impact on health" => 'https://www.madesafe.org/education/chemical-profiles/',
              'Hazardous chemicals in bodycare' => 'https://www.madesafe.org/science/hazard-list/'
            },
            instructions: ['Take 5 minutes (or more) to educate yourself.', 'Read the ingredient list on your skincare products', "Look them up if you don't know its purpose. Is the ingredient necessary for this product to be effective + do its job?"],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: "What did you learn from reading the ingredients list on your bodycare products? How can you apply what you've learned in your life?",
            photo_prompt: ''
          },
          {
            name: 'DIY bodycare',
            type: 'friends',
            question: 'Why should I make my own?',
            description: "You'll know exactly what's in it. Products with excessively long lists of ingredients on the back often include unnecessary additives that make the product thicker, smell better, or last longer. Many times, these ingredients aren't safe for your health.",
            links: {
              '100 DIY recipes' => 'https://dontmesswithmama.com/100-diy-beauty-recipes/',
              '8 ingredients to avoid' => 'https://goodonyou.eco/8-toxic-ingredients-to-avoid-in-beauty-products/'
            },
            instructions: ['Choose a product you use regularly (e.g. chapstick, lotion)', '<a target="_blank" href="https://dontmesswithmama.com/100-diy-beauty-recipes/">Find a recipe</a> to make your own!', 'Share the fun! Invite at least 3 people to join'],
            metric_question: 'How many bodycare products did you make?',
            metric_verb: 'You made ',
            metric_unit: ' bodycare products!',
            reflection_question: 'What do you think about making our own bodycare products now?',
            photo_prompt: 'Share a photo of your homemade product. Tell us what you learned.'
          },
          {
            name: 'Choose safer bodycare',
            type: 'friends',
            question: "What's considered safer?",
            description: "Avoiding <a target=\"_blank\" href=\"https://www.ewg.org/skindeep/contents/top-tips\">known harmful ingredients</a> in products is a good start. Ultimately, reading ingredient labels is key, because companies aren't required to disclose all ingredients in their formulations. Know what you're putting on your body. If in doubt, <a target=\"_blank\" href=\"https://www.ewg.org/skindeep/\">research</a> or <a target=\"_blank\" href=\"https://www.madesafe.org/find-products/personal-care/\">find better alternatives</a>.",
            links: {
              'What to look for in bodycare' => 'https://www.greenamerica.org/green-living/choose-green-not-body-care',
              '10 labelling traps' => 'http://www.lisabronner.com/10-labeling-traps-to-recognize-in-body-care-products/',
              'List of good alternatives' => 'https://www.madesafe.org/find-products/personal-care/'
            },
            instructions: ['Find affordable, safe, and sustainably sourced bodycare alternatives to products you use regularly (e.g. <a target="_blank" href="https://www.madesafe.org/education/whats-in-that/shampoo-conditioner/">shampoo, conditioner</a>, <a target="_blank" href="https://www.madesafe.org/education/whats-in-that/deodorant/">deodorant</a>, <a target="_blank" href="https://www.madesafe.org/education/bug-repellent-alternatives-tips/">bug repellent<a/>, <a target="_blank" href="https://www.ewg.org/sunscreen/">sunscreen</a>)', 'Share your knowledge with (at least) 3 different people'],
            extra: 'To avoid greenwashing: ',
            second_list: ["Find the company's website +
       understand their mission and values.", 'Read through those ingredient lists.', "Do a little research and know the ingredients' funciton or check the <a target=\"_blank\" href=\"https://www.ewg.org/skindeep/\">EWG database</a> (aim to use products with 1-2 ratings)"],
            metric_question: 'How many people did you share what you learned with?',
            metric_verb: 'You shared what you learned about safe bodycare products with ',
            metric_unit: ' people!',
            reflection_question: 'What was the response when you shared what you learned?',
            photo_prompt: 'Share a photo capturing this experience. Tell us something you learned.'
          },
          {
            name: 'Safe periods',
            type: 'friends',
            question: "What's up with menstruation products?",
            description: "Conventional menstrual products contain up to 90% petroleum-based plastics, are made of pesticide-laden cotton + <a target=\"_blank\" href=\"https://www.natracare.com/why-natracare/chlorine-free/\">bleached with chlorine</a>. Women use more than <a target=\"_blank\" href=\"https://www.wen.org.uk/environmenstrual-in-numbers\">11,000</a>(!) disposable menstrual products in their lifetime. That's A LOT of exposure to harmful chemicals & <a target=\"_blank\" href=\"https://divacup.com/eco-divas/\">waste</a> in landfills + oceans.",
            links: {
              'Menstrual pads 101' => 'https://www.natracare.com/why-natracare/natural-materials/',
              'Talking about menstruation (guide)' => 'https://helloclue.com/articles/culture/how-to-talk-about-menstruation',
              'Menstrual cup 101' => 'https://helloclue.com/articles/culture/menstrual-cups-questions-myths-and-misconceptions'
            },
            background: "This challenge isn't just for females. <br> For females: ",
            instructions: ['<a target="_blank" href="https://www.madesafe.org/find-products/feminine-care/">Use a menstrual cup or organic cotton pads, tampons, or pantyliners during your period</a>', 'Share your knowledge with (at least) 3 people!'],
            extra: 'For the males: ',
            second_list: ['Share this information with your close female friends + family', "Be careful how you word your message when sharing. Don't tell them what to do. Simply say something like, \"Saw this and feel like it's important for more females to know. What do you think about it?"],
            metric_question: 'How many people did you share what you learned with?',
            metric_verb: 'You shared what you learned about menstrual products with ',
            metric_unit: ' people!',
            reflection_question: 'How has this challenge changed your perception of menstrual products?',
            photo_prompt: 'Share a photo capturing what you learned from this challenge. Tell us what you learned.'
          },
          {
            name: 'Replenish zero waste',
            type: 'self',
            question: 'How does waste relate to bodycare products?',
            description: "Paper + plastic cannot be recycled indefinitely, but glass + aluminum can, due to how the material degrades each time it's sent through recycling. Glass + aluminum are also <a target=\"_blank\" href=\"https://livegreen.recyclebank.com/column/because-you-asked/should-i-choose-plastic-aluminum-or-glass-bottles\">more widely recycled</a> around the world than plastic.",
            links: {
              'Brands with sustainable/no packaging' => 'https://organicallybecca.com/zero-waste-sustainable-packaging/',
              'Plastic vs. Glass vs. Aluminum ' => 'https://earth911.com/living-well-being/recycled-beverage-containers/',
              'How many times can this be recycled?' => 'https://earth911.com/business-policy/how-many-times-recycled/'
            },
            instructions: ['Minimize your bodycare product waste by making your own products in a reusable container.', 'Alternatively, purchase goods with no plastic. Glass or aluminum packaging is okay, although no packaging is ideal'],
            extra: 'The goal is to aim for #plasticfree (1st priority) & #paperfree (2nd priority)',
            metric_question: 'How many products did you make or buy that have zero waste or more sustainable packaging?',
            metric_verb: 'You made/bought ',
            metric_unit: ' products that have zero waste or sustainable packaging!',
            reflection_question: 'What did you learn from this challenge?',
            photo_prompt: 'Share a photo of your bodycare product. Tell us how it has a more positive environmental impact than the product you previously used.'
          },
          {
            name: 'Contact bodycare companies',
            type: 'community',
            question: "What's the point? Do they even listen?",
            description: "Remember: people drive profits, something companies need. Tell companies what they’re doing well + not. They don't know without your feedback. They don't listen? Say 'bye!', let others know, + move on to another product. We're all better off supporting more caring companies.",
            links: {
              'Ask businesses to commit to safety' => 'http://www.safecosmetics.org/take-action/businesses-and-retailers/'
            },
            instructions: ["Reach out to conventional brands that you\xE2\x80\x99ve purchased from or know others who purchase from. (e.g. email, call)", "Tell them <strong>a)</strong> why you don\xE2\x80\x99t support their products anymore, <strong>b)</strong> what you would like them to change, and <strong>c) </strong> anything else you\xE2\x80\x99d like them to know. Be polite but firm."],
            metric_question: 'How many companies did you reach out to?',
            metric_verb: 'You gave feedback to ',
            metric_unit: ' companies about their products!',
            reflection_question: 'How challenging was reaching out to brand reps for you?',
            photo_prompt: 'Share a photo of the message you sent to brands. Please remove any personal information from the photo. Tell us how you felt as you sent off your message.'
          },
          {
            name: 'Be the influencer',
            type: 'friends',
            question: 'Why me?',
            description: "You're the real MVP. Think about how much you know now: enough to be dangerous. There's a lotta nasty stuff ruining the safety + quality in bodycare products. We can't let it slide. Many people don't know what you know, so we're calling you to spread the word. Be the champion in your community.",
            links: {
              'Products w/ sustainable packaging' => 'https://organicallybecca.com/zero-waste-sustainable-packaging/',
              'MadeSafe certified products' => 'https://www.madesafe.org/find-products/personal-care/'
            },
            instructions: ["Teach (at least) 3 people what you've learned about bodycare", 'Help them make (at least) 1 switch to a better alternative bodycare product'],
            metric_question: 'How many people did you help make a switch to a safer bodycare product?',
            metric_verb: 'You helped ',
            metric_unit: ' people switch to safer bodycare products!',
            reflection_question: 'How challenging was teaching others and helping them make a swap?',
            photo_prompt: "Share a photo of your buddy's swap to a better bodycare product. Tell us how this experience was for you."
          }
        ]
      },
      Water: {
        videoCaption: 'Think about water in the big picture.',
        videoID: 'b1f-G6v3voA',
        briefDescription: "An incredibly small amount (0.35%) of the water in
        our planet is available to us. To ensure equitable access, we need to change
        our lifestyle habits, like the food we eat and how we commute. Do you know how
        much water it takes to fuel your lifestyle?",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=b1f-G6v3voA\">\"Where is water?\"</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Track your usage',
            type: 'pre',
            question: "What's your water footprint?",
            description: "It's not just about how long we shower -- our direct <a target=\"_blank\" href=\"https://waterfootprint.org/en/water-footprint/what-is-water-footprint/\">water footprint</a>. No, our largest footprint is indirect, coming from our <a target=\"_blank\" href=\"https://foodprint.org/issues/the-water-footprint-of-food/\">diet</a>, purchases, and <a target=\"_blank\" href=\"https://www.watercalculator.org/water-use/the-water-footprint-of-energy/\">transportation</a>. <a target=\"_blank\" href=\"https://www.ewg.org/tapwater/sourcesofwaterpollution.php\">LARGE amounts of water</a> is needed to grow the food we + animals eat, power manufacturing processes, and obtain fuel.",
            links: {
              'Calculate your water footprint (quiz)' => 'https://www.watercalculator.org',
              'What is the water footprint of __?' => 'https://cdn.shopify.com/s/files/1/0764/0435/files/savewater.jpg?v=1493114807',
              'FAQs about water footprints' => 'https://waterfootprint.org/en/water-footprint/frequently-asked-questions/',
              'Reducing your water footprint (guide)' => 'https://www.watercalculator.org/save-water/'
            },
            instructions: ['<a target="_blank" href="https://www.watercalculator.org/wfc2">Calculate</a> your water footprint.'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: "What's your water footprint? How can you reduce your water footprint?",
            photo_prompt: ''
          },
          {
            name: 'Eat plant-based',
            type: 'self',
            question: 'Why plant-based?',
            description: "A <a target=\"_blank\" href=\"https://www.drawdown.org/solutions/food/plant-rich-diet\">plant-based diet's</a> water footprint is ~1/2 that of a meat-based diet because <a target=\"_blank\" href=\"https://foodtank.com/news/2013/12/why-meat-eats-resources/ \">meat has HUGE water footprints</a>. The process of raising livestock, particularly cattle, requires THOUSANDS of pounds/kilos of crops, which takes an immense amount of water to grow.",
            links: {
              "If I don't eat meat, how do I get protein?" => 'https://foodrevolution.org/blog/plant-based-protein/',
              'Simple steps to eat plant-based (guide)' => 'https://www.drfuhrman.com/get-started/quick-start',
              'Eating to feel good' => 'https://drhyman.com/blog/2014/11/07/pegan-paleo-vegan/',
              'Water-friendly diet' => 'https://www.watercalculator.org/water-use/water-friendly-food-choices/ '
            },
            instructions: ['Eat more plant-based meals & snacks (local + organic when possible) (i.e. whole vegetables, nuts, seeds, fruits)', 'Reduce your meat (e.g. beef, pork, chicken) consumption', 'Reduce your dairy consumption (e.g. cheese, milk, yogurt)', 'Reduce your packaged + processed food consumption'],
            metric_question: 'How many meals did you eat more plant-based?',
            metric_verb: 'You ate ',
            metric_unit: ' plant-based meals!',
            reflection_question: 'How has this challenge influenced your perspective about food?',
            photo_prompt: 'Share a photo of your more plant-based meal. Tell us how it is more plant-based.'
          },
          {
            name: 'Cruise lightly',
            type: 'self',
            question: "What is transportation's impact?",
            description: 'It takes ~3/4 gallon of water to extract, refine, and transport the gas used to drive 1 mile. The water footprint of fuel adds up as you travel farther + take more trips.',
            links: {
              'Water footprint of gas' => 'https://www.watercalculator.org/save-water/gasoline/',
              'How to change transportation' => 'https://drawdown.ecochallenge.org/challenges/transport'
            },
            instructions: ['<a target="_blank" href="https://www.drawdown.org/solutions/transport/ridesharing">Carpool</a>; take <a target="_blank" href="https://www.drawdown.org/solutions/transport/mass-transit">mass transit</a>; bike/skateboard/scooter; or walk to your destination', "Just don't ride in a car alone."],
            metric_question: 'How many times did you choose alternative transportation over riding alone in a car?',
            metric_verb: 'You reduced your water footprint by choosing not to ride alone in a car ',
            metric_unit: ' times!',
            reflection_question: 'How challenging was it for you to not ride alone to get somewhere?',
            photo_prompt: "Share a photo of your journey. Tell us how you're reducing your transportation water footprint."
          },
          {
            name: 'Get a bucket buddy',
            type: 'self',
            question: 'Why should I collect my shower water?',
            description: "We don't have an infinite supply of clean water. <a target=\"_blank\" href=\"https://charitywater.org/global-water-crisis\">663 MILLION people</a> in the world don't have clean water readily accessible, while you fortunately do. Oftentimes, the water that come out of faucets and showerheads <a target=\"_blank\" href=\"https://www.drawdown.org/solutions/materials/water-saving-home\">is more than what we actually need</a> though.",
            links: {
              'One creative way to shower (video)' => 'https://www.youtube.com/watch?v=ttCx_MjWcls',
              'How to be water efficient (guide)' => 'https://www.ewg.org/healthyhomeguide/water-efficiency/'
            },
            background: "We're not trying to get you to shower with a bucket everyday of your life; that's unreasonable + inconvenient. We simply want you to be more mindful about your water usage.",
            instructions: ['Place a bucket/large cup/bowl next to you when you shower to collect excess water', 'Take your shower normally', 'Water any plants around the home with the water you collect'],
            extra: "Avoid getting any non-biodegradable products (e.g. soap, shampoo, conditioner) into your bucket, especially if you're reusing the water for edible plants.",
            metric_question: 'Estimate how much (in kilos) of water you collected. Note: 1 gal = appx 4 kg',
            metric_verb: 'You collected ',
            metric_unit: ' kg of water while showering! (Note: 1 gal = appx 4 kg)',
            reflection_question: 'How has this challenge influenced your perspective on water usage?',
            photo_prompt: 'Share a photo of your bucket in your shower. Tell us how the experience was.'
          },
          {
            name: 'No more single-use bottles',
            type: 'friends',
            question: "What's the problem with single-use water bottles?",
            description: "It takes 2x more water to make the plastic bottle than to fill it & costs <a target=\"_blank\" href=\"https://www.foodandwaterwatch.org/about/live-healthy/tap-water-vs-bottled-water\">2000x more</a> than tap water! That's not cool. <a target=\"_blank\" href=\"https://www.foodandwaterwatch.org/problems/corporate-control-water\">Bottled water companies</a> make BILLIONS of $ by marketing their water to be 'safer' than tap water (not always true) while contributing to <a target=\"_blank\" href=\"https://www.5gyres.org/plastic-bottles\">plastic pollution</a>.",
            links: {
              'The bottled water hustle' => 'https://www.foodandwaterwatch.org/insight/take-back-tap-big-business-hustle-bottled-water',
              "What's a good water filter? (guide)" => 'https://www.ewg.org/tapwater/water-filter-guide.php'
            },
            instructions: ['Bring your own reusable water bottle everywhere you go', 'Use it instead of plastic cups or buying bottled water', 'Bust the bottled water company hustle: tell at least 3 people what you learned!'],
            metric_question: 'How many single-use water bottles did you refuse?',
            metric_verb: 'You refused ',
            metric_unit: ' single-use water bottles!',
            reflection_question: 'How challenging was bringing your own reusable water bottle for you?',
            photo_prompt: 'Share a photo of your reusable water bottle. Tell us what you learned from this challenge.'
          },
          {
            name: 'Skip the slip',
            type: 'friends',
            question: "What's the problem with paper receipts?",
            description: "What's the point of printing them if you're going to trash it? <a target=\"_blank\" href=\"https://www.greenamerica.org/report-STS\">9 BILLION gallons (34 billion liters) of water</a> is used to produce receipts, in the US alone. And, 93% of receipts are coated with BPA and BPS, nasty stuff that cause developmental health problems.",
            links: {
              'Impact of paper receipts' => 'https://www.greenamerica.org/report-STS',
              "What's the government doing?" => 'https://www.greenamerica.org/blog/green-america-supports-ca-skip-slip-bill'
            },
            instructions: ["Refuse taking any receipts. Tell the cashier you don't need it.", 'If you need the receipt, opt to take a photo of the computer screen or have it emailed instead (when possible)', 'Share your knowledge about paper receipts with at least 3 people!'],
            metric_question: 'How many paper receipts did you refuse to print and take?',
            metric_verb: 'You refused to take ',
            metric_unit: ' receipts!',
            reflection_question: 'How many people did you share this information with and what were their reactions?',
            photo_prompt: 'Share a photo capturing this expereince. Tell us what you learned.'
          },
          {
            name: 'Raise awareness',
            type: 'community',
            question: "What's the impact clothing?",
            description: '~8,000 synthetic chemicals are used to transform materials into textiles, contributing to 20%(!!) of industrial water pollution. <a target="_blank" href="https://www.soilassociation.org/thirsty-for-fashion/">Growing cotton accounts for 16% of global insecticide usage, which gets washed into water supplies + soil.</a> Blech! Basically, making new clothes is resource intensive + polluting.',
            links: {
              'How to make clothes last' => 'https://goodonyou.eco/fashion-and-water-the-thirsty-industry/',
              'How do I support sustainable fashion?' => 'https://articles.mercola.com/sites/articles/archive/2019/01/12/fashion-industry-pollution.aspx '
            },
            background: "Many people don't associate fashion with water consumption, but simply wearing a piece of clothing 9 months longer reduces its water footprint by 5-10%.",
            instructions: ["Share share share! Inform at least 3 people about what's up with the fashion industry", 'Make posters + send emails informing the community about the relationship of water & fashion, why it matters, and how it affects people + environment', 'Bring your friends on board! Get them to commit to buying less + buying better, more sustainable fashion with you.'],
            metric_question: 'How many people did you teach about the impact of the textile industry?',
            metric_verb: 'You taught ',
            metric_unit: ' people about the impact of the textile industry!',
            reflection_question: 'What were the reactions of people you shared what you learned with?',
            photo_prompt: 'Share a photo capturing this experience. Tell us what you learned from this challenge.'
          }
        ]
      },
      Biodiversity: {
        videoCaption: 'Biodiversity is like insurance to our survival.',
        videoID: 'GK_vRtHJZu4',
        briefDescription: "Did you know there are more organisms in a tablespoon
        of healthy soil than there are people on Ear	th? This diversity in our soil is
        responsible for 95%(!) of our food. We don't think much about these little
        fellas much, but they're critical to our food security.",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=GK_vRtHJZu4\">\"Why is biodiversity so important?\"</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Biodiversity 101',
            type: 'pre',
            question: 'What is biodiversity?',
            description: "Nature is a complex system, and <a target=\"_blank\" href=\"https://rodaleinstitute.org/why-organic/issues-and-priorities/biodiversity/\">biodiversity<a> is the checks and balances in nature. A big loss in biodiversity (in water, soil, and land) imbalances our world, putting food security + human health at risk. This is <a target=\"_blank\" href=\"https://www.mnn.com/earth-matters/wilderness-resources/blogs/why-biodiversity-big-deal\">why it's so important</a> to care for soil health + promote biodiversity.",
            links: {
              'What is healthy soil?' => 'https://rodaleinstitute.org/why-organic/organic-farming-practices/soil-health/',
              'The difference between organic + conventional' => 'https://rodaleinstitute.org/why-organic/organic-basics/organic-vs-conventional/',
              'Why biodiversity loss hurts' => 'https://www.ecowatch.com/biodiversity-loss-human-health-2636410357.html?rebelltitem=1#rebelltitem1'
            },
            instructions: ["<a target=\"_blank\" href=\"https://www.youtube.com/watch?v=iR2AyybowPc\">Watch this</a> to learn what biodiversity is & why it's important.", 'Share what you learned with at least 3 people!'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: "Where in your community has biodiversity? If you can't think of a place, where in your community could there be more biodiversity?",
            photo_prompt: ''
          },
          {
            name: 'Shop local & organic',
            type: 'self',
            question: 'How does shopping relate to biodiversity?',
            description: "Biodiversity isn't just about growing plants. It's also about supporting gardeners + farmers who practice <a target=\"_blank\" href=\"https://rodaleinstitute.org/why-organic/organic-basics/regenerative-organic-agriculture/\">regenerative agriculture</a>. Vote with your hard-earned dollar. Support these people because you're enabling them to <a target=\"_blank\" href=\"https://www.drawdown.org/solutions/food/regenerative-agriculture\">continue their work & foster biodiversity</a>.",
            links: {
              "Industrial meat's impact on pollinators" => 'https://endindustrialmeat.org/ten-reasons-to-opt-out/for-pollinators/'
            },
            instructions: ['Buy 100% local + organic foods at your preferred location. Do your best, trying is what matters!', "If there's a very limited selection of local + organic, <a target=\"_blank\" href=\"https://www.thekitchn.com/7-tips-for-influencing-what-goes-on-grocery-store-shelves-224619\">talk to, call, or email</a> the manager requesting organic <insert what you want>.", 'Thank the farmers + store managers to recognize them for the important work they do in the community!'],
            alt_instructions: ["Alternative: If you're not in charge of grocery shopping, join the person who is on their next grocery trip. Share what you learned & help them find local + organic options."],
            extra: 'You have the power to tell vendors what you want. The real MVP vendors will listen. Support them.',
            metric_question: 'How many local and organic items did you purchase?',
            metric_verb: 'You purchased ',
            metric_unit: ' local and organic items when grocery shopping!',
            reflection_question: 'How can you engage your friends and family to buy more local and organic?',
            photo_prompt: 'Share a photo of your purchase(s). Tell us where you purchased them.'
          },
          {
            name: 'Volunteer in garden',
            type: 'friends',
            question: 'Why are gardens important?',
            description: 'Gardening (with <a target="_blank" href="https://rodaleinstitute.org/why-organic/organic-basics/regenerative-organic-agriculture/">regenerative practices</a>) boosts biodiversity! Growing a variety of plants cultivates <a target="_blank" href="https://drive.google.com/file/d/0B0ezvt7UmjxZVTYzTkRfNjdPNFU/view">healthy soil</a> that protects + strengthens ecosystems. If disease or pests take out a population of organisms, biodiversity keeps the ecosystem thriving.',
            links: {
              'Find a climate victory garden' => 'https://www.greenamerica.org/climate-victory-gardens-map',
              'Getting to know a garden (guide)' => 'https://greenamerica.org/blog/climate-victory-gardens-get-know-your-garden',
              'Relationship between regenerative organic farming + biodiversity' => ' https://rodaleinstitute.org/why-organic/issues-and-priorities/biodiversity/'
            },
            instructions: ["Volunteer at a local garden (e.g. farm's, community's, neighbor's, friend's) to help out with.", 'Bring a friend along with you!', "Refer to the 'Wanna learn more?' section for tips on getting started"],
            metric_question: 'How many hours did you volunteer at a local garden?',
            metric_verb: 'You volunteered at a local garden for ',
            metric_unit: ' hours!',
            reflection_question: 'What did you learn from your gardening experience?',
            photo_prompt: 'Share a photo of you + friend gardening. Tell us how you helped.'
          },
          {
            name: 'Plant perennials',
            type: 'friends',
            question: 'Why should I plant perennials?',
            description: '<a target="_blank" href="https://www.thespruce.com/what-is-a-perennial-flower-or-plant-1402789">Perennials</a> grow a deeper root system that improves soil structure. This <a target="_blank" href="https://www.drawdown.org/solutions/food/tropical-staple-trees">creates a stronger ecosystem</a> that spreads nutrients + moisture throughout the soil to other plants, so they can all thrive together.',
            links: {
              'Know your annuals + perennials [pg 33-34] (guide)' => 'https://kisstheground.com/purchasingguide/',
              'Should you only grow perennials?' => 'https://kisstheground.com/perennials/',
              '10 carbon-capturing practices (guide)' => 'https://www.greenamerica.org/sites/default/files/2019-03/10%20Carbon-Capturing%20Practices.pdf',
              '7 perennial herbs to plant' => 'https://www.ecowatch.com/perennial-herbs-2539981937.html'
            },
            background: "Perennials require less maintenance than annuals and have greater impact, so we're focusing on perennials (<a target=\"_blank\" href=\"https://www.thespruce.com/what-is-an-annual-plant-1401924\">Annuals</a> are important too though!)",
            instructions: ["Choose a perennial you'd like to plant", 'Invite others (at least 1) to join you!', 'Get the necessary materials & plant your perennial together!'],
            metric_question: 'How many perennials (+ annuals) did you plant?',
            metric_verb: 'You planted ',
            metric_unit: ' perennials/annuals!',
            reflection_question: 'What did you learn from planting perennials?',
            photo_prompt: "Share a photo of your plants (+ friend if that's okay with friend). Tell us what you planted."
          },
          {
            name: 'Attract pollinators',
            type: 'self',
            question: 'Have you ever seen pollination in action? ',
            description: "<a target=\"_blank\" href=\"https://www.youtube.com/watch?v=MQiszdkOwuU\">Watch this.</a> Pollinators, particularly bees, are responsible for 1/3 of the world's food supply. The problem? <a target=\"_blank\" href=\"https://friendsoftheearth.uk/bees/what-are-causes-bee-decline\">Lots of bees are dying</a> due to global warming, pesticide use, and habitat loss. Growing pollinator-friendly plants provides more natural habitats for pollinators to thrive.",
            links: {
              'Bee-friendly plants for each season (list)' => 'https://friendsoftheearth.uk/bees/beefriendly-plants-every-season',
              '20 facts you should know about bees' => 'https://friendsoftheearth.uk/bees/20-facts-you-need-know-about-bees',
              'Native plants that butterflies + moths love (finder)' => 'https://nwf.org/NativePlantFinder/'
            },
            background: 'Advocate for the pollinators!',
            instructions: ['Assess the space you have in + around your home for planting', 'Select a pollinator friendly plant that thrives in your home climate at this time of year', 'Get the necessary materials & grow your pollinator-friendly plant!'],
            metric_question: 'How many pollinator-friendly plants did you plant?',
            metric_verb: 'You planted ',
            metric_unit: ' pollinator-friendly plants!',
            reflection_question: 'How has your perspective about pollinators changed?',
            photo_prompt: "Share a photo of your plants. Tell us what you're growing."
          },
          {
            name: 'Start a compost pile',
            type: 'self',
            question: "What's the big deal about composting?",
            description: "Did you know <a target=\"_blank\" href=\"http://www.fao.org/resources/infographics/infographics-details/en/c/285727/\">soil houses 1/4 of the world's biodiversity</a>? Soil isn't just dirt. It's made of minerals, water, air, organic matter, and organisms. A loss in any of these can be a threat to our ecosystems, food security, and weather pattern stability.",
            links: {
              'Our food comes from soil (infographic)' => 'http://www.fao.org/resources/infographics/infographics-details/en/c/285853/',
              'Composting 101' => 'https://rodaleinstitute.org/why-organic/organic-farming-practices/composting/',
              'How to compost (video)' => 'https://kisstheground.com/how-to-compost-at-home-simple/'
            },
            background: 'Be the standout soil advocate our environment needs!',
            instructions: ['Start your own compost pile in your home or in your patio/backyard/frontyard!', "Refer to the 'Wanna learn more?' section for tips on how to get started"],
            metric_question: 'Estimate how much your compost weighs (in kilos). Note: 1 lb = 0.45 kg',
            metric_verb: 'You composted about',
            metric_unit: ' kg of waste! (1 lb = 0.45 kg)',
            reflection_question: 'What do you think about composting now?',
            photo_prompt: 'Share a photo of your compost pile. Tell us what you put in it.'
          },
          {
            name: 'Ensure public space safety',
            type: 'community',
            question: 'Do you spend time outdoors?',
            description: "If your community regularly sprays toxic chemicals to manage pests <a target=\"_blank\" href=\"https://rodaleinstitute.org/blog/toxic-playground-are-your-kids-safe/\">in the area, this is a problem</a>. They (e.g. pesticides) <a target=\"_blank\" href=\"https://www.slu.se/en/Collaborative-Centres-and-Projects/centre-for-chemical-pesticides-ckb1/information-about-pesticides-in-the-environment-/pesticide-spread-in-the-environment/\">spread through air + touch</a>, making their way into our bodies, marine ecosystems, and wildlife. This puts people, animal, and the environment's health at risk.",
            links: {
              "A farmer's principles for healthy soil (blog)" => 'https://www.nrdc.org/experts/arohi-sharma/gabe-browns-book-dirt-soil-speaks-power',
              'Pesticides 101' => 'https://foodprint.org/issues/pesticides/',
              'Debunking pesticide myths' => 'http://www.panna.org/pesticides-big-picture/myths-facts',
              "Youth's power to change communities (story)" => 'https://www.herbicidefreecampus.org/about'
            },
            instructions: ["Speak up: ask your workplace, campus, or wherever you spend time in your
       day about what they use to manage their land. Specifically, how do they manage pests? What products do they use to maintain the land?", "If they use potentially unsafe methods for your community, voice your
       disapproval; explain to them why; and propose alternatives."],
            metric_question: 'How many people did you reach out to ask about their land management practices?',
            metric_verb: 'You asked ',
            metric_unit: ' people about their land management practices!',
            reflection_question: 'How has this challenge impacted your perspective about land management practices?',
            photo_prompt: 'Share a photo capturing the moment. Tell us how you felt in that moment.'
          }
        ]
      },
      Fashion: {
        videoCaption: 'What is fast fashion (in under 5 minutes)?',
        videoID: 'fR7bXsoNwwE',
        briefDescription: "We live in a world of fast fashion where low prices often mean worker exploitation and cheap quality. Have you ever thought about how the price of your clothes translate to how your
        clothes were made?",
        instruction: "Okay, here's the plan. You've watched <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=fR7bXsoNwwE\">\"What is fast fashion?\"</a>. Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Know your clothes',
            type: 'pre',
            question: 'What does it take to make new clothes?',
            description: "<a target=\"_blank\" href=\"https://www.thereformation.com/pages/impact-of-fashion\">LOTS of resources</a> (water, dyes, materials, fuel + more). Particularly for <a target=\"_blank\" href=\"https://goodonyou.eco/what-is-fast-fashion/ \">fast fashion</a>, low cost labor is <a target=\"_blank\" href=\"https://truecostmovie.com/learn-more/human-rights/\">exploited</a> abroad to drive profits. The typical <a target=\"_blank\" href=\"http://mistrafuturefashion.com/sustainable-fashion/\">non-circular lifespan</a> of clothes worsens <a target=\"_blank\" href=\"https://www.youtube.com/watch?v=3iKHr-JnWYA\">fashion's impact</a>; most clothes aren't reused and properly <a target=\"_blank\" href=\"https://borgenproject.org/the-international-impact-of-donated-clothing/ \">donated</a>, ending up in landfills + oceans.",
            links: {
              'Fashion Revolution Manifesto' => 'https://www.fashionrevolution.org/manifesto/',
              '6 fake facts about the clothing industry' => 'https://goodonyou.eco/6-fake-facts-about-the-fashion-industry/',
              'What you can do right now (list)' => 'https://www.greenamerica.org/what-can-i-do-make-my-clothes-more-sustainable'
            },
            background: "There's more to the clothing industry than you may see and think.",
            instructions: ['Take this <a target="_blank" href="https://www.thredup.com/fashionfootprint">fashion footprint quiz</a>', 'Read about <a target="_blank" href="https://www.thredup.com/bg/p/fashion-footprint-sources">the sources for the quiz</a> you just took', "See what's up with the clothing industry in the 'Wanna learn more?' section", 'Share what you learned with (at least) 3 people'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'What is something new you learned about the clothing industry?',
            photo_prompt: ''
          },
          {
            name: 'Take a shopping break',
            type: 'friends',
            question: 'What can you do instead of shopping?',
            description: "The time + money spent keeping up with the latest trends and deals adds up. (Is that t-shirt on sale necessary?) If you have clothes to wear for a week, you probably don\xE2\x80\x99t need any more clothes. Unless, your clothes are falling apart, or you need to freshen up your style.",
            links: {
              "What's the value in not shopping?" => 'https://www.bustle.com/articles/47208-9-truly-valuable-things-you-learn-when-you-stop-buying-clothes-after-the-shaking-sweating-and',
              'Building a minimalist wardrobe' => 'https://www.thegoodtrade.com/features/how-to-build-a-minimalist-wardrobe'
            },
            instructions: ['Seriously, chill out on the clothes + window shopping, online scrolling, and subscriptions to clothing brands', 'Spend that shopping time focusing on your top priorities in life instead', 'Hold yourself accountable. Get (at least) 2 people to do this challenge with you!'],
            metric_question: 'How many people (including yourself) took a break from shopping?',
            metric_verb: 'You got ',
            metric_unit: ' people to take a break from shopping for 1+ weeks!',
            reflection_question: 'How challenging was it to take a break from shopping?',
            photo_prompt: "Share a photo of something you've been up to (instead of shopping). Tell us what you're doing."
          },
          {
            name: 'Keep clothes useful',
            type: 'self',
            question: 'Why is donating not necessarily "good"?',
            description: "In the US, less than 10% of donations is resold or reused. The rest is often shipped to another country, which <a target=\"_blank\" href=\"https://borgenproject.org/the-international-impact-of-donated-clothing/\">undercuts the country's local textile industry</a>. People think they're doing good because they're "'donating'', but they may actually be contributing to putting people in other countries out of work.',
            links: {
              'How to recycle old clothing' => 'https://trashisfortossers.com/how-to-recycle-old-clothing/',
              'Shoe donation drop-off locations' => 'https://soles4souls.org/get-involved/give-shoes/dropoff-locator/',
              'The impact of making new clothes' => 'https://www.greenamerica.org/program/toxic-textiles'
            },
            instructions: ["Clean out your closet of clothes you won't wear anymore", 'Repurpose them (e.g. bag, cleaning rag)', 'Swap with friends', 'Pass them onto someone who will wear them (Maybe a sibling or cousin?)', 'Do the research to find a charity that will actually reuse your donations', 'Or, sell to a local thrift store or secondhand shop (ex: <a target="_blank" href="https://www.thredup.com/cleanout/donate-clothes">thredUP</a>)'],
            metric_question: 'Estimate how much (in kilos) clothing you repurposed and/or donated. Note: 1 lb = 0.45 kg',
            metric_verb: 'You repurposed and/or donated about ',
            metric_unit: ' kg of clothing! (1 lb = 0.45 kg)',
            reflection_question: "What can you do to reduce the amount of clothing you won't wear in your closet?",
            photo_prompt: 'Share a photo capturing this experience. Tell us what you discovered from this challenge.'
          },
          {
            name: 'Find better clothing',
            type: 'friends',
            question: 'How can I avoid fast fashion?',
            description: "Choose <a target=\"_blank\" href=\"https://truecostmovie.com/learn-more/buying-better/\">quality over quantity</a>. Wear something more to decrease cost per wear. (Ex: $60 pants worn 2x a week per year = ~$0.57 per wear!) Thinking long-term and buying better diminishes the impact of clothes. What's even better: <a target=\"_blank\" href=\"https://trashisfortossers.com/zero-waste-wardrobe-secondhand-shopping/\">buy secondhand</a>, because you're extending the lifespan of something that already exists.",
            links: {
              'Clothing materials 101 (guide)' => 'https://goodonyou.eco/category/made-from/',
              'Brand directory (ratings)' => 'https://directory.goodonyou.eco/',
              'How to catch greenwashing (guide)' => 'https://goodonyou.eco/how-can-you-tell-when-a-fashion-brand-is-greenwashing/',
              "What's 'organic' clothing?" => 'https://goodonyou.eco/global-organic-textile-standard-gots/'
            },
            background: 'Take this challenge when you need new clothes.',
            instructions: ['Buy less', 'Buy secondhand', 'Alternatively, buy clothes made of the <a target="_blank" href="https://goodonyou.eco/most-sustainable-fabrics/">most sustainable fabrics</a> (e.g. hemp, linen, recycled <a target="_blank" href="https://goodonyou.eco/know-your-product-a-quick-guide-to-organic cotton">organic cotton</a>), NOT synthetic material (e.g. <a target="_blank" href="https://goodonyou.eco/material-guide-polyester-2/">polyester</a>, rayon, acrylics, blend of these)', "Shift
       your mindset towards investing in a quality; reduce the cost per wear",
                           'Bring friends along shopping & share what you learned'],
            metric_question: 'How many people did you share what you learned with?',
            metric_verb: 'You shared with ',
            metric_unit: ' people what you learned about buying less.',
            reflection_question: 'With what you know now, what do you look for in companies and clothing when shopping?',
            photo_prompt: 'Share a photo of your shopping spree. Tell us what brands you purchased from and what your clothes are made of.'
          },
          {
            name: 'Contact fashion brands',
            type: 'community',
            question: 'Why the power move?',
            description: "<a target=\"_blank\" href=\"https://www.lowestwagechallenge.com/post/state-of-the-industry\">98% of garment workers aren't paid a living wage, and 75% of them are women(!!).</a> This is NOT okay. <a target=\"_blank\" href=\"https://www.fashionrevolution.org/emergency-measures-resources/\">Boycotts aren't the solution though</a> cause workers can lose their jobs. Fashion brands will continue exploiting workers unless customers pressure them otherwise.",
            links: {
              "What's transparency in fashion?" => 'https://www.fashionrevolution.org/about/transparency/',
              'The garment industry around the world' => 'https://cleanclothes.org/resources/publications/factsheets',
              "Q's to ask about your clothes" => 'https://goodonyou.eco/who-made-my-clothes-and-other-important-questions/'
            },
            background: 'Choose a fashion brand with a <a target="_blank" href="https://directory.goodonyou.eco/">low rating</a>',
            instructions: ["Ask the brand's rep for transparency via email or social media (in person is best, if possible): who made the brand's clothes? How much are they paid?  <a target=\"_blank\" href=\"https://www.fashionrevolution.org/about/get-involved/\">Get started with these scripts</a>", 'Share what you learned with (at least) 3 people', 'Start a movement! Get (at least) 3 people to send an email to the brand rep asking for transparency'],
            metric_question: 'How many people (including yourself) did you get to reach out to a brand rep?',
            metric_verb: 'You got ',
            metric_unit: ' people to contact a brand rep about increasing transparency!',
            reflection_question: 'How does what you learned from this challenge impact your view of fashion?',
            photo_prompt: 'Share a photo capturing what you learned. Tell us what brand you reached out to and what you asked of them.'
          },
          {
            name: 'Clean naturally',
            type: 'self',
            question: 'Why does the laundry detergent I use matter?',
            description: "Whatever is in your laundry detergent ends up in wastewater, which eventually <a target=\"_blank\" href=\"http://theconversation.com/curious-kids-where-does-my-poo-go-when-i-flush-the-toilet-does-it-go-into-the-ocean-78254\">enters the ocean</a>. If the ingredients in the detergent <a target=\"_blank\" href=\"https://www.smallfootprintfamily.com/homemade-laundry-detergent-recipe\">isn't safe for you</a>, it's not safe for the environment. Ingredients in laundry detergent can also irritate the skin, which makes wearing newly-washed clothes uncomfortable.",
            links: {
              'DIY laundry soap' => 'https://wellnessmama.com/462/homemade-laundry-detergent/',
              "What's up with dry cleaning?" => 'https://greenamerica.org/green-living/green-dry-cleaning'
            },
            instructions: ['Use non-toxic laundry detergent', 'Wash with <a target="_blank" href="https://coldwatersaves.org/">cold water</a>, might as well save energy', 'Line dry when possible to save energy too (Pro-tip: this helps your clothes last longer)', 'Keep teaching! Share what you learned with (at least) 3 people'],
            alt_instructions: ['Avoid <a target="_blank" href="https://www.ewg.org/enviroblog/2011/09/dry-cleaning-chemicals-hang-around-your-clothes">perc</a> when dry cleaning'],
            metric_question: 'How many loads of laundry did you clean with a safer laundry detergent?',
            metric_verb: 'You cleaned ',
            metric_unit: ' loads of laundry with a safer laundry detergent!',
            reflection_question: 'What have you learned from this challenge?',
            photo_prompt: 'Share a photo of your laundry washing experience. Tell us what detergent you used and why you chose it.'
          },
          {
            name: 'No more synthetics',
            type: 'community',
            question: "What's the problem?",
            description: 'About 1.4 million TRILLION pieces of microfiber are in the ocean. The problem: this plastic absorbs surrounding toxins, causing gut impaction, hormone disruption, and liver damage in the animals that ingest it. These same animals rise up in the food chain onto our plates.',
            links: {
              'Microfiber 101' => 'https://storyofstuff.org/uncategorized/the-story-of-microfibers-faqs/',
              'How problematic are microfibers?' => 'https://storyofstuff.org/blog/microfibers-are-microplastics-1/',
              'Our clothes are polluting the ocean' => 'https://www.vox.com/the-goods/2018/9/19/17800654/clothes-plastic-pollution-polyester-washing-machine'
            },
            background: 'Find a brand that makes clothes with synthetic materials.',
            instructions: ["Write to the brand rep what you've learned about synthetic material's impact on the environment. Ask about the brand's plan for bettering their supply source for the future.", "Share with (at least) 3 people what you've learned", 'Start a movement! Get (at least) 3 people to send an email to the brand rep asking for no more synthetics'],
            metric_question: 'How many people (including yourself) did you get to reach out to a brand rep?',
            metric_verb: 'You got ',
            metric_unit: ' people to write to a brand rep asking them to better their supply sourcing!',
            reflection_question: 'How does what you learned about synthetic materials impact your view of fashion?',
            photo_prompt: 'Share a photo capturing what you learned. Tell us what brand you reached out to and what you asked of them.'
          }
        ]
      },
      Clean: {
        videoCaption: 'To unlock the Clean theme, you must complete 2 Body challenges.',
        briefDescription: "There are many products on the market that leave behind harmful chemicals in place of
        the dirt and grime we want to remove. Cleaning shouldn't be harmful or complicated. We'll show you how to
        keep it simple and fun!",
        instruction: "Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Audit your products',
            type: 'pre',
            question: 'Why do cleaning products matter?',
            description: "You can't create a safe space if you don't know what's used to clean your environment. All those sprays, wipes, cleaning solutions, powders -- we breathe them in. Respect yourself + others, and make room for safe healthy products in your environment.",
            links: {
              'Avoid greenwashing (guide) [for food, but applies to cleaning too]' => 'https://foodrevolution.org/blog/how-to-avoid-greenwashing/',
              'What do all these cleaning labels mean?' => 'https://www.ewg.org/guides/cleaners/content/decoding_labels'
            },
            instructions: ['Read the ingredient list of all the cleaning products you use in your home', "If you don't know what an ingredient is or its health rating, look it up in <a target=\"_blank\" href=\"https://www.ewg.org/guides/cleaners\">this database</a>."],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'What is something that surprised you from reading the ingredients in your cleaning products and searching the EWG database?',
            photo_prompt: ''
          },
          {
            name: 'DIY cleaning products',
            type: 'self',
            question: 'Why should I make my own?',
            description: "You'll know exactly what you're introducing to your home, cause you're choosing the ingredients. Skip the aisles of conventional cleaning brands filled with toxins; the 'natural' cleaners that <a target=\"_blank\" href=\"https://www.ewg.org/guides/cleaners\">aren't necessarily safer</a>; and the safer ones that cost too much.",
            links: {
              'Tips on cleaning green' => 'https://www.greenamerica.org/waystocleangreen',
              '7 cleaners to avoid' => 'https://dontmesswithmama.com/7-toxic-household-cleaners-avoid-problem-natural-store-bought-cleaners/',
              'Recipes for making your own' => 'https://www.thegoodtrade.com/features/diy-non-toxic-cleaning-products'
            },
            instructions: ['Choose a cleaning product you use often (e.g. all-purpose cleaner, degreaser)', "And go make your own! Stop by the 'Wanna learn more?' section if you need help getting started", "Once you've made it, get cleaning!"],
            metric_question: 'How many cleaning solutions did you make?',
            metric_verb: 'You made ',
            metric_unit: ' homemade safe cleaning solutions!',
            reflection_question: 'How has this challenge impacted your perspective about cleaning products?',
            photo_prompt: 'Share a photo of your homemade cleaning solution. Tell us what you made and the recipe!'
          },
          {
            name: 'Opt for safe cleaning',
            type: 'self',
            question: "What's the big deal?",
            description: "There are <a target=\"_blank\" href=\"https://dontmesswithmama.com/7-toxic-household-cleaners-avoid-problem-natural-store-bought-cleaners/\">many cleaning products that don't prioritize people's health</a>. By <a target=\"_blank\" href=\"https://www.madesafe.org/safer-cleaning-products/\">shopping intentionally</a>, you're demanding for safe cleaning products in the market. We have a right to health, so stand up for it through your actions.",
            links: {
              "We're not perfect, but it's okay (inspiration)" => 'https://www.lisabronner.com/falling-off-the-green-machine/',
              'Disinfectants 101' => 'https://www.womensvoices.org/safe-cleaning-products/disinfectant-overkill/disinfectants-fact-sheet/',
              'Soap nuts 101' => 'https://econutssoap.com/what-are-soap-nuts/'
            },
            background: "When you're ready to shop for your cleaning products:",
            instructions: ['Find safer cleaning alternatives that are within your budget. Be careful of <a target="_blank" href="https://7billionfor7seas.com/greenwashed-cleaning/">greenwashing</a>!', 'Buy them', 'And use them!'],
            metric_question: 'How many safer alternative cleaning solutions did you purchase?',
            metric_verb: 'You bought ',
            metric_unit: ' safer alternative cleaning solutions!',
            reflection_question: 'How can you engage your friends and family to purchase safer cleaning products?',
            photo_prompt: 'Share a photo of your cleaning product. Tell us why you decided to purchase this one.'
          },
          {
            name: 'Give feedback',
            type: 'community',
            question: 'Why does feedback matter?',
            description: "It is hard to change when we don't know what + how we can improve. Same goes for companies. They can't better serve us, their customers, when they don't know what we desire. Don't let companies decide what you need. Tell them what you want.",
            links: {
              'The power of speaking up' => 'https://www.results-project.org/safe-cleaning-products-initiative/'
            },
            instructions: ["Reach out to brands that you\xE2\x80\x99ve purchased from (e.g. email, call)", "Tell them <strong>a)</strong> why you like their products or don't like their products anymore, <strong>b)</strong> how they can improve for you, and <strong>c)</strong> anything else you’d like them to know", "Don't do it alone: get at least 2 peers to take this challenge too!"],
            metric_question: 'How many people did you engage to send a note to a brand rep?',
            metric_verb: 'You engaged ',
            metric_unit: ' people to send a note to a brand rep to better their company practices!',
            reflection_question: 'What did you learn from this experience?',
            photo_prompt: 'Share a photo capturing your experience. Tell us what you asked of the brand rep.'
          },
          {
            name: 'Go plastic-free reusable',
            type: 'self',
            question: "What's the problem with single-use + plastic?",
            description: '<a target="_blank" href="http://apps.npr.org/plastics-recycling/?utm_medium=social&utm_source=facebook.com&utm_term=nprnews&utm_campaign=npr">Single-use items + plastic</a> contribute to ocean <a target="_blank" href="https://www.plasticpollutioncoalition.org/the-facts">plastic pollution + waste accumulation</a>, which worsens climate change. So, do the opposite. Reusables + plastic-free produces less trash and reduce carbon emissions. Claim space for the environment to do its thing!',
            links: {
              "Zero waste cleaning supplies [you'll have to scroll down] (list)" => 'https://www.goingzerowaste.com/31-day-challenge/zero-waste-cleaning-day-9-of-the-zero-waste-challenge',
              'Zero waste toilet cleaning' => 'https://trashisfortossers.com/cleaning-toilet-naturally/',
              'Zero waste cleaning products (list)' => 'https://packagefreeshop.com/collections/cleaning-under-20'
            },
            background: 'When your current cleaning tools have reached the end of their life:',
            instructions: ['Repurpose old t-shirts into cleaning rags', "For cleaning tasks that can't be accomplished with a rag (e.g. scrubbing, protection), get reusable non-plastic tools made of plant-based materials (e.g. bamboo, wood, natural rubber)"],
            metric_question: 'How many reusable and plastic-free cleaning tools did you get/make?',
            metric_verb: 'You got/made ',
            metric_unit: ' reusable and plastic-free cleaning tools!',
            reflection_question: 'How has this challenge impacted your perspective about plastic and single-use?',
            photo_prompt: 'Share a photo of your reusable and plastic-free cleaning equipment. Tell us what makes them great!'
          },
          {
            name: 'Host a cleaning party',
            type: 'friends',
            question: 'Why?',
            description: "Tap into people's emotions. When they experience the benefits themselves, they become invested, which is what we're aiming for. Show your community that cleaning can be simple, fun, and safe.",
            links: {
              'Health ratings for cleaning products' => 'https://www.ewg.org/guides/cleaners',
              'Tips to clean safely (list)' => 'http://static.ewg.org/files/2009/10/school-cleaners/home-tip-sheet.pdf'
            },
            instructions: ['Bring the safe cleaning solution(s) + equipment', 'Get together with your friends + fam & clean their homes together', 'Share what you learned about conventional cleaning products + safer alternatives'],
            metric_question: 'How many people did you teach about safe cleaning products?',
            metric_verb: 'You taught ',
            metric_unit: ' people about safe cleaning products!',
            reflection_question: 'How did your friends + fam respond to what you taught them?',
            photo_prompt: "Share a photo of your cleaning party. Tell us what ya'll used to clean and how fun it was."
          },
          {
            name: 'Push for safer cleaning',
            type: 'community',
            question: "How can I change my community's cleaning practices? ",
            description: "The safety of cleaning products isn't something people usually talk about. But you know more now, so share that knowledge, especially with people who have decision-making power. They impact larger groups of people, so work with them to create safer spaces.",
            links: {
              'Why green cleaning matters' => 'https://healthyschoolscampaign.org/programs/green-clean-schools/',
              'Actions to demand gov change (list)' => 'https://www.womensvoices.org/take-action/',
              'Making the switch in schools (guide)' => 'https://greencleanschools.org/resources/steps/'
            },
            background: 'Be loud, and raise awareness about this topic in your community! Here are ways to get started:',
            instructions: ['Persuade the person in charge of purchasing the cleaning products at your home or workplace (e.g. office manager, school cleaning director) to switch to safe cleaning products', 'Make posters and/or send emails to inform the community about buying and using safer cleaning products, why it matters, and how it affects them', "Host a (mini) workshop teaching other people what you've learned"],
            alt_instructions: ['The goal is to engage your community!'],
            metric_question: 'How many people did you talk to about this topic?',
            metric_verb: 'You talked to ',
            metric_unit: ' people about purchasing safer cleaning products!',
            reflection_question: 'How receptive were people to switching to buying and using safer cleaning products?',
            photo_prompt: 'Share a photo capturing this moment. Tell us what came out of your conversation(s).'
          }
        ]
      },
      Home: {
        videoCaption: 'To unlock the Home theme, you must complete 1 clean and 1 fashion challenge.',
        briefDescription: "Did you know that indoor air is more polluted than the air outside? Carpets,
        paint, and furniture, for example, can release pollutants that build up in our homes. This raises the
        question: do you know the material composition of the things in your home?",
        instruction: "Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Declutter your space',
            type: 'pre',
            question: "What's in your home?",
            description: "It is easy to fill up large empty spaces with things that don't add much value to our lives. In fact, <a target=\"_blank\" href=\"https://onlinelibrary.wiley.com/doi/abs/10.1111/jiec.12371\">a published study</a> found that household consumption accounts for 60%(!) of global greenhouse gases.",
            links: {
              "What's in your stuff?" => 'https://www.madesafe.org/education/whats-in-that/',
              '30 days to minimalism (guide)' => 'https://docs.wixstatic.com/ugd/26357d_637653be3c234bca8b7f1dab3e244a28.pdf',
              'What toxins are your home?' => 'https://www.ewg.org/healthyhomeguide/',
              'Where to detox your home' => 'https://www.madesafe.org/education/whats-in-that/home-detox/'
            },
            instructions: ['<a target="_blank" href="https://www.youtube.com/watch?v=SL0Mv0apjT8">Watch this </a> until minute 3', "Clean out your space. Keep what you need and use. Group the stuff that you don't", "Refer to the 'Wanna learn more' section for tips to get started"],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: "What did you learn from the video? How can you apply what you've learned from the video to your life?",
            photo_prompt: ''
          },
          {
            name: 'Freshen the air',
            type: 'self',
            question: "What's there to freshen?",
            description: 'With every breath, you could be intaking <a target="_blank" href="https://www.ewg.org/enviroblog/2008/05/cheatsheet-volatile-organic-compounds">volatile organic compounds</a>, <a target="_blank" href="https://www.madesafe.org/flame-retardants/">flame retardants</a>, <a target="_blank" href="http://www.panna.org/pesticides-big-picture/pesticides-101">pesticides</a>, among other pollutants from indoor air + dust. Plants are the real MVPs cause they can intake those pollutants, purifying the air you breathe.',
            links: {
              'Best indoor air filtering plants' => 'https://thebestorganiclifestyle.com/houseplants-best-indoor-air-filters',
              'Solutions to improve indoor air' => 'https://draxe.com/indoor-air-quality-natural-solutions/',
              'Guide for smells in the house' => 'https://www.womensvoices.org/fragrance-ingredients/alternatives/'
            },
            instructions: ['Bring (at least) 2 indoor plants into your home', "If you don't live in a too polluted area, open your windows to let fresh air in once in a while"],
            metric_question: 'How many plants did you bring into your home?',
            metric_verb: 'You brought in ',
            metric_unit: ' plants into your home to improve air quality!',
            reflection_question: 'How do you like your plants in your home?',
            photo_prompt: 'Share a photo of your plant(s). Tell us what kind you have.'
          },
          {
            name: 'Conserve energy',
            type: 'self',
            question: 'Why bother?',
            description: 'Simple habit changes <a target="_blank" href="https://www.ewg.org/healthyhomeguide/energy-efficiency/">reduce carbon footprints + save money from utility bills</a>. More importantly, you become more mindful. The simple thought of turning things off, unplugging, and renovating better builds your awareness of the environmental impact of your daily actions.',
            links: {
              'Conserving energy' => 'https://www.ewg.org/healthyhomeguide/energy-efficiency/',
              'The right kind of home insulation (guide)' => 'https://www.ewg.org/healthyhomeguide/insulation/',
              'Save energy costs w/ smart thermostats' => 'https://www.drawdown.org/solutions/buildings-and-cities/smart-thermostats'
            },
            instructions: ['<a target="_blank" href="https://www.ewg.org/healthyhomeguide/lights/">Swap out old lightbulbs with LEDs</a>', 'Unplug unused devices + appliances', 'Set your thermostat to a reasonable temperature (e.g. 68F/20C in winter, 78F/26C in summer)', 'Use cold water to do laundry', '<a target="_blank" href="https://www.drawdown.org/solutions/buildings-and-cities/insulation">Invest in quality insulation</a> for your home'],
            metric_question: 'Estimate the number of times you took action to save energy.',
            metric_verb: 'You took about',
            metric_unit: ' actions to save energy!',
            reflection_question: 'How can you engage friends and family to conserve energy too?',
            photo_prompt: 'Share a photo capturing your experience. Tell us how you reminded yourself to commit to these energy saving practices.'
          },
          {
            name: 'Swap out plastic',
            type: 'self',
            question: 'Why is plastic a problem?',
            description: "The carcinogenic petroleum-based chemicals in plastic can leach into our bodies. When <a target=\"_blank\" href=\"http://apps.npr.org/plastics-recycling/?utm_medium=social&utm_source=facebook.com&utm_term=nprnews&utm_campaign=npr\">trashed</a>, many end up in oceans. <a target=\"_blank\" href=\"https://www.plasticpollutioncoalition.org/the-facts\">Plastic also doesn't biodegrade</a>, so they're just there for 1000s of years. In the ocean, fish mistake them for food, allowing for plastic make its way up into the food we eat.",
            links: {
              'Zero waste swaps (list)' => 'https://www.goingzerowaste.com/blog/the-ultimate-list-of-zero-waste-swaps',
              'Why tackle plastic straws' => 'https://www.strawlessocean.org/faq/',
              'Freezing food without plastic (guide)' => 'https://zerowastechef.com/2016/01/06/how-to-freeze-food-without-using-plastic/',
              'Plastic Service Announcement' => 'https://www.hydratelike.org/',
              "What's in dental floss?" => 'https://www.madesafe.org/education/whats-in-that/dental-floss/'
            },
            instructions: ['Find environmentally responsible alternatives to the plastic products you use', "Reusable is ideal, but if reusable isn't a viable option, aim for compostable and biodegradable", 'When the life of your plastic product comes to an end, purchase the alternative you found instead'],
            metric_question: 'How many zero waste swaps did you make?',
            metric_verb: 'You made ',
            metric_unit: ' zero waste swaps!',
            reflection_question: 'How do you plan to use less plastic in your day-to-day?',
            photo_prompt: 'Take a photo of your swaps. Tell us what swaps you made.'
          },
          {
            name: 'Detox your bed',
            type: 'friends',
            question: 'How does my bed relate to health?',
            description: "You spend a 1/3(!) of your life sleeping. This is time for your body to heal + repair itself, but that's hard to do if your sleep environment is made of toxic materials, like foam, polyester, and adhesives, known <a target=\"_blank\" href=\"http://endocrinedisruption.org/interactive-tools/endocrine-basics\">endocrine disruptors</a> + carcinogens commonly found in bedding.",
            links: {
              "What's in your bedding?" => 'https://www.madesafe.org/education/detox-your-sleep/',
              'Healthy mattress guide' => 'https://www.ewg.org/healthyhomeguide/mattresses/'
            },
            instructions: ['Find bedding that is made of sustainably sourced materials: pillow, pillow cover, mattress, blanket, mattress cover, bedspread', 'Share what you learned with at least 3 other people'],
            alt_instructions: ["If you're in need of new bedding & can afford, purchase sustainably made + safe bedding"],
            metric_question: 'How many people did you share what you learned with?',
            metric_verb: 'You shared with ',
            metric_unit: ' people what you learned about healthy bedding!',
            reflection_question: 'What were the responses of the people you shared your learnings with?',
            photo_prompt: 'Share a photo capturing what you learned from this challenge. Share with us something you learned.'
          },
          {
            name: 'Curate a healthy home',
            type: 'friends',
            question: 'What pollutants could be in your home?',
            description: 'People intake MILLIONS of air particles with every breath. Did you know indoor air can be <a target="_blank" href=" https://www.ewg.org/healthyhomeguide/">2-5x more polluted than air outside</a>?  Pollutants (like lead, flame retardants, and PVC) come from the things in your living space, like building products, <a target="_blank" href="https://thebestorganiclifestyle.com/non-toxic-area-rugs-for-your-home">carpet</a>, and paint.',
            links: {
              'Healthy home swaps' => 'https://www.greenamerica.org/your-home-detoxed/swap-out-toxics-green-your-home',
              'Air filter guide' => 'https://www.ewg.org/healthyhomeguide/air-filters/',
              'Safe cookware guide' => 'https://gimmethegoodstuff.org/safe-product-guides/cookware/'
            },
            instructions: ['Research to find houseware + furniture made of safe materials', 'Keep teaching: share with (at least) 3 people what you learned', "If you find an incredible brand & are happy with a purchase, be sure to send a compliment their way for valuing quality + people's safety. It's important we uplift those doing good work!"],
            metric_question: 'How many houseware + furniture made of low-impact materials did you purchase?',
            metric_verb: 'You bought ',
            metric_unit: ' houseware + furniture made of low-impact materials!',
            reflection_question: 'What was the process for you to find this houseware + furniture?',
            photo_prompt: "Share a photo of your houseware made of low-impact materials. Tell us what it's made of and the brand."
          },
          {
            name: 'Show off your home',
            type: 'friends',
            question: 'Why should I share my home?',
            description: 'Changing our lives is more rewarding when we share, because others see what we have accomplished. Who knows, your actions might inspire others to make similar changes in their lives. It happens!',
            links: {
              'Recipes for entertaining your guests' => 'https://www.drfuhrman.com/recipes/collections/70/festive-entertaining',
              'Finger foods recipes' => 'https://www.drfuhrman.com/recipes/collections/101/fun-finger-foods'
            },
            instructions: ['Host a house party at whatever scale you are comfortable with', "Invite (at least) 3 people (who don't already live with you)", "Show off the changes you've made in your home & share the things you have learned!", "It wouldn't be as fun a party without food. Prep some FLOSN foods and enjoy your time together!"],
            extra: '*FLOSN = fresh, local, organic, seasonal, non-GMO',
            metric_question: 'How many people came to your house party?',
            metric_verb: '',
            metric_unit: ' came to your house party!',
            reflection_question: 'How did your guests react to the changes in your home?',
            photo_prompt: 'Share a photo of your house party. Tell us what you talked about with your guests.'
          }
        ]
      },
      Wellness: {
        videoCaption: 'To unlock Wellness theme, you complete 1 food challenge.',
        briefDescription: "Your health is most important because good health enables you to do the things you want
        and dream of. It sucks to be sick, so take care of your mental, physical, and spiritual health. Here, we'll just
        remind you of how to do that.",
        instruction: "Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Evaluate your health',
            type: 'pre',
            question: 'How is self-care related to climate action?',
            description: "What good can you do or fun can you have if you're not feeling your tip top? You can <a target=\"_blank\" href=\"https://80000hours.org/career-guide/how-to-be-successful/\">only be your best</a> if you're mentally, physically, and spiritually healthy.",
            links: {
              "12 Q's to ask yourself" => 'https://medium.com/thrive-global/12-questions-that-will-change-your-life-9d281c1e4704',
              "3 Q's to get the life you want" => 'https://thoughtcatalog.com/ryan-holiday/2015/04/three-decisions-every-person-needs-to-make-and-make-correctly/',
              'Why you might be depressed + anxious (video)' => 'https://www.ted.com/talks/johann_hari_this_could_be_why_you_re_depressed_or_anxious#t-263872'
            },
            instructions: ["Evaluate your current mental, physical, and spiritual health. What's good?", "Look at the questions in the 'Wanna learn more?' section. Honestly answer (at least) 3 of Q's & write your answers down on a piece of paper", 'Having answered these questions, reflect upon how you can make life better for yourself'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'Which areas of your health can you improve? How can you take initiative towards improving those areas?',
            photo_prompt: ''
          },
          {
            name: 'Get enough sleep',
            type: 'self',
            question: 'Are you getting enough sleep?',
            description: "You know sleep is important. We never feel great with <a target=\"_blank\" href=\"https://www.hopkinsmedicine.org/health/wellness-and-prevention/the-effects-of-sleep-deprivation\">little sleep</a>. Getting those zzz's improves your mood, strengthens your immune system, boosts your motivation, maintains your memory retention, and makes the day better. ",
            links: {
              'Sleep 101' => 'https://web.stanford.edu/~dement/sleepless.html',
              '12 ways to improve your sleep' => 'http://healthysleep.med.harvard.edu/healthy/getting/overcoming/tips',
              'How much sleep do you need?' => 'http://healthysleep.med.harvard.edu/need-sleep/what-can-you-do/assess-needs'
            },
            instructions: ['Get at least 7.5 hours of sleep. Period.'],
            metric_question: 'How many hours of sleep did you get?',
            metric_verb: 'You slept ',
            metric_unit: ' hours!',
            reflection_question: 'How did you make sure you got enough sleep?',
            photo_prompt: 'Share a photo of your bed. Tell us how you feel today and how much sleep you got.'
          },
          {
            name: 'Build your relationships',
            type: 'friends',
            question: 'What makes relationships important?',
            description: "Who ever said life is fun without friends and family? Nobody. We all thrive when we have people we can just be our authentic selves with. These relationships don\xE2\x80\x99t just come to you on a platter though. You gotta make an effort + put in time to build, maintain, and strengthen those relationships.",
            links: {
              'Leading a healthy + happy life' => 'https://news.harvard.edu/gazette/story/2017/04/over-nearly-80-years-harvard-study-has-been-showing-how-to-live-a-healthy-and-happy-life/',
              "Being too busy for friends won't help you (blog)" => 'https://hbr.org/2017/07/being-too-busy-for-friends-wont-help-your-career'
            },
            instructions: ["Connect with your friends, family, and people you're interested in getting to know", 'Do something together for at least 1.5 hours. (e.g. cook a meal + eat! stroll in the neighborhood or hike. play a game or sport.) Basically, spend time together', 'In that time, ask (at least) 3 questions about the other person. Get to genuinely know them!'],
            metric_question: 'How many people did you spend time with for this challenge?',
            metric_verb: 'You spent time with ',
            metric_unit: ' people for this challenge!',
            reflection_question: 'What can you do regularly to further build your relationships?',
            photo_prompt: 'Share a photo of you and your buddie(s). Tell us how you spent time with them.'
          },
          {
            name: 'Exercise',
            type: 'self',
            question: 'Instead of sitting, how about getting up and moving around?',
            description: "We've <a target=\"_blank\" href=\"https://www.bbc.com/news/health-50466061?ns_source=facebook&ns_campaign=bbcnews&ns_mchannel=social&ocid=socialflow_facebook\">become sedentary</a> with all our conveniences (e.g. chairs, elevators, cars) Remember the benefits of exercise! Feeling more positive, better sleep, ramped up energy levels, enhanced confidence, stronger immune system, <a target=\"_blank\" href=\"https://draxe.com/benefits-of-exercise/\">and SO MUCH more</a>.",
            links: {
              'Benefits of exercise (list)' => 'https://draxe.com/benefits-of-exercise/'
            },
            instructions: ['Get active for at least 30 minutes each day', "We don\xE2\x80\x99t care how intense this activity is. Just don\xE2\x80\x99t sit for 30 minutes straight", 'Stand, walk around, run, swim, bike, stretch, dance, move every part of your body'],
            metric_question: 'How many hours did you exercise?',
            metric_verb: 'You exercised ',
            metric_unit: ' hours!',
            reflection_question: 'What kind of exercise do you like?',
            photo_prompt: 'Share a photo of you exercising. Tell us how it felt.'
          },
          {
            name: 'Take a sugar detox',
            type: 'self',
            question: 'How does sugar relate to wellness?',
            description: 'Sugars in the foods + drinks we intake add up. The problem? <a target="_blank" href="https://foodbabe.com/the-10-reasons-you-need-a-sugar-detox-right-now/">Consuming too much sugar</a> reduces energy levels, promotes tooth decay, <a target="_blank" href="https://www.drfuhrman.com/elearning/eat-to-live-blog/160/a-mature-view-on-sugar">induces premature aging</a>, and contributes to MANY other sub-optimal bodily reactions. The solution? Omit the problem: sugar.',
            links: {
              'Sugar 101' => 'https://foodrevolution.org/blog/sugar-substitutes/?utm_campaign=frn19&utm_medium=email&utm_source=email-automated&utm_content=5445&utm_term=existing-email-list&email=&firstname=Friend&lastname=',
              'How to slay sugary cravings (blog)' => 'https://www.doctorklaper.com/sugar'
            },
            background: "Let's be clear: we're not saying, \"Don't eat anything with sugar.\" We simply encourage you to eat less foods with added sugars, because we want you to feel better every day.",
            instructions: ['Eat foods without added sugars. Whole, unprocessed fruit is okay!', 'Check for <a target="_blank" href="http://www.eatingwell.com/article/284643/other-names-for-sugar/">added sugars</a> by reading the ingredients list on packages', "Don't make assumptions. If someone homemade the food, ask if any sugar was added", "If you're ever unsure, just don't eat it for this challenge"],
            metric_question: 'How many times did you refuse something with added sugar?',
            metric_verb: 'You refused something with added sugar ',
            metric_unit: ' times!',
            reflection_question: 'What surprised you from this challenge?',
            photo_prompt: 'Share a photo of what you ate or did instead. Tell us about what you accomplished.'
          },
          {
            name: 'Free yourself',
            type: 'self',
            question: 'Why so busy?',
            description: 'Sometimes we get caught up staying busy + pleasing others. Days go by without us realizing. No more: we give you permission to take a break. Claim time off from the responsibilities so you can do you.',
            links: {
              "Before you freak out, ask these Q's" => 'https://dailystoic.com/before-you-freak-out-ask-these-questions/'
            },
            instructions: ['Do what you want', "Say 'no' to things you really don't want to do. Either <strong>1)</strong> don't do it (if reasonable), or <strong>2)</strong> do it later", 'Respect your me-time'],
            metric_question: 'How many times did you choose to do something for yourself?',
            metric_verb: 'You chose to do something for yourself ',
            metric_unit: ' times!',
            reflection_question: 'How challenging was it to set aside time for yourself?',
            photo_prompt: 'Share a photo of you doing something for you. Tell us what you did and how it felt.'
          },
          {
            name: 'Find peace',
            type: 'self',
            question: 'What does it mean to feel peace?',
            description: "Hit pause on all the noise + busy-ness in your life. Breathe, spend time with yourself, and evaluate where you are. Let time 'slow' down for you to process your thoughts so you can appreciate life as it is in the present.",
            links: {
              'Meditation 101' => 'https://www.headspace.com/meditation-101/what-is-meditation',
              'Waking Up by Sam Harris (app)' => 'https://wakingup.com/',
              'Intro to yoga (video)' => 'https://www.youtube.com/playlist?list=PLui6Eyny-UzwiUzvhM2BjxThodiRWZ2JR'
            },
            instructions: ['Meditate for at least 10 minutes each day. Pay attention to your thoughts and observe them', 'Try out yoga each day for 5-10 minutes', 'Write each day for at least 10 minutes. Reflect upon your day, feelings, and thoughts. Just let them flow into words on paper'],
            metric_question: 'How many minutes did you meditate, do yoga, and write?',
            metric_verb: 'You meditated, did yoga, and/or wrote for ',
            metric_unit: ' minutes!',
            reflection_question: 'What do you think about meditation, yoga, and writing now?',
            photo_prompt: 'Share a photo capturing this experience. Tell us how it felt.'
          }
        ]
      },
      Travel: {
        videoCaption: 'To unlock the Travel theme, you must complete 1 waste and 1 food challenge.',
        briefDescription: "Being mindful of the impact of our daily actions doesn't stop when we leave home. It
        is still important if we're in the front yard, down the street, another city, and another country. Take what
        you've learned on your next trip, and show us what you can do!",
        instruction: "Now it's time to DO: choose 1-2 challenges below, learn, and act!",
        challenges: [
          {
            name: 'Know your values',
            type: 'pre',
            question: 'Why should you know your values?',
            description: "You're going to be challenged when you leave your comfort zone, and you're gonna discover ways in which the world enables + inhibits you from living your values. However, these moments are simply hidden opportunities for you to be strong and remain true to yourself.",
            links: {
              'Find your community' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/find-your-tribe/'
            },
            instructions: ['Identify your values that you will not compromise', 'Think about how you will constructively respond to a person or event that challenges your values. What will you say and do?'],
            metric_question: '',
            metric_verb: 'N/A',
            metric_unit: '',
            reflection_question: 'What are some of your values? Why do they matter to you?',
            photo_prompt: ''
          },
          {
            name: 'Eat out mindfully',
            type: 'self',
            question: 'Why does this matter?',
            description: 'Your diet impacts so many things: health, waste, wellness, carbon + water footprints, and community. Show up at places whose values align with yours. Being physically there is a HUGE vote of support + a form of advocating for what you care about.',
            links: {
              'Dining out sustainably (guide)' => 'https://foodprint.org/dining-out-sustainably/',
              'Carbon neutral restaurants (list)' => 'http://www.zerofoodprint.org/',
              'Avoid stuffing yourself (blog)' => 'https://www.drfuhrman.com/get-started/eat-to-live-blog/30/dont-succumb-to-holiday-heart'
            },
            instructions: ['Find + eat at a place that serves 100% FLOSN food, or as close to 100% as possible', 'Zero your waste in this adventure: refuse any single-use disposable items. Bring your own reusable food containers for any leftovers or takeout', 'Consider the water + carbon footprint of your eating choices + travel method', "Ask the employees Q's about the ingredients used in their dishes."],
            extra: 'FLOSN = fresh, local, organic, seasonal, non-GMO',
            metric_question: 'How many times did you eat at a place that serves FLOSN food?',
            metric_verb: 'You ate ',
            metric_unit: ' times at a place serving FLOSN food!',
            reflection_question: 'How can you be more mindful about your impact when eating out?',
            photo_prompt: 'Share a photo of your FLOSN meal(s). Share with us the name of the food place and what you ordered!'
          },
          {
            name: 'Shop fair trade',
            type: 'self',
            question: 'Why support fair trade?',
            description: '<a target="_blank" href="https://www.fairtrade.org.uk/What-is-Fairtrade">Fair trade</a> means workers are paid living wages + treated respectfully. This seems like common sense, no? We think so, but currently, many workers around the world are exploited to drive revenue up.',
            links: {
              'Fair trade products' => 'https://wfto.com/fair-trade/10-principles-fair-trade',
              'Fair trade labels' => 'https://fairworldproject.org/get-informed/movements/fair-trade/certifiers-membership-orgs/',
              'Fair trade helps end human trafficking (blog)' => 'http://fairtradeamerica.org/en-us/media-center/blog/2016/august/how-fairtrade-helps-end-human-trafficking'
            },
            instructions: ['Look for products made with Fair Trade practices next time you shop', "If you're not sure if something was made with fair trade practices, ask questions (e.g. send emails, ask store employees)"],
            metric_question: 'How many fair trade items did you buy?',
            metric_verb: 'You bought ',
            metric_unit: ' fair trade items!',
            reflection_question: 'How has this challenge impacted your view on the things you buy?',
            photo_prompt: 'Share a photo of your fair trade purchase. Tell us something you learned about fair trade.'
          },
          {
            name: 'Go outdoors',
            type: 'self',
            question: 'Why get outside?',
            description: "People in the U.S. <a target=\"_blank\" href=\"https://www.epa.gov/report-environment/indoor-air-quality\">spend about 90% of their time indoors</a>. Go out for a breathe of fresh air! Have you ever felt a bit more relaxed when you're outdoors? That's nature's effect. It boosts your mood + immune system all while getting vitamin D from the sun.",
            links: {
              'When outside, pick up litter' => 'https://www.goingzerowaste.com/31-day-challenge/pick-up-litter-day-12-of-the-zero-waste-challenge'
            },
            instructions: ['Spend at least 30 minutes each day outdoors in nature (not surrounded by buildings)', "If you see litter, pick it up + dispose of it properly. You'll help keep the environment clean from trash"],
            metric_question: 'How many minutes did you spend outside?',
            metric_verb: 'You spent ',
            metric_unit: ' minutes outside!',
            reflection_question: 'How did it feel to get outdoors?',
            photo_prompt: 'Share a photo of your adventure outdoors. Tell us where you went.'
          },
          {
            name: 'Refuse single-use',
            type: 'self',
            question: 'Why focus on refusing single-use?',
            description: "Ya'll, here's the truth: if something is used once + thrown away, it's single-use, regardless if the item is compostable. This is a HUGE waste of resources, especially when they're used for less than several minutes & tossed without another thought <a target=\"_blank\" href=\"https://www.plasticpollutioncoalition.org/the-facts\">and just problematic</a>.",
            links: {
              'Break up with these single-use items' => 'https://goodonyou.eco/awesome-alternatives-to-single-use-items/',
              "Plastic's relation to climate change (blog)" => 'https://makingoceansplasticfree.com/reducing-single-use-plastic-distraction-or-solution-to-climate-change/'
            },
            instructions: ['Take reusable items necessary for your next outing with you (e.g. reusable food containers for eating out; reusable bag for grocery shopping)', 'Break up with single-use. <a target="_blank" href="https://www.5gyres.org/animals/">Refuse any single-use items</a> (e.g. utensils, dishes, bag, napkin, <a target="_blank" href="https://squareup.com/townsquare/some-scary-stats-about-the-environmental-impact-of-paper-receipts">paper receipt</a>)', "When you refuse an item, include why so other people know. 'No thank you, I don't need that ___ because I don't want to ___.'"],
            metric_question: 'How many times did you refuse single-use?',
            metric_verb: 'You refused taking and using single-use items ',
            metric_unit: ' times!',
            reflection_question: 'What surprised you from this challenge?',
            photo_prompt: 'Share a photo of your reusable travel gear. Tell us how your experience was.'
          },
          {
            name: 'Gift responsibly',
            type: 'self',
            question: 'What impact does this have?',
            description: "We can't force people to change, no matter how deeply we want them to. Instead, <a target=\"_blank\" href=\"https://treadingmyownpath.com/2016/11/24/a-zero-waste-guide-to-gifts/\">we can encourage + support</a>. Gifting something *useful* is an easy way to introduce others to new products + makes it accessible for them to change their habits.",
            links: {
              'Zero waste gift ideas' => 'http://trashisfortossers.com/laurens-top-zero-waste-gifts-for-every-budget/',
              'Gifting forward' => 'http://trashisfortossers.com/everything-to-know-about-gifting-forward/',
              'Gift wrapping zero waste style' => 'http://trashisfortossers.com/a-guide-to-zero-waste-gift-wrapping/',
              'Receiving gifts' => 'https://www.goingzerowaste.com/blog/a-zero-waste-guide-to-receiving-gifts'
            },
            background: 'When you need to gift something:',
            instructions: ['Get a gift that is sustainably made by a socially responsible company and non-toxic to health. Or, get an experience for your giftee', 'Wrap it (if possible) with upcycled materials that are reusable, recyclable, or compostable', 'Top it off with a thoughtful little note telling them how amazing they are', "Please do not gift your giftee something they probably won't use"],
            metric_question: 'How many sustainable gifts did you give?',
            metric_verb: 'You gave ',
            metric_unit: ' sustainable gifts!',
            reflection_question: 'What did you like about this challenge?',
            photo_prompt: 'Share a photo of your gift. Tell us what makes it a sustainable gift.'
          },
          {
            name: 'Affirm your interests',
            type: 'self',
            question: 'Why should I talk about my interests?',
            description: "There's something powerful about telling someone you care about something. It creates a sense of confidence + certainty. Try it. Lead by example & show people that it's okay to care about something & to be proud of it.",
            links: {
              'Expanding your impact' => 'https://www.plasticfreejuly.org/get-involved/what-you-can-do/students-parents/',
              'Talking about sustainability with others' => 'https://www.thegoodtrade.com/features/being-an-effective-sustainability-advocate'
            },
            instructions: ['Tell someone you care about __. Insert a word that you feel is true, something that RootUp inspired. It can be the environment, food justice, reducing your waste, or learning', 'Casually mention it or have a whole conversation', "Do this with family. With friends. With teachers or professors. With strangers. Doesn't matter, just tell people."],
            metric_question: 'How many people did you affirm your interests with?',
            metric_verb: 'You affirmed your interests with ',
            metric_unit: ' people!',
            reflection_question: 'How did you feel telling people that you care about <you insert>?',
            photo_prompt: 'Share a photo capturing this moment. Tell us what you care about.'
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
