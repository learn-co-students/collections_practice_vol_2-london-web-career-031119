# your code goes here
r = ["ruby", "apec", "rails"]
 def begins_with_r(array)  #This is all code without using enumberable methods
i = 0
  while i < array.length
    if array[i][0] != "r" # it will loop until it finds
      return false
    end
    i+=1
  end
  return true
end

def contain_a(array)
  array.delete_if do
    |element|
    element.include?("a") == false
      end
  end

def first_wa(arrays)
  #gonna use find
  arrays.find do
    |element|
    element[0..1]=="wa"
  end
end

def remove_non_strings(arrays)
#using delete_if to remove any elements that do no satiusfy the condiion
arrays.delete_if do
  |element|
  element.class != (String)
end
end


def count_elements(array)
array.uniq.each {|i| count = 0 #unique fetches unique elments.
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

#([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

 def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}}
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end



#the data stored in hash is associate , each individual key points to data related to that key
#TO ADD
