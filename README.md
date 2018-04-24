# Art Store
This is a simple app for creating and editing recipes that consist of groceries.

## Installation

To install, clone this repo, then migrate and seed the database:
```
rake db:migrate
rake db:seed
```
Seeding isn't totally necessary, but it will populate the database with some dummy artists, pieces, and categories to browse.

Start a local server:
```
rails s
```
For the Social Login buttons to work properyly on a local development server, follow this guide to start the server with https:
https://www.devmynd.com/blog/rails-local-development-https-using-self-signed-ssl-certificate/

## Usage

Navigate your browser to your localhost server, probably on localhost:3000. The home page displays all of the art pieces currently available. On the left side of the navigation bar are links to display the different artists, categores, and art pieces.
By creating a user and logging in you can add items to a shopping cart and check out. This doesn't currently actually order anything, but the functionality is there.
If you set your user to be an 'Artist' either during creation or on the edit user page, you can add new pieces to your library. Navigate to your profile and there's an "Upload a new image." This will let you create a new piece. The "View Reports" button on this page displays a report of the most valuable shopping cart containing your items.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bretburau/drummingnews_cli_scraper.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).