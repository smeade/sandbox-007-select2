## Readme

A Rails application to experiment with select2 and select2-rails.

Demonstrates:

* select2
* select2-rails
* select2 createsearchchoice
* select2 ajax searching/loading

Demo Heroku app is [here](http://sandbox-007-select2.herokuapp.com/).

## Notes
Note that in this demo,
* You can enter new values, not found by the select2 search.
* The select field is being used to populate a string attribute. The `id` is being set to the string.
* Support of belongs_to relationships (where the id is the value of the select) is as simple as setting id appropriately.

**select2**

* See the [gem documentation](http://ivaynberg.github.io/select2/).
* Easily integrated into asset pipeline via [select2-rails](https://github.com/argerim/select2-rails).

## Getting Started

1. Install gems:

        bundle install

2. Create the database:

        rake db:create

2. Migrate the database:

        rake db:migrate

4. Start the web server:

        rails server

5. Using a browser, go to [http://localhost:3000](http://localhost:3000) and you'll see:
"Listing products"

6. A sample .csv file is included.

## Running the test suite

        rake

## Deploying to Heroku

1. Install the [Heroku toolbelt](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup) on local workstation (if not already installed).

2. Create the [Heroku app](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku) (if not already created).

        heroku apps:create

3. [Deploy](https://devcenter.heroku.com/articles/git#deploying-code)

        git push heroku master

4. Run migrations

        heroku run rake db:migrate

5. Visit the deployed app

        heroku open

## License

This project is released under the [MIT License](http://www.opensource.org/licenses/MIT).