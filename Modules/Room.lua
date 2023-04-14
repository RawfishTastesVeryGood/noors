local HttpService = game:GetService("HttpService");
local InsertService = game:GetService("InsertService");
local ServerStorage = game:GetService("ServerStorage");
local tweenService = game:GetService("TweenService");

local roomsFolder = workspace["Rooms"];

local PlayersModule = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RoofashV2/noors/main/noors/Modules/Players.lua"))();
local gameSettings = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RoofashV2/noors/main/noors/Modules/GameSettings.lua"))();
local RoomData = loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/RoofashV2/noors/main/noors/Modules/RoomData.lua"))();

local filtered = false;
local roomDestruction = true;

local Room = {};
local filters = {};
local currentRoom = roomsFolder["0"];
local currentRoomNumber = 0;
local partXaddition = 0;
local reversedDirection = false;

local distanceTypes = PlayersModule.distanceTypes;

function getRoom(roomName)
	local url = "https://raw.githubusercontent.com/RoofashV2/noors/main/noors/Modules/Rooms/" .. roomName .. ".lua"
	local func = loadstring(HttpService:GetAsync(url))()
	local room = func()
	local nodes = room:FindFirstChild("Nodes")
	if nodes then
		for _, node in pairs(nodes:GetChildren()) do
			node.Anchored = true
			node.CanCollide = false
			node.Transparency = 0.5
		end
	else
		warn(roomName .. " doesn't have nodes, doesn't mean it won't run.")
	end
	return room
end

function Room:ToggleDestruction()
	roomDestruction = not roomDestruction
end

function Room:Random()
	local seed = ((tick()*1000/tick()/wait())*math.random(2,10))*10000000
	return Random.new(seed)
end

function Room:Generate()
	currentRoomNumber = currentRoomNumber + 1

	local newRoom = nil
	local random = Room:Random()
	local roomList = Room:GetRoomList()
	local totalChance = RoomData:getTotalChance(roomList)
	local randomChance = random:NextInteger(1, totalChance)
	local currentChance = 0

	for _room, data in pairs(roomList) do
		if currentChance <= randomChance and currentChance + data.Chance >= randomChance and newRoom == nil then
			local selectedRoom = getRoom(_room)
			selectedRoom.Parent = roomsFolder
			newRoom = selectedRoom:Clone()
			if filtered == false then
				if data["Direction"] then
					table.insert(filters, data["Direction"])
				elseif data["HasStairs"] then
					table.insert(filters, "stairs")
				end
			else
				filtered = false
			end
		else
			currentChance = currentChance + data.Chance
		end
	end

	newRoom.PrimaryPart = newRoom:WaitForChild("Entrance")
	newRoom:PivotTo(currentRoom.Exit.CFrame)
	newRoom.Name = tostring(currentRoomNumber)
	newRoom.Parent = roomsFolder

	for _, obj in pairs(newRoom:GetChildren()) do
		if obj:IsA("BasePart") then
			obj.Transparency = 1
		end
	end

	currentRoom = newRoom

	Room:Hook(newRoom)
	Room:QueueForDestruction(newRoom)

	return newRoom
end

