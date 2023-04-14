--// SyntaxCreator
--\\ 2023-02-25

local debug = false;

return function()
    local ServerStorage = game:GetService("ServerStorage");
    local playerService = game:GetService("Players");
    local runService = game:GetService("RunService");

    local roomsFolder = Instance.new("Folder", workspace)
    roomsFolder.Name = "Rooms"

    local PlayersModule = require(script.Players)
    local RoomModule = require(script.Room)

    if debug or runService:IsStudio() == false then
	    repeat wait() until #playerService:GetPlayers() > 0
	    PlayersModule:waitUntilCharLoaded()
    end

    local currentRoom = roomsFolder["0"]
    RoomModule:Hook(currentRoom)
    RoomModule:QueueForDestruction(currentRoom)
end
