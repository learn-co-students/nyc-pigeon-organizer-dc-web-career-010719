def nyc_pigeon_organizer(data)
  # write your code here!
  organized_hash = {}
  data.each do |attributes, info|
    info.each do |specs, pidgeons|
      pidgeons.each do |name|
        organized_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  organized_hash.each do |name, org_trait_key|            #iterate organized_hash 1st level e.g. names, traits
    org_trait_key.each do |org_trait, org_value|          #iterate organized_hash 2nd level e.g. traits => []
      data.each do |data_traits, trait_hash|              #iterate data 1st level e.g. data_traits, trait_hash
        trait_hash.each do |trait_key, pidgeons|          #iterate data 2nd level e.g. trait_key, pidgeons w/trait
          pidgeons.each do |names|                        #iterate pidgeon names in trait array
            if names == name && org_trait == data_traits  #if data and org_hash names and data_trait and org_trait equal
              organized_hash[name][org_trait] << trait_key.to_s  #assign
            end
          end
        end
      end
    end
  end
  organized_hash
end
