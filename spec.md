# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - Using Rails...
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - Artist has_many pieces
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) Piece belongs_to Artist
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)  - Artist has_many categores through pieces
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) - User can submit a category when creating a piece
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - User's must have unique email, and other attributes are required. Pieces must have a name and price.
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Artist's report uses a scope method to display the most valuable cart containing that artist's work
- [x] Include signup (how e.g. Devise) - Users can be created
- [x] Include login (how e.g. Devise) - Users can login
- [x] Include logout (how e.g. Devise) - Users can logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - No Devise, but users can login via Google or FaceBook
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - users/2/pieces displays user number 2's works
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)  - users/2/pieces/new is a form to create a piece associated with user 2
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - errors display above forms if there are any

Confirm:
- [X] The application is pretty DRY
- [X] Limited logic in controllers
- [X] Views use helper methods if appropriate
- [X] Views use partials if appropriate

