
M = {}

function M.get_screen_widht(self)
	return tonumber(sys.get_config("display.width"))
end

function M.get_screen_height()
	return tonumber(sys.get_config("display.height"))
end

function M.get_screensize()
	local width = tonumber(sys.get_config("display.width"))
	local height = tonumber(sys.get_config("display.height"))
	return vmath.vector3(width, height, 0)
end

function M.get_random_seed()
	math.randomseed(os.time())
	math.random(); math.random(); math.random(); math.random(); math.random()
end

return M
