1 -- Five-Number Summary

function five_number_summary(data)
  result = {}
  sum = 0
  
  --Get Sample Minimum
  for k,v in ipairs(data) do
      return result[sample_min] = math.min(v)
  end
  
  --Get Lower Quartile
  
  low_q = (#data + 1) / 4
  
  for k,v in ipairs(data) do
      return result[lower_quartile] = data[low_q]
  end
      
  --Get Median
  local t = {}
  for k,v in ipairs(data) do
      if type(v) == 'number' then
        table.insert(t, v)
  end
      
   table.sort(t)
   
   if math.fmod(#t,2) == 0 then
      return (t[#t/2] + t[(#t/2)+1]) / 2
   else
      return t[math.ceil(#t/2)]
   end
      
  --Get Upper Quartile
  upper_q = (#data + 1) * (3/4)
  
  for k,v in ipairs(data) do
      result[upper_quartile] = data[upper_q]
 
  --Get Sample Maximum 
  for k,v in ipairs(data) do 
      return result[sample_max] = math.max(v)
  end
  
  print(result)
 end

2 -- Set (Data Structure)


3 -- Monte Carlo Methods for Pi


4 -- Creating Normally Distributed Data
