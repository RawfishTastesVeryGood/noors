-- c/loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/RoofashV2/noors/main/noors/NewMain.lua"))()
--// SyntaxCreator
--\\ 2023-02-25

local debug = false;

local HttpService = game:GetService("HttpService")
local ServerStorage = game:GetService("ServerStorage");
local playerService = game:GetService("Players");
local runService = game:GetService("RunService");

local roomsFolder = Instance.new("Folder", workspace)
roomsFolder.Name = "Rooms"

local MakeSpawnRoom = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RawfishTastesVeryGood/noors/main/Modules/Rooms/Spawn.lua"))()
local PlayersModule = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RawfishTastesVeryGood/noors/main/Modules/Players.lua"))()

if debug or runService:IsStudio() == false then
	repeat wait() until #playerService:GetPlayers() > 0
	PlayersModule:waitUntilCharLoaded()
end

local currentRoom = MakeSpawnRoom()
currentRoom.Parent = roomsFolder
currentRoom.Name = "0"
local RoomModule = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RawfishTastesVeryGood/noors/main/Modules/Room.lua"))()
RoomModule:Hook(currentRoom)
RoomModule:QueueForDestruction(currentRoom)
