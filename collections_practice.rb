

def begins_with_r(arr)
  arr.all? { |word| word[0] == 'r'}

end


def contain_a(arr)
  arr.select { |word| word.include?("a")}
end


def first_wa(arr)
  arr.find { |word| word[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.delete_if { |word| !(word.is_a? String)}
end

def count_elements(arr)
  arr.group_by(&:itself).map do |k,v|
    k.merge(count: v.length)
  end
end

def merge_data(keys, data)
  keys.each do |item|
    data.each do |value|
      item.merge!(value[item[:first_name]])
    end
  end
end

def find_cool(hash)
  hash.each do |value|
    if value[:temperature] == "cool"
      return [value]
    end
  end
end

def organize_schools(schools)
  sorted = {}
  schools.each do |key, value|
    value.each do |loc_key, location|
      if sorted.key?(location)
        sorted[location] << key
      else
        sorted[location] = [key]
      end
    end
  end
  sorted
end
