def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |data, pigeon_array|
    pigeon_array.each do |attribute, names|
      names.each do |name|
        if pigeon_list.keys.include?(name)
          if pigeon_list[name].keys.include?(data)
            pigeon_list[name][data] += ["#{attribute}"]
          else
            pigeon_list[name][data] = ["#{attribute}"]
          end
        else
          pigeon_list[name] = {}
          pigeon_list[name][data] = ["#{attribute}"]
        end
      end
    end
  end

  pigeon_list
end