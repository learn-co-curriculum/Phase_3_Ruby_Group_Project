Produce.destroy_all
Recipe.destroy_all
Season.destroy_all
ProduceRecipe.destroy_all 

produces = [
    {
        name: "Brussel Sprouts",
        image: "https://upload.wikimedia.org/wikipedia/commons/2/23/Brussels_sprout_closeup.jpg",
        on_list: false,
        season_id: 1
    },
    {
        name: "Beets",
        image: "https://www.producemarketguide.com/sites/default/files/Commodities.tar/Commodities/beets_commodity-page.png",
        on_list: false,
        season_id: 1
    },
    {
        name: "Carrots",
        image: "https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg",
        on_list: false,
        season_id: 1
    },
    {
        name: "Celery",
        image: "https://freshpoint.com/wp-content/uploads/commodity-celery.jpg",
        on_list: false,
        season_id: 1
    },
    {
        name: "Oranges",
        image: "https://cdn.theculturetrip.com/wp-content/uploads/2018/03/origins-of-the-word-orange.jpg",
        on_list: false,
        season_id: 1
    },
    {
        name: "Limes",
        image: "https://images.unsplash.com/photo-1558490946-2cf6cab78c60?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1525&q=80",
        on_list: false,
        season_id: 1
    },
    {
        name: "Potatoes",
        image: "https://cdn.cheapism.com/images/081516_national_potato_day_recipe.2e16d0ba.fill-1440x605.jpg",
        on_list: false,
        season_id: 1
    },
    {
        name: "Spinach",
        image: "https://cdn.mos.cms.futurecdn.net/atyrpYQoxdoTzmEgu8HMWE.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Asparagus",
        image: "https://images.heb.com/is/image/HEBGrocery/000319073",
        on_list: false,
        season_id: 2
    },
    {
        name: "Kale",
        image: "https://cdn.shopify.com/s/files/1/0276/5253/products/DSC01987_final_cropped_for_website_0ab1e79f-f3a4-4167-bfc7-9af4da6c2063.jpg?v=1617375654",
        on_list: false,
        season_id: 2
    },
    {
        name: "Broccoli",
        image: "https://www.health.harvard.edu/media/content/images/p7_Broccoli_HH1812_gi905351392.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Mangoes",
        image: "https://images.livemint.com/rf/Image-621x414/LiveMint/Period2/2018/05/05/Photos/Processed/mangoes1-k22F--621x414@LiveMint.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Radishes",
        image: "https://www.thespruceeats.com/thmb/kXS52zx6Fs_Xpdth-kcQ_k05RZ8=/1885x1414/smart/filters:no_upscale()/GettyImages-994593838-de50e6d7db9a4b328fbfd17f3371dbee.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Strawberries",
        image: "https://befreshcorp.net/wp-content/uploads/2017/07/product-packshot-strawberrie-558x600.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Iceberg Lettuce",
        image: "https://media.newyorker.com/photos/5b6b08d3a676470b4ea9b91f/4:3/w_1920,h_1440,c_limit/Rosner-Lettuce.jpg",
        on_list: false,
        season_id: 2
    },
    {
        name: "Cherry",
        image: "https://www.usda.gov/sites/default/files/ars-bing-cherries-blog-051220.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Blueberry",
        image: "https://post.healthline.com/wp-content/uploads/2020/08/blueberries-1200x628-facebook-1200x628.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Watermelon",
        image: "https://snaped.fns.usda.gov/sites/default/files/seasonal-produce/2018-05/watermelon.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Tomato",
        image: "https://cdn.mos.cms.futurecdn.net/Sz2f3T3SfBfdzhm3stay9S-480-80.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Corn",
        image: "https://www.mayoclinichealthsystem.org/-/media/national-files/images/hometown-health/2018/corn.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Cucumber",
        image: "https://media.self.com/photos/59e4deccf182ef345d648b67/4:3/w_2560%2Cc_limit/GettyImages-478377196.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Avocado",
        image: "https://www.jessicagavin.com/wp-content/uploads/2019/04/avocados-3-1200.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Bell Pepper",
        image: "https://images.saymedia-content.com/.image/t_share/MTc0MTgxNTM0MzI3MTIxNDA0/bell-peppers-do-the-different-colors-really-taste-any-different.jpg",
        on_list: false,
        season_id: 3
    },
    {
        name: "Apple",
        image: "https://images-na.ssl-images-amazon.com/images/I/81Dl5GdAVkL.png",
        on_list: false,
        season_id: 4
    },
    {
        name: "Pumpkin",
        image: "https://www.liveeatlearn.com/wp-content/uploads/2015/10/pumpkin-photo-1.jpg",
        on_list: false,
        season_id: 4
    },
    {
        name: "Pomegranate",
        image: "https://d47gxy3fatgwk.cloudfront.net/wp-content/uploads/2020/10/how-to-cook-with-pomegranate-251.jpg",
        on_list: false,
        season_id: 4
    },
    {
        name: "Acorn Squash",
        image: "https://www.yellowblissroad.com/wp-content/uploads/2016/10/Acorn-squash-1-lr.jpg",
        on_list: false,
        season_id: 4
    },
    {
        name: "Butternut Squash",
        image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/284/284479/butternut-squash.jpg",
        on_list: false,
        season_id: 4
    },
    {
        name: "Eggplant",
        image: "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/279359_2200-1200x628.jpg",
        on_list: false,
        season_id: 4
    },
    {
        name: "Cranberries",
        image: "https://d279m997dpfwgl.cloudfront.net/wp/2018/11/1108_gunst-03.jpg",
        on_list: false,
        season_id: 4
    }
]


