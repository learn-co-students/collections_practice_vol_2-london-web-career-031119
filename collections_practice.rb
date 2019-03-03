# your code goes here
actors = ["Robert Downey Jr", "Rupert Grint", "Idris Elba"]

def begins_with_r(array)
     i = 0
   while i < array.length
   all = array.all?
   if array[i].start_with?('R')
     puts true
     i += 1
   else
     puts false
     i += 1
   end
 end
 end
 
 begins_with_r(actors)
