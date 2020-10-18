Group Project Buuuiiiild

Rules
1. Be respectful // Help one another grow
2. Be patient


Minimum Viable Product
Food Tinder
  - Open Table API: https://opentable.herokuapp.com/
  - Official OpenTable API https://dev.opentable.com/
  - Faker Gem

Questions from last week


  Models
  - User
    has_many :restaurants
    has_many :cuisines, through: :restaurants
    has_many :reviews
    has_many :restaurants, through: :reviews

    Attributes
    - username                 --> string
    - email                    --> string
    - first_name               --> string
    - last_name                --> string
    - password                 --> string
    - password_conformation    --> string
    - relationship_status      --> boolean
    - home_location            --> string (This is interesting, to be revisited)
    
  - Reviews (Join Table)
    belongs_to :user
    belongs_to :restaurant

    Attributes
    - stars          --> string
    - user_id        --> int
    - restaurant_id  --> int
    - description    --> string

  - Restaurant
    has_many :reviews
    has_many :users, through: :reviews
    has_many :contacts
    belongs_to :cuisine
    has_many :locations

    Attributes
    - name          --> string
    - cuisine_id    --> int
    TBD based on OpenTable API


  - Contacts
    :belongs_to :restaurant

    Attributes
    - name              --> string
    - restaurant_id     --> int
    - role              --> string
    - contact_type      --> string

  - Cuisine
    has_many :restaurants
    has_many :users, through: :restaurants

    Attributes
      - name              --> string
      - nationality       --> string
      TBD based on OpenTable API

  - Location
    has_one :restaurant
    Attributes
      - street              --> string
      - nationality       --> string
      TBD based on OpenTable API

  




Stretch Goals
Book a reservation
We need comments for reviews (new table / model)






Project Planner
Social Media App for Flatiron Students incorporating Spotify
 - Must login with github
 - can friend other users
 - can see users spotify playlists


Must Haves
1. Rspec tests
2. Style (Bootstrap)
3. Deploy to server (Heroku or Digital Ocean)
4. At least 4 models
5. Nested Forms

























# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [ ] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [ ] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include signup (how e.g. Devise)
- [ ] Include login (how e.g. Devise)
- [ ] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate