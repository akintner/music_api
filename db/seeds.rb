# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

def empty_tables
  puts 'Start emptying all database tables. Be patient, might take a while...'
  Album.destroy_all
  puts 'Finished emptying all database tables!'
end

def import_albums_csv
  puts 'Starting Albums CSV file import...'
  ActiveRecord::Base.connection.reset_pk_sequence!(:albums)
  csv_data = File.read('db/albums.csv').scrub
  csv_text = CSV.parse(csv_data, :headers=> true)
  csv_text.each do |row|
    Album.create!(title: row['album'],
                  artist: row['artist'],
                  genre: row['genre'],
                  year: row['year'])
  end
  puts 'Albums CSV import completed!'
end
