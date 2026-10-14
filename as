-- discord.gg/syncrypt

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local Notification = require(game:GetService("ReplicatedStorage").Notification)

local function v7()
	if typeof(gethui) == "function" then
		local ok, result = pcall(gethui)

		if ok and result then
			return result
		end
	end

	return CoreGui
end

local robux = getgenv().robux or 184736
local n1 = 0.3

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
	n1 = 0.45
end

local color3 = Color3.fromRGB(38, 61, 143)
local color32 = Color3.fromRGB(51, 95, 255)

local function v14(p1)
	local t1 = {}

	for i = 1, p1 do
		local v17 = math.random(1, 52)

		t1[i] = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):sub(v17, v17)
	end

	return table.concat(t1)
end
local function v18(p2)
	return tostring(p2):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end
local function v19(p3, p4, p5)
	pcall(function()
		p3[p4] = p5
	end)
end
local function v20(p6, p7)
	local function v21()
		return p6[p7]
	end

	local ok, result = pcall(v21)

	return ok and result or nil
end
local function v24(p8, p9)
	local ok, result = pcall(Instance.new, p8)

	if not ok or not result then
		return nil
	end

	if p9 then
		for k, v in pairs(p9) do
			v19(result, k, v)
		end
	end

	return result
end
local function v29()
	local s1 = "Player"

	pcall(function()
		local match = PlayerGui.GiftWindow.Window.Footer.Context.Text:match("%[(.-)%]")

		if match and match ~= "" then
			s1 = match
		end
	end)

	return s1
end
local function v32(p10, p11, p12)
	local Frame = v24("Frame", {
		Size = UDim2.new(n1, 0, 0, 232),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.54, 0),
		BackgroundColor3 = Color3.fromRGB(25, 26, 31),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 11,
		Name = v14(10),
		Parent = p11
	})

	v24("UICorner", {
		CornerRadius = UDim.new(0, 10),
		Parent = Frame
	})
	TweenService:Create(p10, TweenInfo.new(0.28, Enum.EasingStyle.Linear), {
		BackgroundTransparency = 0.45
	}):Play()
	TweenService:Create(Frame, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 0
	}):Play()
	v24("TextLabel", {
		Size = UDim2.new(1, -20, 0, 52),
		Position = UDim2.new(0, 14, 0, 0),
		BackgroundTransparency = 1,
		Text = "Purchase completed",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 18,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame
	})

	local ImageButton = v24("ImageButton", {
		Size = UDim2.new(0, 44, 0, 52),
		Position = UDim2.new(1, -44, 0, 0),
		BackgroundTransparency = 1,
		Image = "",
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame
	})

	v24("ImageLabel", {
		Size = UDim2.new(0, 22, 0, 22),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://6031094678",
		ImageColor3 = Color3.fromRGB(210, 210, 210),
		ScaleType = Enum.ScaleType.Fit,
		ZIndex = 13,
		Name = v14(10),
		Parent = ImageButton
	})
	v24("ImageLabel", {
		Size = UDim2.new(0, 62, 0, 62),
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, -2, 0, 66),
		BackgroundTransparency = 1,
		Image = "rbxassetid://135084016839600",
		ScaleType = Enum.ScaleType.Fit,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame
	})
	v24("TextLabel", {
		Size = UDim2.new(1, -28, 0, 36),
		Position = UDim2.new(0, 14, 0, 128),
		BackgroundTransparency = 1,
		Text = "You have successfully bought \"Dragon\".",
		TextColor3 = Color3.fromRGB(200, 200, 200),
		TextSize = 13,
		Font = Enum.Font.BuilderSansMedium,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame
	})

	local TextButton = v24("TextButton", {
		Size = UDim2.new(1, -28, 0, 34),
		Position = UDim2.new(0, 14, 0, 178),
		BackgroundColor3 = color3,
		BorderSizePixel = 0,
		Text = "",
		ZIndex = 12,
		ClipsDescendants = true,
		Name = v14(10),
		Parent = Frame
	})

	v24("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = TextButton
	})
	v24("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "OK",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 15,
		Font = Enum.Font.BuilderSansMedium,
		ZIndex = 13,
		Name = v14(10),
		Parent = TextButton
	})
	task.delay(0.1, function()
		if not v20(p11, "Parent") then
			return
		end

		local t2 = {
			BackgroundColor3 = color32
		}

		TweenService:Create(TextButton, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), t2):Play()
	end)

	local function v37()
		local tween = TweenService:Create(Frame, TweenInfo.new(0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Position = UDim2.new(0.5, 0, 0.54, 0),
			BackgroundTransparency = 1
		})

		TweenService:Create(p10, TweenInfo.new(0.22, Enum.EasingStyle.Linear), {
			BackgroundTransparency = 1
		}):Play()
		tween:Play()
		tween.Completed:Connect(function()
			pcall(function()
				p11:Destroy()
			end)
		end)
	end

	TextButton.MouseButton1Click:Connect(v37)
	ImageButton.MouseButton1Click:Connect(v37)
	task.delay(0.3, function()
		Notification.new("Sending gift <Color=Yellow>&lt;Permanent Dragon&gt;<Color=/> to " .. p12 .. "...", 6):Display()
		task.delay(1.7, function()
			Notification.new("<Color=Green>Gift sent successfully!<Color=/>", 6):Display()
		end)
	end)