function Room:CreateDoor(room, position)
	local Door = Instance.new("Model")
	Door.Name = "Door"
	Door.Parent = room

	local DoorPart = Instance.new("Part")
	DoorPart.BottomSurface = Enum.SurfaceType.Smooth
	DoorPart.CFrame = CFrame.new(16.475, -0.5, -0.5)
	DoorPart.Color = Color3.fromRGB(248, 248, 248)
	DoorPart.Name = "DoorPart"
	DoorPart.Size = Vector3.new(1, 7, 4)
	DoorPart.TopSurface = Enum.SurfaceType.Smooth
	DoorPart.Parent = Door
	Door.PrimaryPart = DoorPart

	local Hinge = Instance.new("Part")
	Hinge.Anchored = true
	Hinge.BottomSurface = Enum.SurfaceType.Smooth
	Hinge.CFrame = CFrame.new(16.475, -0.5, 1)
	Hinge.Color = Color3.fromRGB(255, 0, 0)
	Hinge.Name = "Hinge"
	Hinge.Size = Vector3.new(1, 7, 1)
	Hinge.TopSurface = Enum.SurfaceType.Smooth
	Hinge.Transparency = 1
	Hinge.Parent = Door

	local Nameplate = Instance.new("Part")
	Nameplate.BottomSurface = Enum.SurfaceType.Smooth
	Nameplate.CFrame = CFrame.new(16.475, 1.5, -0.5)
	Nameplate.Name = "Nameplate"
	Nameplate.Size = Vector3.new(1.1, 1, 2)
	Nameplate.TopSurface = Enum.SurfaceType.Smooth
	Nameplate.Parent = DoorPart

	local WeldConstraint = Instance.new("WeldConstraint")
	WeldConstraint.Part0 = DoorPart
	WeldConstraint.Part1 = Hinge
	WeldConstraint.Parent = DoorPart

	local Unlock = Instance.new("Sound")
	Unlock.Name = "Unlock"
	Unlock.SoundId = "rbxassetid://9116323566"
	Unlock.Parent = DoorPart

	local Open = Instance.new("Sound")
	Open.Name = "Open"
	Open.SoundId = "rbxassetid://212709219"
	Open.Parent = DoorPart

	local WeldConstraint2 = Instance.new("WeldConstraint")
	WeldConstraint2.Part0 = Nameplate
	WeldConstraint2.Part1 = DoorPart
	WeldConstraint2.Parent = Nameplate

	Door:PivotTo(position.CFrame)

	return Door
end

function Room:HookDoor(door)
	local hinge = door:WaitForChild("Hinge")
	local doorPart = door:WaitForChild("DoorPart")
	local nameplate = doorPart:WaitForChild("Nameplate")

	for _, side in pairs({"Left", "Right"}) do
		local SurfaceGui = Instance.new("SurfaceGui")
		SurfaceGui.ClipsDescendants = true
		SurfaceGui.Face = Enum.NormalId.Left
		SurfaceGui.LightInfluence = 1
		SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		SurfaceGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
		SurfaceGui.PixelsPerStud = 50

		local TextLabel = Instance.new("TextLabel")
		TextLabel.BackgroundTransparency = 1
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.TextSize = 54
		TextLabel.Parent = SurfaceGui
		
		SurfaceGui.Parent = nameplate
		SurfaceGui.Face = side
		TextLabel.Text = tostring(currentRoomNumber + 1)
	end

	--make it pre generate without causing any infinite loops
	-- so easy u know

	PlayersModule:onPlayerDistance(doorPart, gameSettings.doorOpenDistance, distanceTypes.Close, function()
		Room:Generate()

		doorPart.CanCollide = false
		nameplate.CanCollide = false
		doorPart.Open:Play()
		local tween = tweenService:Create(
			hinge,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), 
			{
				CFrame = hinge.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(-math.random(90, 100)), 0)
			}
		)
		tween:Play()
	end)
end

function Room:QueueForDestruction(room)
	if not roomDestruction then
		return
	end
	
	local func = {}

	func.Connection = roomsFolder.ChildAdded:Connect(function(obj)
		if tonumber(obj.Name) == tonumber(room.Name) + 7 then
			local nextRoom = roomsFolder:FindFirstChild(tostring(tonumber(room.Name) + 1))
			room.Door:Destroy()
			Room:CreateDoor(room, room.Exit)
			Room:CreateDoor(nextRoom, nextRoom.Entrance)

			delay(3, function()
				room:Destroy()
			end)

			func:Disconnect()
		end
	end)

	function func:Disconnect()
		func.Connection:Disconnect()
		func = nil
	end
end

function Room:GetRoomList()
	if #filters ~= 0 then
		local data = RoomData:Filter(filters)
		filters = {}
		filtered = true
		return data
	end

	return RoomData.Rooms
end

function Room:Hook(room)
	local exitDoor = Room:CreateDoor(room, room.Exit)
	Room:HookDoor(exitDoor)
	local entrance = room:FindFirstChild("Entrance")
	local exit = room:FindFirstChild("Exit")
	if entrance then
		entrance.CanCollide = false
	end
	if exit then
		exit.CanCollide = false
	end
end

return Room