produces.each do |produce_hash|
    Produce.create(produce_hash)
end

winter = Season.create(name: "Winter", image: "https://images.unsplash.com/photo-1511803471753-da23b1a92d4b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
spring = Season.create(name: "Spring", image: "https://c4.wallpaperflare.com/wallpaper/665/343/798/spring-high-resolution-wallpaper-preview.jpg")
summer = Season.create(name: "Summer", image: "http://www.iberkshires.com/images/feature/1586875303.jpg")
fall = Season.create(name: "Fall", image: "https://guardianlv.com/wp-content/uploads/2013/09/fall-road.jpg")

recipes = [
    {
        name: "Beef Stew",
        image: "https://www.spendwithpennies.com/wp-content/uploads/2018/09/SpendWithPennies-Homemade-Beef-Stew-21.jpg",
        link: "https://www.spendwithpennies.com/beef-stew-recipe/",
        difficulty: 5,
        description: "This Beef Stew Recipe is perfect for the colder weather! Tender beef is simmered in beef broth with potatoes, onions, celery, peas, and carrots until melt in your mouth tender. It’s comfort food heaven!"
    },
    {
        name: "Fresh Orange Juice",
        image: "https://cdn.healthyrecipes101.com/wp-content/uploads/2020/08/vodka-and-orange-juice-recipe-healthykitchen101-1.jpg",
        link: "https://www.allrecipes.com/recipe/89229/fresh-orange-juice/",
        difficulty: 1,
        description: "It takes a little work, but it tastes much better than orange juice from concentrate."
    },
    {
        name: "Lime Margarita",
        image: "https://www.gimmesomeoven.com/wp-content/uploads/2015/05/Classic-Margarita-Recipe-with-Text-1.jpg",
        link: "https://www.gimmesomeoven.com/margarita-recipe/",
        difficulty: 2,
        description: "This famously sweet, sour and salty drink will forever and always be an all-time favorite cocktail."
    },
    {
        name: "Parmesan Roasted Brussel Sprouts",
        image: "https://www.recipetineats.com/wp-content/uploads/2019/10/Crispy-Parmesan-Roasted-Brussels-Sprouts_7.jpg",
        link: "https://www.recipetineats.com/crispy-parmesan-roasted-brussels-sprouts/",
        difficulty: 3,
        description: "The most amazing Roasted Brussels Sprouts are golden and CRISPY with a crunchy garlic parmesan crust!"
    },
    {
        name: "Balsamic Roasted Beets",
        image: "https://joyfoodsunshine.com/wp-content/uploads/2019/04/balsamic-roasted-beets-recipe-7.jpg",
        link: "https://joyfoodsunshine.com/roasted-beets/",
        difficulty: 3,
        description: "Made with 5 ingredients including fresh beets, this easy Balsamic Roasted Beets recipe is a great side dish or salad topper! "
    },
    {
        name: "Spinach Strawberry Salad",
        image: "https://www.wellplated.com/wp-content/uploads/2019/04/Spinach-Strawberry-Salad.jpg",
        link: "https://www.wellplated.com/spinach-strawberry-salad/",
        difficulty: 2,
        description: "Whether you need a healthy lunch or are looking for a salad to bring to a party that—this is critical—people actually want to eat, this strawberry spinach salad with poppy seed dressing and feta is the recipe for you!"
    },
    {
        name: "Kale Salad",
        image: "https://www.spendwithpennies.com/wp-content/uploads/2018/07/healthy-kale-brocoli-salad-lemon-dressing-recipe-.jpg",
        link: "https://www.spendwithpennies.com/easy-kale-salad-with-fresh-lemon-dressing/",
        difficulty: 2,
        description: "This easy kale salad features fresh veggies and a super simple homemade lemon dressing, making it perfect as a healthy side dish or light lunch!"
    },
    {
        name: "Mango Salsa",
        image: "https://www.gimmesomeoven.com/wp-content/uploads/2014/05/5-Ingredient-Mango-Salsa-Recipe-Gimme-Some-Oven-1.jpg",
        link: "https://www.gimmesomeoven.com/5-ingredient-mango-salsa-recipe/",
        difficulty: 2,
        description: "This 5-ingredient mango salsa recipe is quick and easy to make, and always so fresh and delicious."
    },
    {
        name: "Spicy Steak Salad Wraps",
        image: "https://assets.bonappetit.com/photos/5b3ba67d797f3c36e8a92447/1:1/w_1024%2Cc_limit/spicy-steak-salad-wraps.jpg",
        link: "https://www.bonappetit.com/recipe/spicy-steak-salad-wraps",
        difficulty: 4,
        description: "These adobo-marinated steak wraps have a delightful garnish: Corn nuts. Their primary role here is to add salt, crunch, and sweet toasty flavors to each bite."
    },
    {
        name: "Roasted Asparagus",
        image: "https://cookieandkate.com/images/2019/04/roasted-asparagus-recipe-2-2.jpg",
        link: "https://www.allrecipes.com/recipe/214931/oven-roasted-asparagus/",
        difficulty: 2,
        description: "Salty and savory, the roasting method kills the natural bitterness of asparagus. Try it next to grilled fish or lamb."
    },
    {
        name: "Cherry Jam",
        image: "https://www.tasteloveandnourish.com/wp-content/uploads/2017/08/Easy-Cherry-Jam-5-500x375.jpg",
        link: "https://www.tasteloveandnourish.com/easy-cherry-jam/",
        difficulty: 3,
        description: "With just three simple ingredients and a little bit of time, you can have a jar of this easy cherry jam in the fridge.  You’ll love it over your morning yogurt, on a buttery slice of toast, a scone or even over ice cream."
    },
    {
        name: "Blueberry Pie",
        image: "https://www.lemontreedwelling.com/wp-content/uploads/2018/05/blueberry-pie-featured-2.jpg",
        link: "https://www.allrecipes.com/recipe/12196/blueberry-pie/",
        difficulty: 4,
        description: "This is the best when made with fresh picked blueberries! It is a beautiful sight with a lattice top."
    },
    {
        name: "Elote (Street Corn)",
        image: "https://houseofyumm.com/wp-content/uploads/2014/12/Mexican-Street-Corn-2.jpg",
        link: "https://www.simplyrecipes.com/recipes/grilled_mexican_street_corn_elotes/",
        difficulty: 3,
        description: "Mexican street corn is a staple of summer and it's easy to make at home! Top char-grilled corn on the cob with a tangy, creamy sauce, sprinkle with crumbled cheese and dive in. Make this for your next backyard cook-out!"
    },
    {
        name: "Cucumber Salad",
        image: "https://static01.nyt.com/images/2019/01/15/dining/mrs-cucumber-salad-with-soy-ginger-and-garlic/mrs-cucumber-salad-with-soy-ginger-and-garlic-articleLarge.jpg",
        link: "https://cooking.nytimes.com/recipes/1015023-cucumber-salad-with-soy-ginger-and-garlic",
        difficulty: 2,
        description: "An easy Cucumber Salad that takes only 10 minutes to make and is guaranteed to be a hit."
    },
    {
        name: "Avocado Toast",
        image: "https://cdn.greenbardistillery.com/wp-content/uploads/2018/01/AvocadoToast_CocktailRecipe_GreenbarDistillery.jpg",
        link: "https://www.cookinglight.com/recipes/avocado-toast-recipe",
        difficulty: 1,
        description: "The perfect avocado toast recipe that’s a true classic."
    },
    {
        name: "Stuffed Peppers",
        image: "https://hips.hearstapps.com/hmg-prod/images/delish-classic-stuffed-peppers-horizontal-1538065876.jpg",
        link: "https://www.delish.com/cooking/recipe-ideas/a23014857/classic-stuffed-peppers-recipe/",
        difficulty: 3,
        description: "Multi-color, nutritious bell peppers are loaded with seasoned ground beef, hearty rice and mildly sweet tomatoes, finished with cheese and baked until perfectly tender. It’s a delicious dinner that you’ll want on regular rotation!"
    },
    {
        name: "Apple Crisp",
        image: "https://www.thechunkychef.com/wp-content/uploads/2017/10/Old-Fashioned-Easy-Apple-Crisp-5-1454x2048.jpg",
        link: "https://www.thechunkychef.com/old-fashioned-easy-apple-crisp/",
        difficulty: 3,
        description: "This easy apple crisp is made the old fashioned way like Grandma used to make, and is perfect with a scoop of vanilla ice cream and salted caramel sauce."
    },
    {
        name: "Pumpkin Pie",
        image: "https://i0.wp.com/www.livewellbakeoften.com/wp-content/uploads/2016/11/Homemade-Pumpkin-Pie-4.jpg?fit=1360%2C1360&ssl=1",
        link: "https://www.livewellbakeoften.com/pumpkin-pie/",
        difficulty: 3,
        description: "An easy recipe that’s perfect for the holidays!"
    },
    {
        name: "Pomegranate Rum Cocktail",
        image: "https://aggieskitchen.com/wp-content/uploads/2015/11/Pomegranate_Rum_Cocktail-4-640x960.jpg",
        link: "https://aggieskitchen.com/pomegranate-rum-cocktail-inspired-by-love-boats-famous-bartender-isaac/",
        difficulty: 1,
        description: "This Pomegranate Rum Cocktail will instantly make you feel like you are on vacation!"
    },
    {
        name: "Maple Roasted Acorn Squash",
        image: "https://assets.epicurious.com/photos/5f3acdcb6285a6f22f32068b/2:1/w_1260%2Ch_630/maple%20roasted%20acorn%20squash.jpg",
        link: "https://www.foodnetwork.com/recipes/ina-garten/maple-roasted-acorn-squash-5468290",
        difficulty: 2,
        description: "Maple Roasted Acorn Squash is a simple, yet impressive way to prepare acorn squash. A little bit sweet, a little bit spicy, and every bit delicious, this roasted acorn squash is the best way to enjoy this seasonal fall vegetable."
    },
    {
        name: "Roasted Butternut Squash Salad",
        image: "https://www.saltandlavender.com/wp-content/uploads/2016/08/butternutsquashspinachsalad1.jpg",
        link: "https://www.saltandlavender.com/roasted-butternut-squash-spinach-salad-goats-cheese/",
        difficulty: 2,
        description: "This roasted butternut squash spinach salad with goat's cheese is a healthy, delicious, and filling fall salad."
    },
    {
        name: "Rigatoni with Eggplant Puree",
        image: "https://i1.wp.com/smittenkitchen.com/wp-content/uploads//2008/01/rigatoni-with-eggplant-puree.jpg?fit=1200%2C800&ssl=1",
        link: "https://smittenkitchen.com/2008/01/rigatoni-with-eggplant-puree/",
        difficulty: 4,
        description: "Roasted eggplant is pureed with cherry tomatoes, whole garlic cloves, salt, pepper, and red pepper flakes to make a fresh pasta sauce. The recipe is simple and fairly quick, and the resulting dish is hearty and original."
    },
    {
        name: "Cranberry Snack Cake",
        image: "https://cookingwithcarlee.com/wp-content/uploads/2020/12/close2Bpieces2Bof2Bcranberry2Bcake2Bbars.jpg.webp",
        link: "https://cookingwithcarlee.com/cranberry-snack-cake-cranberryweek/",
        difficulty: 3,
        description: "This simple cake studded with fresh or frozen cranberries for a perfect way to celebrate cranberry season. It’s quick to make and perfectly straddles the line between sweet and tart."
    }
]

recipes.each do |recipe_hash|
    Recipe.create(recipe_hash)
end

producerecipes = [

{
   recipe_id: 1,
   produce_id: 3  
},
{
   recipe_id: 1,
   produce_id: 4 
},
{
   recipe_id: 1,
   produce_id: 7 
},
{
   recipe_id: 2,
   produce_id: 5  
},
{
   recipe_id: 3,
   produce_id: 6 
},
{
   recipe_id: 4,
   produce_id: 1  
},
{
   recipe_id: 5,
   produce_id: 2 
},
{
   recipe_id: 6,
   produce_id: 8 
},
{
   recipe_id: 6,
   produce_id: 14 
},
{
   recipe_id: 7,
   produce_id: 10  
},
{
   recipe_id: 7,
   produce_id: 11 
},
{
   recipe_id: 8,
   produce_id: 12 
},
{
   recipe_id: 9,
   produce_id: 13  
},
{
   recipe_id: 9,
   produce_id: 15 
},
{
   recipe_id: 10,
   produce_id: 9 
},
{
   recipe_id: 11,
   produce_id: 16 
},
{
   recipe_id: 12,
   produce_id: 19 
},
# {
#    recipe_id: 12,
#    produce_id: 18 
# },
{
   recipe_id: 13,
   produce_id: 20 
},
{
   recipe_id: 14,
   produce_id: 21 
},
{
   recipe_id: 15,
   produce_id: 22 
},
{
   recipe_id: 16,
   produce_id: 19 
},
{
   recipe_id: 16,
   produce_id: 23 
},
{
   recipe_id: 17,
   produce_id: 24 
},
{
   recipe_id: 18,
   produce_id: 25 
},
{
   recipe_id: 19,
   produce_id: 26 
},
{
   recipe_id: 20,
   produce_id: 27 
},
{
   recipe_id: 21,
   produce_id: 28 
},
{
   recipe_id: 22,
   produce_id: 29 
},
{
   recipe_id: 23,
   produce_id: 30 
}
]

producerecipes.each do |producerecipe_hash|
    ProduceRecipe.create(producerecipe_hash)
end