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



3 -- Monte Carlo Methods for Pi
function estimate_pi(num_trials)
  plot = {}
  for i=1, #num_trials do
      table.insert(plot, math.random(), math.random())
  end
  local center_point {}
  center_point[0.5] = 0.5
  for k,v in ipairs(plot) do
    if 
end

4 -- Creating Normally Distributed Data