end

local u39

local function v40(p13)
	if u39 then
		pcall(function()
			u39:Destroy()
		end)
		u39 = nil
	end

	local v41 = v7()
	local ScreenGui = v24("ScreenGui", {
		Name = v14(12),
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 999
	})

	local function v43()
		task.wait()
		v19(ScreenGui, "Parent", v41)
	end

	task.spawn(v43)
	u39 = ScreenGui
	ScreenGui.AncestryChanged:Connect(function()
		if not v20(ScreenGui, "Parent") then
			u39 = nil
		end
	end)

	local Frame = v24("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 10,
		Name = v14(10),
		Parent = ScreenGui
	})
	local Frame2 = v24("Frame", {
		Size = UDim2.new(n1, 0, 0, 184),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.54, 0),
		BackgroundColor3 = Color3.fromRGB(25, 26, 31),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 11,
		Name = v14(10),
		Parent = ScreenGui
	})

	v24("UICorner", {
		CornerRadius = UDim.new(0, 10),
		Parent = Frame2
	})

	local tweenInfo = TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

	TweenService:Create(Frame, tweenInfo, {
		BackgroundTransparency = 0.45
	}):Play()
	TweenService:Create(Frame2, tweenInfo, {
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 0
	}):Play()
	v24("TextLabel", {
		Size = UDim2.new(1, -120, 0, 52),
		Position = UDim2.new(0, 14, 0, 0),
		BackgroundTransparency = 1,
		Text = "Buy item",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 20,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame2
	})

	local ImageButton = v24("ImageButton", {
		Size = UDim2.new(0, 44, 0, 52),
		Position = UDim2.new(1, -44, 0, 0),
		BackgroundTransparency = 1,
		Image = "",
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame2
	})

	v24("ImageLabel", {
		Size = UDim2.new(0, 22, 0, 22),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://6031094678",
		ImageColor3 = Color3.fromRGB(210, 210, 210),
		ScaleType = Enum.ScaleType.Fit,
		ZIndex = 13,
		Name = v14(10),
		Parent = ImageButton
	})

	local Frame3 = v24("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 90, 0, 52),
		Position = UDim2.new(1, -104, 0, 0),
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame2
	})

	v24("TextLabel", {
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(0, 0, 0.5, -10),
		BackgroundTransparency = 1,
		Text = "\u{E002}",
		TextColor3 = Color3.fromRGB(210, 210, 210),
		TextSize = 17,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame3
	})
	v24("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 22, 0, 0),
		Size = UDim2.new(0, 68, 1, 0),
		Text = v18(robux),
		TextColor3 = Color3.fromRGB(210, 210, 210),
		TextSize = 15,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame3
	})

	local Frame4 = v24("Frame", {
		Size = UDim2.new(1, -32, 0, 64),
		Position = UDim2.new(0, 16, 0, 62),
		BackgroundTransparency = 1,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame2
	})

	v24("ImageLabel", {
		Size = UDim2.new(0, 46, 0, 46),
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 0, 0.5, -6),
		BackgroundTransparency = 1,
		Image = "rbxassetid://127910198525735",
		ScaleType = Enum.ScaleType.Fit,
		BorderSizePixel = 0,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame4
	})

	local v50 = math.floor(11) - 6

	v24("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 58, 0, v50),
		BackgroundTransparency = 1,
		Text = "Dragon",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame4
	})

	local Frame5 = v24("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 54, 0, v50 + 24),
		Size = UDim2.new(0, 120, 0, 18),
		ZIndex = 12,
		Name = v14(10),
		Parent = Frame4
	})

	v24("TextLabel", {
		Size = UDim2.new(0, 18, 0, 18),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = "\u{E002}",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 13,
		Name = v14(10),
		Parent = Frame5
	})
	v24("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 20, 0, 0),
		Size = UDim2.new(0, 100, 1, 0),
		Text = v18(5000),
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		Font = Enum.Font.BuilderSansMedium,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 13,
		Name = v14(10),
		Parent = Frame5
	})

	local TextButton = v24("TextButton", {
		Size = UDim2.new(1, -28, 0, 34),
		Position = UDim2.new(0, 14, 0, 140),
		BackgroundColor3 = color3,
		BorderSizePixel = 0,
		Text = "",
		ZIndex = 12,
		ClipsDescendants = true,
		Name = v14(10),
		Parent = Frame2
	})

	v24("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = TextButton
	})

	local Frame6 = v24("Frame", {
		Size = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = color32,
		BorderSizePixel = 0,
		ZIndex = 13,
		Name = v14(10),
		Parent = TextButton
	})

	v24("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = Frame6
	})

	local TextLabel = v24("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "Buy",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 15,
		Font = Enum.Font.BuilderSansMedium,
		ZIndex = 14,
		Name = v14(10),
		Parent = TextButton
	})

	v19(TextButton, "Active", false)
	v19(TextButton, "AutoButtonColor", false)
	v19(TextLabel, "TextTransparency", 0.5)
	v19(Frame6, "Size", UDim2.new(1, 0, 1, 0))
	task.delay(0.08, function()
		if not v20(ScreenGui, "Parent") then
			return
		end

		v19(Frame6, "Size", UDim2.new(0, 0, 1, 0))

		local tween = TweenService:Create(Frame6, TweenInfo.new(3, Enum.EasingStyle.Linear), {
			Size = UDim2.new(1, 0, 1, 0)
		})

		tween:Play()
		tween.Completed:Connect(function()
			if not v20(ScreenGui, "Parent") then
				return
			end

			v19(TextButton, "Active", true)
			v19(TextLabel, "TextTransparency", 0)
		end)
	end)

	local function v56()
		local tween = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Position = UDim2.new(0.5, 0, 0.52, 0),
			BackgroundTransparency = 1
		})

		TweenService:Create(Frame, TweenInfo.new(0.18, Enum.EasingStyle.Linear), {
			BackgroundTransparency = 1
		}):Play()
		tween:Play()
		tween.Completed:Connect(function()
			pcall(function()
				ScreenGui:Destroy()
			end)
			u39 = nil
		end)
	end

	TextButton.MouseButton1Click:Connect(function()
		if not v20(TextButton, "Active") then
			return
		end

		v19(TextButton, "Active", false)
		robux -= 5000

		if robux < 0 then
			robux = 0
		end

		v19(Frame6, "Size", UDim2.new(0, 0, 1, 0))
		v19(TextButton, "BackgroundColor3", color3)
		task.wait(1)

		if not v20(ScreenGui, "Parent") then
			return
		end

		local tween = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Position = UDim2.new(0.5, 0, 0.52, 0),
			BackgroundTransparency = 1
		})

		tween:Play()
		tween.Completed:Connect(function()
			pcall(function()
				Frame2:Destroy()
			end)
			v32(Frame, ScreenGui, p13)
		end)
	end)
	ImageButton.MouseButton1Click:Connect(v56)
