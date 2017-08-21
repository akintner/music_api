# README

* Rails version: 5.0.1

* System dependencies: This app requires postgresql as a database. All other gem dependencies are listed in the Gemfile and can be downloaded by running `bundle` from your terminal.

* General Configuration: clone down this repo, `bundle` to ensure all the Gemfile dependencies are loaded on your local computer, and then you will need to load, migrate, and seed the database with the CSV files.

* Database Configuration: once you have cloned the repo and bundled for gems, you will have to set up the database on your local machine. To do this, please run the following commands from your terminal in order:
<br>
> rake db:create (this will create the two postgresql databases needed to run the project)  
> rake db:migrate (this will load all the database tables with the information specified in the migration files)  
> rake db:test:prepare (this will ensure that you can run the test specs)  
> rake db:import_csvs (this will load all of the info from the CSV files into the database)  
<br>

* How to run the program from your local browser: if you would like to run the program from your browser to see how the API is returning JSON objects, please type `puma` or `rails server` into the terminal and then open up a browser of your choice and type in the following basic URL `localhost:3000/api/v1/` to access the main directory of all artists (in alphabetical order) in the database. The following other paths are also available: 

#### Database Table Endpoints
`localhost:3000/api/v1/artists/:artist_name` if you click on an artist from the main index or input an artist's name, you can view all albums from that artist in the database  
`localhost:3000/api/v1/albums`  this will provide a json list of all albums in the database  
`localhost:3000/api/v1/albums/:id`  if you input a number in place of :id, you can see information for a particular album  
`localhost:3000/api/v1/albums/:id/edit` will allow you to edit a specific item  
`localhost:3000/api/v1/albums/new` where you can create an album and load it into the database by hand  
