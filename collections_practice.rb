# your code goes here
require "pry"
def begins_with_r(array)
  array.each do |string|
    if string.split(//).first != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select { |e| e.include? ?a  }
end

def first_wa(array)
  array.select { |e| e.slice(0,2) == "wa" }.shift
end

def remove_non_strings(array)
  array.select { |e| e.is_a? String}
end

def count_elements(array)
  count = []
  array.uniq.each do |e|
    element = e
    element[:count] = array.count(e)
    count << element
  end
  count
end

def merge_data(keys, data)
  array = []
  keys.each do |key|
    data.each do |set|
      set.keys.include?(key[:first_name]) ? array << key.merge(set[key[:first_name]]) : false
    end
  end
  array
end

def find_cool(array)
  list = []
  array.each do |e|
      e.each do |key, value|
        value == "cool" ? list << e : false
      end
  end
  list
end

def organize_schools(schools)
  locations = []
  schools.each { |school, data| locations << data[:location] }
  locations.uniq!
  list = {}
  locations.each { |key| list[key] = [] }
  schools.each { |key, data| list[data[:location]] << key }
  list
end
