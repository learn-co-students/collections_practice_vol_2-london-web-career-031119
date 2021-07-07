# your code goes here
def begins_with_r(arr)
  arr.all? do |x|
    x[0] == "r"
  end
end

def contain_a(arr)
  arr.select do |x|
    x.include?("a")
  end
end

def first_wa(arr)
  arr.find do |x|
    x[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if do |obj|
    !(obj.is_a? String)
  end
end

def count_elements(arr)
  arr.group_by(&:itself).map do |k, v|
    k.merge(count: v.length)
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |i|
    data.first.map do |k,v|
      if i.values[0] == k then merged << i.merge(v)
      end
    end
  end
  merged
end

def find_cool(arr)
    arr.select do |i|
      i.any? do |key, value|
        value == "cool"
      end
    end
end

def organize_schools(schools)
  output = {}
  schools.each do |key, location_hash|
    location_hash.each do |k, location|
      if !output.has_key?(location)
        output[location] = [key]
      elsif output.has_key?(location)
        output[location] << key
      end
    end
  end
  output
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect do |k,v|
      locations_hash[v[:location]] = []
    end
    locations_hash.each do |k,v|
      schools.each do |k1,v1|
        if k == v1[:location]
          then v << k1
        end
      end
    end
end
