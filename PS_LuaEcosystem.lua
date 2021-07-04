--Problem 1
pl.array2d.swap_rows(t, i1, i2)
--Swaps two rows of an array
--Inputs: Given array 't', you can swap row1=i1 (input as 'int') with row2=i2 (input as 'int')

pl.array2d.remove_col(t, j)
--Removes a column from an array
--Inputs: Given array 't', remove column 'j' (column index as 'int') from the array

pl.array2d.forall(t, row_op, end_row_op, i1, j1, i2, j2)
--Perform an operation for all values in a 2D array
--Inputs: Given 2D array 't', perform 'row_op' (function) on each value, function 'end_row_op' to call at end of each row, start row and col 'i1' 'j1', end row and col 'i2' 'j2'

pl.comprehension
--list comprehension implemented in Lua
--Ex
local C = require 'pl.comprehension' . new()

C ('x^3 for x=1,3') ()
==> {1, 8, 27}

pl.Set:difference(self, set)
--new set with elements in the set that are not in the other 
--Ex
Set = require 'pl.Set'
set_one = Set{'one', 'two'}
set_two = Set{'two', 'one', 'three'}

> = Set:difference(set_one, set_two)
[three]

--Also can be called with the following:
> = set_one-set_two
[three]

--Problem 2

--Problem 3
matrix = require 'pl.array2d'
two_d_matrix = matrix.new(2,2,math.random(0,1))

--Problem 4
--vector.lua file
local Vector = {}
do
  local meta = {
    _metatable = "Vector metatable",
    _DESCRIPTION = "2D Vectors"
    }
  
  meta.__index = meta
  
  function meta:__add(v)
    return Vector(self.i + v.i, self.j + v.j)
  end
  
  function meta:__mul(v)
    return self.i*v.i + self.j*v.j
  end
  
  function meta:__tostring()
    return ("<%g, %g>"):format(self.i, self.j)
  end
  
  function meta:magnitude()
    return math.sqrt(self*self)
  end
  
  setmetatable( Vector, {
      __call = function( V, i, j ) return setmetatable( {i=i, j=j}, meta ) end
  } )
end

Vector.__index = Vector

return Vector

local V = require 'vector'
x = (3)
y = (2*x + 3)

--Linearly Regressing using: lua-users.org/wiki/SimpleFit
local matrix = require 'matrix'

linreg = {}
function linreg.linear(a, b)
  local a_vals = {}
  local b_vals = {}
  
  for i,v in ipairs(a) do
    a_vals[i] = {1, v}
    b_vals[i] = {b[i]}
  end
  
  local A = matrix:new(a_vals)
  local Y = matrix:new(b_vals)
  
  local ATA = matrix.mul(matrix.transpose(A), A)
  local ATY = matrix.mul(matrix.transpose(A), Y)
  
  local ATAATY = matrix.concath(ATA, ATY)
  
  return getresults(ATAATY)
end

print(linreg.linear(x,y))

--Problem 5

--Problem 6

