return function()
	local Long = Instance.new("Model")
	Long.Name = "Long"

	local Exit = Instance.new("Part")
	Exit.Anchored = true
	Exit.BottomSurface = Enum.SurfaceType.Smooth
	Exit.CFrame = CFrame.new(291.826, -315.5, -66.385)
	Exit.Color = Color3.fromRGB(248, 248, 248)
	Exit.Name = "Exit"
	Exit.Size = Vector3.new(1, 7, 4)
	Exit.TopSurface = Enum.SurfaceType.Smooth
	Exit.Transparency = 0.7
	Exit.Parent = Long

	local Entrance = Instance.new("Part")
	Entrance.Anchored = true
	Entrance.BottomSurface = Enum.SurfaceType.Smooth
	Entrance.CFrame = CFrame.new(225.826, -315.5, -66.385)
	Entrance.Color = Color3.fromRGB(248, 248, 248)
	Entrance.Name = "Entrance"
	Entrance.Size = Vector3.new(1, 7, 4)
	Entrance.TopSurface = Enum.SurfaceType.Smooth
	Entrance.Transparency = 0.7
	Entrance.Parent = Long

	local Model = Instance.new("Model")
	Model.Parent = Long

	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CFrame = CFrame.new(259.326, -310.5, -66.385)
	Part.Material = Enum.Material.Concrete
	Part.Size = Vector3.new(66, 1, 12)
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Parent = Model

	local Part2 = Instance.new("Part")
	Part2.Anchored = true
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.CFrame = CFrame.new(291.826, -314.5, -62.385)
	Part2.Material = Enum.Material.Concrete
	Part2.Size = Vector3.new(1, 9, 4)
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part2.Parent = Model

	local Part3 = Instance.new("Part")
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.CFrame = CFrame.new(259.326, -314.5, -60.885)
	Part3.Material = Enum.Material.Concrete
	Part3.Size = Vector3.new(66, 9, 1)
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.Parent = Model

	local Part4 = Instance.new("Part")
	Part4.Anchored = true
	Part4.BottomSurface = Enum.SurfaceType.Smooth
	Part4.CFrame = CFrame.new(291.826, -314.5, -70.385)
	Part4.Material = Enum.Material.Concrete
	Part4.Size = Vector3.new(1, 9, 4)
	Part4.TopSurface = Enum.SurfaceType.Smooth
	Part4.Parent = Model

	local Part5 = Instance.new("Part")
	Part5.Anchored = true
	Part5.BottomSurface = Enum.SurfaceType.Smooth
	Part5.CFrame = CFrame.new(226.076, -314.5, -70.385)
	Part5.Material = Enum.Material.Concrete
	Part5.Size = Vector3.new(0.5, 9, 4)
	Part5.TopSurface = Enum.SurfaceType.Smooth
	Part5.Parent = Model

	local Part6 = Instance.new("Part")
	Part6.Anchored = true
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.CFrame = CFrame.new(259.076, -319.5, -66.385)
	Part6.Material = Enum.Material.WoodPlanks
	Part6.Size = Vector3.new(66.5, 1, 12)
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.Parent = Model

	local Part7 = Instance.new("Part")
	Part7.Anchored = true
	Part7.BottomSurface = Enum.SurfaceType.Smooth
	Part7.CFrame = CFrame.new(226.076, -314.5, -62.385)
	Part7.Material = Enum.Material.Concrete
	Part7.Size = Vector3.new(0.5, 9, 4)
	Part7.TopSurface = Enum.SurfaceType.Smooth
	Part7.Parent = Model

	local Part8 = Instance.new("Part")
	Part8.Anchored = true
	Part8.BottomSurface = Enum.SurfaceType.Smooth
	Part8.CFrame = CFrame.new(291.826, -311, -66.385)
	Part8.Material = Enum.Material.Concrete
	Part8.Size = Vector3.new(1, 2, 4)
	Part8.TopSurface = Enum.SurfaceType.Smooth
	Part8.Parent = Model

	local Part9 = Instance.new("Part")
	Part9.Anchored = true
	Part9.BottomSurface = Enum.SurfaceType.Smooth
	Part9.CFrame = CFrame.new(226.076, -311, -66.385)
	Part9.Material = Enum.Material.Concrete
	Part9.Size = Vector3.new(0.5, 2, 4)
	Part9.TopSurface = Enum.SurfaceType.Smooth
	Part9.Parent = Model

	local Part10 = Instance.new("Part")
	Part10.Anchored = true
	Part10.BottomSurface = Enum.SurfaceType.Smooth
	Part10.CFrame = CFrame.new(259.326, -314.5, -71.885)
	Part10.Material = Enum.Material.Concrete
	Part10.Size = Vector3.new(66, 9, 1)
	Part10.TopSurface = Enum.SurfaceType.Smooth
	Part10.Parent = Model
	
	local Nodes = Instance.new("Model")
	Nodes.Name = "Nodes"
	Nodes.Parent = Long

	local Object2 = Instance.new("Part")
	Object2.BottomSurface = Enum.SurfaceType.Smooth
	Object2.CFrame = CFrame.new(128, -22, -122)
	Object2.Name = "2"
	Object2.Size = Vector3.new(1, 1, 1)
	Object2.TopSurface = Enum.SurfaceType.Smooth
	Object2.Parent = Nodes

	local Object1 = Instance.new("Part")
	Object1.BottomSurface = Enum.SurfaceType.Smooth
	Object1.CFrame = CFrame.new(68, -22, -122)
	Object1.Name = "1"
	Object1.Size = Vector3.new(1, 1, 1)
	Object1.TopSurface = Enum.SurfaceType.Smooth
	Object1.Parent = Nodes
	
	return Long
end
