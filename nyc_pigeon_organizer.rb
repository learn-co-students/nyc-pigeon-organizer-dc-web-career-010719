require 'pry'

def nyc_pigeon_organizer(data)
  num = 0
  i = 0
  new_hash = {}

  data.each do |attribute, list|
    list.each do |option, names|
      names.each do |name|
        check = new_hash[name]
          if check == nil
            new_hash.store(name, attribute => [option.to_s])
          elsif check != nil
            num = new_hash[name].keys.length
            i = num - 1
          if check.keys[i] == attribute
            array = []
            array << check.values[i]
            array << [option.to_s]
            new_hash[name][attribute] = array.flatten
          elsif check.keys[i] != attribute
            array = []
            array << check
            array << {attribute => [option.to_s]}
            new_hash[name].store(array[1].keys[0], array[1].values[0])
          end
        end
      end
    end
  end
  new_hash
end
