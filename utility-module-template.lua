--
-- Utility Module
--

local M = {}
-- include require statements here

--
-- Private variables
--

local str

--
-- Private functions
--

local privFn1 = function()
  str = "Test"
end

local publicFn1 = function()
  privFn1()
  print( str .. " 1" )
end

local publicFn2 = function()
  privFn1()
  print( str .. " 2" )
end

--
-- Expose module API
--

M.test1 = publicFn1
M.test2 = publicFn2
return M
