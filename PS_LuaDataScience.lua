1 -- Five-Number Summary

function five_number_summary(data)
  result = {}
  sum = 0
  
  --Get Sample Minimum
  for k,v in ipairs(data) do
      table.insert(result, sample_min, math.min(v))
  end
  
  --Get Lower Quartile
  
  low_q = (#data + 1) / 4
  
  for k,v in ipairs(data) do
      if k == low_q then
        table.insert(result, lower_quartile, v)
      end
  end
      
  --Get Median
  local t = {}
  for k,v in ipairs(data) do
      if type(v) == 'number' then
        table.insert(t, v)
      end
  end
      
   table.sort(t)
   
   if math.fmod(#t,2) == 0 then
      local median = (t[#t/2] + t[(#t/2)+1]) / 2
   else
      local median = t[math.ceil(#t/2)]
   end
    
   table.insert(result, median, median)
      
  --Get Upper Quartile
  upper_q = (#data + 1) * (3/4)
  
  for k,v in ipairs(data) do
      if k == upper_q then
          table.insert(result, upper_q, v)
      end
  end
 
  --Get Sample Maximum 
  for k,v in ipairs(data) do 
      table.insert(result, sample_max, math.max(v))
  end
  
  --Print Result
  for k, v in ipairs(result) do
      print(k, " = ", v)
  end
 end

2 -- Set (Data Structure)

Set = {}

--Add element to set
function Set:set_add(x)
      return table.insert(Set, x)
end

-- Check if element in Set
function Set:set_check(x)
      local checker = 0
      for k,v in ipairs(set) do
        if v == x then
          checker = checker + 1
        end
      end
      for i in checker do
        if checker > 0 then
          return print("Value is in the set.")
        else
          return print("Value is not in the set.")
        end
      end
  end

-- Make Set
 function Set:make_set(data)
     for k,v in ipairs(data) do
        return table.insert(Set, v)
      end
    end
    
-- Set Union
 function Set:set_union(set1, set2)
     local union = {}
     for k1, v1 in set1 do
        for k2, v2 in set2 do
          table.insert(union, v1)
          table.insert(union, v2)
        end
     end
     return union
end

--Set Intersection
function Set:set_intersection(set1, set2)
    local intersect = {}
    for k1, v1 in set1 do
      for k2, v2 in set2 do
        if v1 == v2 then
          table.insert(intersect, v1)
        end
      end
    end
  return intersect
 end

3 -- Monte Carlo Methods for Pi
function estimate_pi(num_trials)
  x = {}
  y = {}
  for i=1, #num_trials do
      table.insert(x, math.random())
      table.insert(y, math.random())
  end
  r = {}
  inner = 0
  outer = 0
  for k,v in ipairs(x) do
    for j,p in ipairs(y) do
      table.insert(r, v^2 + p^2)
      for a,b in ipairs(r) do
        if b < 1 then
          inner = inner + 1
        else
          outer = outer + 1
        end
    end
   
   pi = 4 * (inner/(inner+outer))
   return print(pi)
 end
    

4 -- Creating Normally Distributed Data
function random_norm(mean, var)
      return  math.sqrt(-2 * var * math.log(math.random())) *
            math.cos(2 * math.pi * math.random()) + mean
end
