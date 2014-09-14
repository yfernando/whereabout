namespace :importer do
  desc "Imports pois and categories using the foursquare API"
  task :import_data_from_foursquare => :environment do
    require 'foursquare_importer'
    FoursquareImporter.import_pois_and_categories
  end
end