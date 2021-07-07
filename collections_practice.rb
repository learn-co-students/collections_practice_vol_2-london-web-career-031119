# your code goes here
def begins_with_r(array)
array.all?{|element| element[0] == "r"}
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?("a")
      a_array.push(word)
    end 
  end
  a_array
end 

def first_wa(array)
  array.collect do |word|
    if word.to_s.start_with?("wa")
      return word
    end 
  end 
end 

def remove_non_strings(array)
  new_array = []
  array.collect do |word|
    if word.class == String
      new_array.push(word)
end 
end 
new_array
end

def count_elements(array)
 new_hash = {}
  new_array = []
  array.each do |elements|
    elements.each do |key, value|
       new_array.push({:count => array.count(elements), key => value})
  end
end
  new_array.uniq
end 

def merge_data(data1,data2)
merged_data = []
data1.each do |things|
data2.each do |hash|
hash.collect do |name, attributes|
if things.values[0]==name
      merged_data << things.merge(attributes)
    end 
  end 
  end
end 
merged_data
end 

def find_cool(collection)
cool_array = []
collection.each do |hashes|
  hashes.collect do |key, value| 
    if value == "cool" 
      cool_array << hashes
    end 
end 
end
cool_array
end 

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, hash|
    hash.each {|location| organized_schools[location[1]] = []}
   end
   schools.each { |school, hash| organized_schools[hash.values[0]] << school }
 organized_schools
end 

  