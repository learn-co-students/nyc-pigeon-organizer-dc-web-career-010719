require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |trait,specifics|

    # puts "#{trait}: #{specifics}"
    # returns color: {:purple=>["Theo", "Peter Jr.", "Lucky"],
    #   :grey=>["Theo", "Peter Jr.", "Ms. K"],
    #   :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
    #   :brown=>["Queenie", "Alex"]}

    specifics.each do |element,name_array|

      # puts "#{element}: #{name_array}"
      # returns "purple: ["Theo", "Peter Jr.", "Lucky"]"
      name_array.each do |name|
        # puts "#{name}"
        # returns "Theo"

      if pigeon_list[name].nil?
        pigeon_list[name] = {}
      end

      if pigeon_list[name][trait].nil?
        pigeon_list[name][trait] = []
      end

      pigeon_list[name][trait] << element.to_s
      end
    end
  end
  return pigeon_list
  # binging.pry
end

# Better way
#
# def nyc_pigeon_organizer(data)
#
#   pigeon_list = {}
#   data.each do |trait,specifics|
#     specifics.each do |element,name_array|
#       name_array.each do |name|
#         pigeon_list[name] ||= {}
#         pigeon_list[name][trait] ||= []
#         pigeon_list[name][trait] << element.to_s
#       end
#     end
#   end
#   return pigeon_list
#   # binging.pry
# end