end
local function v59()
	local GiftWindow = PlayerGui:WaitForChild("GiftWindow", 30)

	if not GiftWindow then
		warn("[FakeGift] GiftWindow not found")

		return
	end

	local Window = GiftWindow:WaitForChild("Window", 10)

	if not Window then
		return
	end

	local Content = Window:WaitForChild("Content", 10)

	if not Content then
		return
	end

	local Buttons = Content:WaitForChild("Buttons", 10)

	if not Buttons then
		return
	end

	local Purchase = Buttons:WaitForChild("Purchase", 10)

	if not Purchase then
		return
	end

	v24("TextButton", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = Purchase.ZIndex + 20,
		AutoButtonColor = false,
		BorderSizePixel = 0,
		Name = v14(10),
		Parent = Purchase
	}).MouseButton1Click:Connect(function()
		local v65 = v29()

		task.wait(0.5)
		v40(v65)
	end)
	print("[FakeGift] Hooked Purchase button!")
end

task.spawn(function()
	v59()
	pcall(function()
		local Notifications = PlayerGui:FindFirstChild("Notifications")

		if Notifications and Notifications:IsA("ScreenGui") then
			Notifications.DisplayOrder = 999
		end
	end)
end)
require(game.ReplicatedStorage.Notification).new("<Color=Green>Successfully injected script\n try giving someone the Permanent Dragon!<Color=/>", 6):Display()
