require 'foursquare2'
class FoursquareImporter
  def self.import_pois_and_categories
    client = Foursquare2::Client.new(
      client_id:     'UJNQKGM2GJRGK2UFRBTGRXA2NBLJ1KK11NFNYQOYQYPNX1HT',
      client_secret: 'QUPFVWASI4YGMUH04NZ3SVT0G0URX52WDIWBCFUY5MBGYDVG',
      api_version:   Date.today.strftime('%Y%m%d')
    )

    [
      'Oxford Circus, London', 
      'City of Westminster, London', 
      'Tower Bridge, London'
    ].each do |address|
      puts "\n#{address}\n"
      pois = client.search_venues(near: address, limit: 200, ).first.last
      pois.map do |poi|
        begin
          next unless poi[:categories].any?
          category_name = poi[:categories].first[:shortName] 
          category = Category.find_or_create_by!(name: category_name)
          db_poi = Poi.create_with({
            latitude: poi[:location][:lat], 
            longitude: poi[:location][:lng], 
            category_id: category.id
          }).find_or_create_by!(name: poi[:name])
          puts "Poi \"#{db_poi.name}\" created in category \"#{db_poi.category.name}\""
        rescue => ex
          puts "\nError #{ex} with #{poi}\n"
        end
      end
    end
  end
end