return function()
	local Room = Instance.new("Model")
	Room.Name = "Room"

	local Exit = Instance.new("Part")
	Exit.Anchored = true
	Exit.BottomSurface = Enum.SurfaceType.Smooth
	Exit.CFrame = CFrame.new(263.826, -315.5, -106.385)
	Exit.Color = Color3.fromRGB(248, 248, 248)
	Exit.Name = "Exit"
	Exit.Size = Vector3.new(1, 7, 4)
	Exit.TopSurface = Enum.SurfaceType.Smooth
	Exit.Transparency = 0.7
	Exit.Parent = Room

	local Model = Instance.new("Model")
	Model.Parent = Room

	local Entrance = Instance.new("Part")
	Entrance.Anchored = true
	Entrance.BottomSurface = Enum.SurfaceType.Smooth
	Entrance.CFrame = CFrame.new(227.826, -315.5, -106.385)
	Entrance.Color = Color3.fromRGB(248, 248, 248)
	Entrance.Name = "Entrance"
	Entrance.Size = Vector3.new(1, 7, 4)
	Entrance.TopSurface = Enum.SurfaceType.Smooth
	Entrance.Transparency = 0.7
	Entrance.Parent = Room

	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CFrame = CFrame.new(263.826, -314.5, -113.885)
	Part.Color = Color3.fromRGB(140, 140, 140)
	Part.Material = Enum.Material.Concrete
	Part.Size = Vector3.new(1, 9, 11)
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Parent = Model

	local Part2 = Instance.new("Part")
	Part2.Anchored = true
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.CFrame = CFrame.new(246.326, -314.5, -118.885)
	Part2.Color = Color3.fromRGB(140, 140, 140)
	Part2.Material = Enum.Material.Concrete
	Part2.Size = Vector3.new(36, 9, 1)
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part2.Parent = Model

	local Part3 = Instance.new("Part")
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.CFrame = CFrame.new(263.826, -311, -106.385)
	Part3.Color = Color3.fromRGB(140, 140, 140)
	Part3.Material = Enum.Material.Concrete
	Part3.Size = Vector3.new(1, 2, 4)
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.Parent = Model

	local Part4 = Instance.new("Part")
	Part4.Anchored = true
	Part4.BottomSurface = Enum.SurfaceType.Smooth
	Part4.CFrame = CFrame.new(246.326, -314.5, -92.885)
	Part4.Color = Color3.fromRGB(140, 140, 140)
	Part4.Material = Enum.Material.Concrete
	Part4.Size = Vector3.new(36, 9, 1)
	Part4.TopSurface = Enum.SurfaceType.Smooth
	Part4.Parent = Model

	local Part5 = Instance.new("Part")
	Part5.Anchored = true
	Part5.BottomSurface = Enum.SurfaceType.Smooth
	Part5.CFrame = CFrame.new(263.826, -314.5, -98.385)
	Part5.Color = Color3.fromRGB(140, 140, 140)
	Part5.Material = Enum.Material.Concrete
	Part5.Size = Vector3.new(1, 9, 12)
	Part5.TopSurface = Enum.SurfaceType.Smooth
	Part5.Parent = Model

	local Part6 = Instance.new("Part")
	Part6.Anchored = true
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.CFrame = CFrame.new(246.326, -310.5, -105.885)
	Part6.Color = Color3.fromRGB(140, 140, 140)
	Part6.Material = Enum.Material.Concrete
	Part6.Size = Vector3.new(36, 1, 27)
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.Parent = Model

	local Part7 = Instance.new("Part")
	Part7.Anchored = true
	Part7.BottomSurface = Enum.SurfaceType.Smooth
	Part7.CFrame = CFrame.new(246.326, -319.5, -105.885)
	Part7.Material = Enum.Material.WoodPlanks
	Part7.Size = Vector3.new(36, 1, 27)
	Part7.TopSurface = Enum.SurfaceType.Smooth
	Part7.Parent = Model
	
	local Nodes = Instance.new("Model")
	Nodes.Name = "Nodes"
	Nodes.Parent = Room

	local Object2 = Instance.new("Part")
	Object2.BottomSurface = Enum.SurfaceType.Smooth
	Object2.CFrame = CFrame.new(101, -21, -162)
	Object2.Name = "2"
	Object2.Size = Vector3.new(1, 1, 1)
	Object2.TopSurface = Enum.SurfaceType.Smooth
	Object2.Parent = Nodes

	local Object1 = Instance.new("Part")
	Object1.BottomSurface = Enum.SurfaceType.Smooth
	Object1.CFrame = CFrame.new(70, -21, -162)
	Object1.Name = "1"
	Object1.Size = Vector3.new(1, 1, 1)
	Object1.TopSurface = Enum.SurfaceType.Smooth
	Object1.Parent = Nodes

	return Room
end
