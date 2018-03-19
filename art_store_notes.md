User
  has_secure_password
  authentication...
  login
  has many pieces
  Admin/seller/user
    seller has many categories through pieces
    seller can add pieces, with nested categories
    admin can do it all, and edit users
  Has current cart
  has many carts


Piece
  belongs to user(artist/author)
  has many categories
  prints_available?

Categories
  has many pieces

LineItem

Cart

##Dynamic dispatch
##Dynamic definition