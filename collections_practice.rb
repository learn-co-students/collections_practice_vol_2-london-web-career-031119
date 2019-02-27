require 'pry'

# your code goes here
def begins_with_r(array)
  array.all? { |element| element[0] == "r" }
end

def contain_a(array)
  array.select { |element| element.include? "a" }
end

def first_wa(array)
  array.find { |element| element[0] == "w" && element[1] == "a"}
end

def remove_non_strings(array)
  #remove anything that's not a string from an array
  array.reject { |element| element.class != String }
end

def count_elements(array)
  # make a new array without duplicates
  no_dupes = array.uniq

  # now for each element of no_dupes, count how much it appears
  # in the original array and add the count to it
  no_dupes.each { |element|
    element[:count] = array.count(element)
  }

  no_dupes

end


def merge_data(keys, data)

  merged = []

  keys.each { |keys_hash|
    data.each { |data_hash|
      if data_hash.has_key?(keys_hash[:first_name])
        merged << keys_hash.merge(data_hash[keys_hash[:first_name]])
      end
    }
  }

  merged

end


def find_cool(array)
  cool_hashes = []
  array.each { |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  }
  cool_hashes
end

def organize_schools(schools_hash)
  organized = {}
  schools_hash.each { |school, loc_hash|
    loc_string = loc_hash[:location]
    if !organized.has_key?(loc_string)
      organized[loc_string] = [school]
    else
      organized[loc_string] << school
    end
  }

  organized

end
