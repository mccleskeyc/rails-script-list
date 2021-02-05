# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    - Department has_many scripts, User has_many scripts
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    - Script belongs to Department, Script belongs_to User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    - User has_many Departments, through Scripts
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients
    - Department has_many users through scripts, User has_many departments through scripts
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    - the through, scripts, has user submittable attributes of title and logline
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    - contains uniqueness and presence validations where appropriate (departments, scripts)
- [x] Include signup (how e.g. Devise)
    - via devise
- [x] Include login (how e.g. Devise)
    - via devise
- [x] Include logout (how e.g. Devise)
    - via devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    - via omniauth facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    department/:id/scripts displays an index of the scripts associated with the given department id (ie: if "Half Hour Comedy" has an id of 6, departments/6/scripts would display a list of half hour comedy scripts )
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - If "Half Hour Comedy" has an id of 6, departments/6/scripts/new would display a form that allows a user to add a script to half hour comedies
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    - When validation errors occur, a flash error displays.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
