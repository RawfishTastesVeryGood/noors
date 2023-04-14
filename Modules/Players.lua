local playerService = game:GetService("Players")
local PlayersModule = {}

function PlayersModule:onPlayerDistance(...)
	local format = {
		"userdata",
		"number",
		"string",
		"function"
	}

	local data = {...}
	for index, formatType in pairs(format) do
		if type(data[index]) ~= formatType then
			error("onPlayerDistance :: Invalid format type. required format: {" .. table.concat(format, ", ") .. "}.\nGot: {" .. table.concat(data, ", ") .. "}")
			return nil
		end
	end

	local part, distance, distanceType, func = unpack({...})

	local playerDistances = {}
	local threads = {}
	local closeFunc = false

	local disconnect = function()
		closeFunc = true
		func()
		for _, thread in pairs(threads) do
			coroutine.close(thread)
		end
	end

	for _, player in pairs(playerService:GetPlayers()) do
		playerDistances[player] = math.huge
		local character = player.Character
		if character ~= nil then
			local root = character.HumanoidRootPart
			local humanoid = character.Humanoid
			
			local thread = coroutine.wrap(function()
				while wait() do
					if root == nil or humanoid == nil then
						break
					end
					
					playerDistances[player] = (part.Position - root.Position).Magnitude
				end
			end)()
			
			table.insert(threads, thread)
		else
			warn("Error with getting player " .. player.Name .. "'s character")
		end
	end

	spawn(function()
		repeat 
			if closeFunc == true then
				break
			end

			for player, playerDistance in pairs(playerDistances) do
				if distanceType == PlayersModule.distanceTypes["Far"] then
					if playerDistance >= distance then
						disconnect()
						break
					end
				elseif distanceType == PlayersModule.distanceTypes["Close"] then
					if playerDistance <= distance then
						disconnect()
						break
					end
				end
			end
			
			wait()
		until closeFunc == true 
	end)
end

function PlayersModule:waitUntilCharLoaded()
	for _, player in pairs(playerService:GetPlayers()) do
		local character = player.Character
		if character == nil then
			repeat wait() until player.Character ~= nil
			character = player.Character
		end
		repeat wait() until character:FindFirstChild("HumanoidRootPart")
	end
end

PlayersModule.distanceTypes = {
	["Far"] = "far",
	["Close"] = "close"
}

return PlayersModule