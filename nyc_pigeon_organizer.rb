require "pry"

def nyc_pigeon_organizer(data)
  pigeons = []
  data.values.each do |hash|
    pigeons << hash.values
  end
  pigeon_list = {}
  pigeons.flatten.uniq.each do |pigeon|
    trait_hash = {}
    data.each do |trait|
      adj_array = []
      trait[1].each do |adj|
        if adj[1].include?(pigeon)
          adj_array << adj[0].to_s
        end
        trait_hash[trait[0]] = adj_array
      end
    end
    pigeon_list[pigeon] = trait_hash
  end
  pigeon_list
end
