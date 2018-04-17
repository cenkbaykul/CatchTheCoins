-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
M = {}

function M.get_screen_widht(self)
	local width = tonumber(sys.get_config("display.width"))
	return width
end

function M.get_screen_height(self)
	local height = tonumber(sys.get_config("display.height"))
	return height
end

function M.get_screensize(self)
	local width = tonumber(sys.get_config("display.width"))
	local height = tonumber(sys.get_config("display.height"))
	local screensize = vmath.vector3(width,height,0)
	return screensize
end
function M.get_random_seed(self)
	local seed = os.time() + (os.clock()*1000000) + math.random(0, 65535)
	return seed
end

return M