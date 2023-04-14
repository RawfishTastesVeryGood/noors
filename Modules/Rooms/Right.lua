return function()
	local Right = Instance.new("Model")
	Right.Name = "Right"

	local Entrance = Instance.new("Part")
	Entrance.Anchored = true
	Entrance.BottomSurface = Enum.SurfaceType.Smooth
	Entrance.CFrame = CFrame.new(227.826, -315.5, -37.785000000000004)
	Entrance.Color = Color3.fromRGB(248, 248, 248)
	Entrance.Name = "Entrance"
	Entrance.Size = Vector3.new(1, 7, 4)
	Entrance.TopSurface = Enum.SurfaceType.Smooth
	Entrance.Transparency = 0.7
	Entrance.Parent = Right

	local Exit = Instance.new("Part")
	Exit.Anchored = true
	Exit.BottomSurface = Enum.SurfaceType.Smooth
	Exit.CFrame = CFrame.new(262.326, -315.5, -3.585)
	Exit.CFrame = Exit.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	Exit.Color = Color3.fromRGB(248, 248, 248)
	Exit.Name = "Exit"
	Exit.Size = Vector3.new(4, 7, 1)
	Exit.TopSurface = Enum.SurfaceType.Smooth
	Exit.Transparency = 0.7
	Exit.Parent = Right

	local Model = Instance.new("Model")
	Model.Parent = Right

	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CFrame = CFrame.new(262.276, -310.5, -23.035)
	Part.Material = Enum.Material.Concrete
	Part.Size = Vector3.new(12, 1, 40)
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Parent = Model

	local Part2 = Instance.new("Part")
	Part2.Anchored = true
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.CFrame = CFrame.new(242.826, -314.5, -32.285000000000004)
	Part2.Material = Enum.Material.Concrete
	Part2.Size = Vector3.new(29, 9, 1)
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part2.Parent = Model

	local Part3 = Instance.new("Part")
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.CFrame = CFrame.new(262.326, -311, -3.585)
	Part3.Material = Enum.Material.Concrete
	Part3.Size = Vector3.new(4, 2, 1)
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.Parent = Model

	local Part4 = Instance.new("Part")
	Part4.Anchored = true
	Part4.BottomSurface = Enum.SurfaceType.Smooth
	Part4.CFrame = CFrame.new(262.776, -319.5, -23.285)
	Part4.Material = Enum.Material.WoodPlanks
	Part4.Size = Vector3.new(11, 1, 40.5)
	Part4.TopSurface = Enum.SurfaceType.Smooth
	Part4.Parent = Model

	local Part5 = Instance.new("Part")
	Part5.Anchored = true
	Part5.BottomSurface = Enum.SurfaceType.Smooth
	Part5.CFrame = CFrame.new(267.776, -314.5, -23.535)
	Part5.Material = Enum.Material.Concrete
	Part5.Size = Vector3.new(1, 9, 41)
	Part5.TopSurface = Enum.SurfaceType.Smooth
	Part5.Parent = Model

	local Part6 = Instance.new("Part")
	Part6.Anchored = true
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.CFrame = CFrame.new(256.776, -314.5, -17.535)
	Part6.Material = Enum.Material.Concrete
	Part6.Size = Vector3.new(1, 9, 29)
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.Parent = Model

	local Part7 = Instance.new("Part")
	Part7.Anchored = true
	Part7.BottomSurface = Enum.SurfaceType.Smooth
	Part7.CFrame = CFrame.new(242.326, -310.5, -37.785000000000004)
	Part7.Material = Enum.Material.Concrete
	Part7.Size = Vector3.new(28, 1, 12)
	Part7.TopSurface = Enum.SurfaceType.Smooth
	Part7.Parent = Model

	local Part8 = Instance.new("Part")
	Part8.Anchored = true
	Part8.BottomSurface = Enum.SurfaceType.Smooth
	Part8.CFrame = CFrame.new(266.326, -314.5, -3.585)
	Part8.Material = Enum.Material.Concrete
	Part8.Size = Vector3.new(4, 9, 1)
	Part8.TopSurface = Enum.SurfaceType.Smooth
	Part8.Parent = Model

	local Part9 = Instance.new("Part")
	Part9.Anchored = true
	Part9.BottomSurface = Enum.SurfaceType.Smooth
	Part9.CFrame = CFrame.new(228.076, -311, -37.785000000000004)
	Part9.Material = Enum.Material.Concrete
	Part9.Size = Vector3.new(0.5, 2, 4)
	Part9.TopSurface = Enum.SurfaceType.Smooth
	Part9.Parent = Model

	local Part10 = Instance.new("Part")
	Part10.Anchored = true
	Part10.BottomSurface = Enum.SurfaceType.Smooth
	Part10.CFrame = CFrame.new(248.326, -314.5, -43.285000000000004)
	Part10.Material = Enum.Material.Concrete
	Part10.Size = Vector3.new(40, 9, 1)
	Part10.TopSurface = Enum.SurfaceType.Smooth
	Part10.Parent = Model

	local Part11 = Instance.new("Part")
	Part11.Anchored = true
	Part11.BottomSurface = Enum.SurfaceType.Smooth
	Part11.CFrame = CFrame.new(228.076, -314.5, -33.785000000000004)
	Part11.Material = Enum.Material.Concrete
	Part11.Size = Vector3.new(0.5, 9, 4)
	Part11.TopSurface = Enum.SurfaceType.Smooth
	Part11.Parent = Model

	local Part12 = Instance.new("Part")
	Part12.Anchored = true
	Part12.BottomSurface = Enum.SurfaceType.Smooth
	Part12.CFrame = CFrame.new(258.326, -314.5, -3.585)
	Part12.Material = Enum.Material.Concrete
	Part12.Size = Vector3.new(4, 9, 1)
	Part12.TopSurface = Enum.SurfaceType.Smooth
	Part12.Parent = Model

	local Part13 = Instance.new("Part")
	Part13.Anchored = true
	Part13.BottomSurface = Enum.SurfaceType.Smooth
	Part13.CFrame = CFrame.new(242.576, -319.5, -37.785000000000004)
	Part13.Material = Enum.Material.WoodPlanks
	Part13.Size = Vector3.new(29.5, 1, 12)
	Part13.TopSurface = Enum.SurfaceType.Smooth
	Part13.Parent = Model

	local Part14 = Instance.new("Part")
	Part14.Anchored = true
	Part14.BottomSurface = Enum.SurfaceType.Smooth
	Part14.CFrame = CFrame.new(228.076, -314.5, -41.785000000000004)
	Part14.Material = Enum.Material.Concrete
	Part14.Size = Vector3.new(0.5, 9, 4)
	Part14.TopSurface = Enum.SurfaceType.Smooth
	Part14.Parent = Model
	
	local Nodes = Instance.new("Model")
	Nodes.Name = "Nodes"
	Nodes.Parent = Right

	local Object2 = Instance.new("Part")
	Object2.BottomSurface = Enum.SurfaceType.Smooth
	Object2.CFrame = CFrame.new(102, -22, -93)
	Object2.Name = "2"
	Object2.Size = Vector3.new(1, 1, 1)
	Object2.TopSurface = Enum.SurfaceType.Smooth
	Object2.Parent = Nodes

	local Object1 = Instance.new("Part")
	Object1.BottomSurface = Enum.SurfaceType.Smooth
	Object1.CFrame = CFrame.new(70, -22, -93)
	Object1.Name = "1"
	Object1.Size = Vector3.new(1, 1, 1)
	Object1.TopSurface = Enum.SurfaceType.Smooth
	Object1.Parent = Nodes

	local Object3 = Instance.new("Part")
	Object3.BottomSurface = Enum.SurfaceType.Smooth
	Object3.CFrame = CFrame.new(102, -22, -61)
	Object3.Name = "3"
	Object3.Size = Vector3.new(1, 1, 1)
	Object3.TopSurface = Enum.SurfaceType.Smooth
	Object3.Parent = Nodes

	return Right
end
