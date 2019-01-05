def nyc_pigeon_organizer(pigeon_data)
  pigeon = {}
  pigeon_data.each do |data, data_array|
    data_array.each do |attribute, names|
      names.each do |name|
        if pigeon.keys.include?(name)
          if pigeon[name].keys.include?(data)
            pigeon[name][data] += ["#{attribute}"]
          else
            pigeon[name][data] = ["#{attribute}"]
          end
        else
          pigeon[name] = {}
          pigeon[name][data] = ["#{attribute}"]
        end
      end
    end
  end
  
  pigeon
end