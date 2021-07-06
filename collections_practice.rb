def begins_with_r(array)
  array_of_r = []
  array.each do |word|
    array_of_r << word if word.chars.first == 'r'
  end 
  if array_of_r.length == array.length
    return true 
  else 
    return false
  end 
end 
  
def contain_a(array)
  array_of_a = []
  array.each do |word|
    array_of_a << word if word.include?("a")
  end 
  array_of_a
end 
  
def first_wa(array)
  array_of_strings = array.map do |word|
    word.to_s
  end 
  array_of_wa = []
  array_of_strings.each do |word|
    array_of_wa << word if word.include?("wa")
  end 
  array_of_wa[0]
end 

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end 
end 

def count_elements(array)
  array.uniq.map do |word| 
   {:count=>array.count(word)}.merge(word) 
  end 
end 

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]]) 
    end 
  end 
end 

def find_cool(cool)
  new_array = []
  cool.map do |hash|
    hash.values.map do |cool|
      if cool == "cool"
        new_array << hash
      end 
    end 
  end
  new_array.flatten
end 

def organize_schools (hash)
  school_sorted = {}
  hash.each do |school,loc_data|
    loc_data.each do |loc_key,loc|
      if school_sorted.key?(loc)
        school_sorted[loc] << school 
      else
        school_sorted[loc] = [school]
      end
    end
  end
  school_sorted
end


    # {
    #   "flatiron school bk" => {
    #     :location => "NYC"
    #   },
    #   "flatiron school" => {
    #     :location => "NYC"
    #   },
    #   "dev boot camp" => {
    #     :location => "SF"
    #   },
    #   "dev boot camp chicago" => {
    #     :location => "Chicago"
    #   },
    #   "general assembly" => {
    #     :location => "NYC"
    #   },
    #   "Hack Reactor" => {
    #     :location => "SF"
    #   }
    # }
    
  # {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #   "SF"=>["dev boot camp", "Hack Reactor"],
  #   "Chicago"=>["dev boot camp chicago"]}  




