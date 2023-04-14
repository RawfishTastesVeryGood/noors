return function()
	local Stairs = Instance.new("Model")
	Stairs.Name = "Stairs"

	local Room = Instance.new("Model")
	Room.Name = "Room"
	Room.Parent = Stairs

	local Entrance = Instance.new("Part")
	Entrance.Anchored = true
	Entrance.BottomSurface = Enum.SurfaceType.Smooth
	Entrance.CFrame = CFrame.new(225.826, -315.5, -135.385)
	Entrance.Color = Color3.fromRGB(248, 248, 248)
	Entrance.Name = "Entrance"
	Entrance.Size = Vector3.new(1, 7, 4)
	Entrance.TopSurface = Enum.SurfaceType.Smooth
	Entrance.Transparency = 0.7
	Entrance.Parent = Stairs

	local Exit = Instance.new("Part")
	Exit.Anchored = true
	Exit.BottomSurface = Enum.SurfaceType.Smooth
	Exit.CFrame = CFrame.new(261.826, -297.5, -135.385)
	Exit.Color = Color3.fromRGB(248, 248, 248)
	Exit.Name = "Exit"
	Exit.Size = Vector3.new(1, 7, 4)
	Exit.TopSurface = Enum.SurfaceType.Smooth
	Exit.Transparency = 0.7
	Exit.Parent = Stairs

	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CFrame = CFrame.new(232.326, -319.5, -135.385)
	Part.Material = Enum.Material.WoodPlanks
	Part.Size = Vector3.new(12, 1, 14)
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Parent = Room

	local Part2 = Instance.new("Part")
	Part2.Anchored = true
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.CFrame = CFrame.new(230.326, -308.5, -135.885)
	Part2.Color = Color3.fromRGB(140, 140, 140)
	Part2.Material = Enum.Material.Concrete
	Part2.Size = Vector3.new(7, 1, 15)
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part2.Parent = Room

	local Wedge = Instance.new("WedgePart")
	Wedge.Anchored = true
	Wedge.BottomSurface = Enum.SurfaceType.Smooth
	Wedge.CFrame = CFrame.new(242.08, -299.50, -135--[[685]])
	Wedge.CFrame = Wedge.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-180), math.rad(-90), 0)
	Wedge.Color = Color3.fromRGB(140, 140, 140)
	Wedge.Material = Enum.Material.Concrete
	Wedge.Size = Vector3.new(13.8, 19, 16.5)
	Wedge.Parent = Room

	local Part3 = Instance.new("Part")
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.CFrame = CFrame.new(244.326, -305, -128.885)
	Part3.Color = Color3.fromRGB(140, 140, 140)
	Part3.Material = Enum.Material.Concrete
	Part3.Size = Vector3.new(36, 28, 1)
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.Parent = Room

	local Part4 = Instance.new("Part")
	Part4.Anchored = true
	Part4.BottomSurface = Enum.SurfaceType.Smooth
	Part4.CFrame = CFrame.new(257.576, -301.5, -136.385)
	Part4.Material = Enum.Material.WoodPlanks
	Part4.Size = Vector3.new(9.5, 1, 13)
	Part4.TopSurface = Enum.SurfaceType.Smooth
	Part4.Parent = Room

	local Part5 = Instance.new("Part")
	Part5.Anchored = true
	Part5.BottomSurface = Enum.SurfaceType.Smooth
	Part5.CFrame = CFrame.new(261.826, -293, -135.385)
	Part5.Color = Color3.fromRGB(140, 140, 140)
	Part5.Material = Enum.Material.Concrete
	Part5.Size = Vector3.new(1, 2, 4)
	Part5.TopSurface = Enum.SurfaceType.Smooth
	Part5.Parent = Room

	local Part6 = Instance.new("Part")
	Part6.Anchored = true
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.CFrame = CFrame.new(251.826, -291.5, -135.885)
	Part6.Color = Color3.fromRGB(140, 140, 140)
	Part6.Material = Enum.Material.Concrete
	Part6.Size = Vector3.new(21, 1, 15)
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.Parent = Room

	local Part7 = Instance.new("Part")
	Part7.Anchored = true
	Part7.BottomSurface = Enum.SurfaceType.Smooth
	Part7.CFrame = CFrame.new(261.826, -296.5, -139.885)
	Part7.Color = Color3.fromRGB(140, 140, 140)
	Part7.Material = Enum.Material.Concrete
	Part7.Size = Vector3.new(1, 9, 5)
	Part7.TopSurface = Enum.SurfaceType.Smooth
	Part7.Parent = Room

	local Part8 = Instance.new("Part")
	Part8.Anchored = true
	Part8.BottomSurface = Enum.SurfaceType.Smooth
	Part8.CFrame = CFrame.new(244.326, -304.5, -141.885)
	Part8.Color = Color3.fromRGB(140, 140, 140)
	Part8.Material = Enum.Material.Concrete
	Part8.Size = Vector3.new(36, 29, 1)
	Part8.TopSurface = Enum.SurfaceType.Smooth
	Part8.Parent = Room

	local Part9 = Instance.new("Part")
	Part9.Anchored = true
	Part9.BottomSurface = Enum.SurfaceType.Smooth
	Part9.CFrame = CFrame.new(261.826, -296.5, -130.885)
	Part9.Color = Color3.fromRGB(140, 140, 140)
	Part9.Material = Enum.Material.Concrete
	Part9.Size = Vector3.new(1, 9, 5)
	Part9.TopSurface = Enum.SurfaceType.Smooth
	Part9.Parent = Room

	local Model = Instance.new("Model")
	Model.Parent = Room

	local Part10 = Instance.new("Part")
	Part10.Anchored = true
	Part10.BottomSurface = Enum.SurfaceType.Smooth
	Part10.CFrame = CFrame.new(238.826, -315.5, -135.385)
	Part10.Material = Enum.Material.WoodPlanks
	Part10.Size = Vector3.new(2, 1, 12)
	Part10.TopSurface = Enum.SurfaceType.Smooth
	Part10.Parent = Model

	local Part11 = Instance.new("Part")
	Part11.Anchored = true
	Part11.BottomSurface = Enum.SurfaceType.Smooth
	Part11.CFrame = CFrame.new(243.826, -310.5, -135.385)
	Part11.Material = Enum.Material.WoodPlanks
	Part11.Size = Vector3.new(2, 1, 12)
	Part11.TopSurface = Enum.SurfaceType.Smooth
	Part11.Parent = Model

	local Part12 = Instance.new("Part")
	Part12.Anchored = true
	Part12.BottomSurface = Enum.SurfaceType.Smooth
	Part12.CFrame = CFrame.new(247.826, -306.5, -135.385)
	Part12.Material = Enum.Material.WoodPlanks
	Part12.Size = Vector3.new(2, 1, 12)
	Part12.TopSurface = Enum.SurfaceType.Smooth
	Part12.Parent = Model

	local Part13 = Instance.new("Part")
	Part13.Anchored = true
	Part13.BottomSurface = Enum.SurfaceType.Smooth
	Part13.CFrame = CFrame.new(241.826, -312.5, -135.385)
	Part13.Material = Enum.Material.WoodPlanks
	Part13.Size = Vector3.new(2, 1, 12)
	Part13.TopSurface = Enum.SurfaceType.Smooth
	Part13.Parent = Model

	local Part14 = Instance.new("Part")
	Part14.Anchored = true
	Part14.BottomSurface = Enum.SurfaceType.Smooth
	Part14.CFrame = CFrame.new(250.826, -303.5, -135.385)
	Part14.Material = Enum.Material.WoodPlanks
	Part14.Size = Vector3.new(2, 1, 12)
	Part14.TopSurface = Enum.SurfaceType.Smooth
	Part14.Parent = Model

	local Part15 = Instance.new("Part")
	Part15.Anchored = true
	Part15.BottomSurface = Enum.SurfaceType.Smooth
	Part15.CFrame = CFrame.new(245.826, -308.5, -135.385)
	Part15.Material = Enum.Material.WoodPlanks
	Part15.Size = Vector3.new(2, 1, 12)
	Part15.TopSurface = Enum.SurfaceType.Smooth
	Part15.Parent = Model

	local Part16 = Instance.new("Part")
	Part16.Anchored = true
	Part16.BottomSurface = Enum.SurfaceType.Smooth
	Part16.CFrame = CFrame.new(249.826, -304.5, -135.385)
	Part16.Material = Enum.Material.WoodPlanks
	Part16.Size = Vector3.new(2, 1, 12)
	Part16.TopSurface = Enum.SurfaceType.Smooth
	Part16.Parent = Model

	local Part17 = Instance.new("Part")
	Part17.Anchored = true
	Part17.BottomSurface = Enum.SurfaceType.Smooth
	Part17.CFrame = CFrame.new(248.826, -305.5, -135.385)
	Part17.Material = Enum.Material.WoodPlanks
	Part17.Size = Vector3.new(2, 1, 12)
	Part17.TopSurface = Enum.SurfaceType.Smooth
	Part17.Parent = Model

	local Part18 = Instance.new("Part")
	Part18.Anchored = true
	Part18.BottomSurface = Enum.SurfaceType.Smooth
	Part18.CFrame = CFrame.new(242.826, -311.5, -135.385)
	Part18.Material = Enum.Material.WoodPlanks
	Part18.Size = Vector3.new(2, 1, 12)
	Part18.TopSurface = Enum.SurfaceType.Smooth
	Part18.Parent = Model

	local Part19 = Instance.new("Part")
	Part19.Anchored = true
	Part19.BottomSurface = Enum.SurfaceType.Smooth
	Part19.CFrame = CFrame.new(235.826, -318.5, -135.385)
	Part19.Material = Enum.Material.WoodPlanks
	Part19.Size = Vector3.new(2, 1, 12)
	Part19.TopSurface = Enum.SurfaceType.Smooth
	Part19.Parent = Model

	local Part20 = Instance.new("Part")
	Part20.Anchored = true
	Part20.BottomSurface = Enum.SurfaceType.Smooth
	Part20.CFrame = CFrame.new(246.826, -307.5, -135.385)
	Part20.Material = Enum.Material.WoodPlanks
	Part20.Size = Vector3.new(2, 1, 12)
	Part20.TopSurface = Enum.SurfaceType.Smooth
	Part20.Parent = Model

	local Part21 = Instance.new("Part")
	Part21.Anchored = true
	Part21.BottomSurface = Enum.SurfaceType.Smooth
	Part21.CFrame = CFrame.new(236.826, -317.5, -135.385)
	Part21.Material = Enum.Material.WoodPlanks
	Part21.Size = Vector3.new(2, 1, 12)
	Part21.TopSurface = Enum.SurfaceType.Smooth
	Part21.Parent = Model

	local Part22 = Instance.new("Part")
	Part22.Anchored = true
	Part22.BottomSurface = Enum.SurfaceType.Smooth
	Part22.CFrame = CFrame.new(244.826, -309.5, -135.385)
	Part22.Material = Enum.Material.WoodPlanks
	Part22.Size = Vector3.new(2, 1, 12)
	Part22.TopSurface = Enum.SurfaceType.Smooth
	Part22.Parent = Model

	local Part23 = Instance.new("Part")
	Part23.Anchored = true
	Part23.BottomSurface = Enum.SurfaceType.Smooth
	Part23.CFrame = CFrame.new(239.826, -314.5, -135.385)
	Part23.Material = Enum.Material.WoodPlanks
	Part23.Size = Vector3.new(2, 1, 12)
	Part23.TopSurface = Enum.SurfaceType.Smooth
	Part23.Parent = Model

	local Part24 = Instance.new("Part")
	Part24.Anchored = true
	Part24.BottomSurface = Enum.SurfaceType.Smooth
	Part24.CFrame = CFrame.new(251.826, -302.5, -135.385)
	Part24.Material = Enum.Material.WoodPlanks
	Part24.Size = Vector3.new(2, 1, 12)
	Part24.TopSurface = Enum.SurfaceType.Smooth
	Part24.Parent = Model

	local Part25 = Instance.new("Part")
	Part25.Anchored = true
	Part25.BottomSurface = Enum.SurfaceType.Smooth
	Part25.CFrame = CFrame.new(237.826, -316.5, -135.385)
	Part25.Material = Enum.Material.WoodPlanks
	Part25.Size = Vector3.new(2, 1, 12)
	Part25.TopSurface = Enum.SurfaceType.Smooth
	Part25.Parent = Model

	local Part26 = Instance.new("Part")
	Part26.Anchored = true
	Part26.BottomSurface = Enum.SurfaceType.Smooth
	Part26.CFrame = CFrame.new(240.826, -313.5, -135.385)
	Part26.Material = Enum.Material.WoodPlanks
	Part26.Size = Vector3.new(2, 1, 12)
	Part26.TopSurface = Enum.SurfaceType.Smooth
	Part26.Parent = Model

	local Part27 = Instance.new("Part")
	Part27.Anchored = true
	Part27.BottomSurface = Enum.SurfaceType.Smooth
	Part27.CFrame = CFrame.new(235.826, -318.5, -135.385)
	Part27.Material = Enum.Material.WoodPlanks
	Part27.Size = Vector3.new(2, 1, 12)
	Part27.TopSurface = Enum.SurfaceType.Smooth
	Part27.Parent = Model
	
	return Stairs
end
