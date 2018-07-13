
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
	return os.clock() + math.sin(0.5) / math.random()
end

return M
