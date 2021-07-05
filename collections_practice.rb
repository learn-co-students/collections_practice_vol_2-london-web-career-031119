
require 'pry'

def begins_with_r(list)
list.all? do |word|
   word[0].include? "r"
end
end

def contain_a(list)
list.select do |word|
word.include? "a"
end
end

def first_wa(list)
  list.find do |word|
    word[0].include? "w" and word[1].include? "a"
  end
end

def remove_non_strings(list)
  list.delete_if do |word|
    word.class != "s".class
end
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end
# test = [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
# p test[1][:count]

#value =  "blake"
        # "blake"
        # "ashley"

#name =
# {:name=>"blake"}
# {:name=>"blake"}
# {:name=>"ashley"}

#  p count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
# # [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(arrays)
  new = []
  new_hash = {}
  arrays.each do |hashes|
if hashes[:temperature] == "cool"
  new_hash[:name] = hashes[:name]
  new_hash[:temperature] = hashes[:temperature]
  # binding.pry

end

end
new << new_hash
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
