def begins_with_r(arr)
  arr.all? {|x| x.start_with? "r"}
end

def contain_a(arr)
  arr.select {|x| x.include? "a"}
end

def first_wa(arr)
 arr = arr.grep(String)
 arr.find {|x| x.start_with?"wa"}
end

def remove_non_strings(arr)
  arr.grep(String)
end

def count_elements(arr)
  count = Hash.new(0)
  arr.each {|x| count[x] += 1}
  count.map { |key, value| ":count => #{value}, #{key}" }.join(', ')
end
