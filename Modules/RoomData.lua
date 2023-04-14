local roomData = {}

function roomData:getTotalChance(list)
	local chance = 0
	for k, v in pairs(list) do
		chance = chance + v.Chance
	end
	return chance
end

function roomData:Filter(filters)
	assert(type(filters) == "table", "Filters require a table, got " .. type(filters) .. ".")
	
	local filterList = {
		["stairs"] = "HasStairs",
		["left"] = function(data)
			if data.Direction == "Left" or data.Direction == nil then
				return true
			end
			return false
		end,
		["right"] = function(data)
			if data.Direction == "Right" or data.Direction == nil then
				return true
			end
			return false
		end,
	}
	local clone = table.clone(roomData.Rooms)

	for _, filter in pairs(filters) do
		filter = filter:lower()
		local currentFilter = filterList[filter]
		assert(currentFilter, filter .. " is not a valid filter")
		for room, data in pairs(clone) do
			if type(currentFilter) == "function" then
				if currentFilter(data) then
					clone[room] = nil
				end
			else
				if data[currentFilter] ~= nil then
					clone[room] = nil
				end
			end
		end
	end
	
	return clone
end

roomData.Rooms = {
	["Long"] = {
		["Chance"] = 50,
	},

	["Stairs"] = {
		["HasStairs"] = true,
		["Chance"] = 5,
	},

	["Room"] = {
		["Chance"] = 100,
	},
	
	["Left"] = {
		["Chance"] = 20,
		["Direction"] = "Left",
	},
	
	["Right"] = {
		["Chance"] = 20,
		["Direction"] = "Right",
	}

}

return roomData
