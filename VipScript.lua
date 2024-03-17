-- Gui to Lua
-- Version: 3.2

-- Instances:

local Lerazz = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Place = Instance.new("TextLabel")
local Caption = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local Names = Instance.new("TextLabel")
local games = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Lerazz.Name = "Lerazz"
Lerazz.Parent = game:GetService("Players").LocalPlayer.PlayerGui
Lerazz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Lerazz
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Main.Position = UDim2.new(0.499919146, 0, 0.530929804, 0)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Main

Place.Name = "Place"
Place.Parent = Main
Place.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Place.BackgroundTransparency = 1.000
Place.Position = UDim2.new(-6.35179458e-05, 0, -0.00208109175, 0)
Place.Size = UDim2.new(1, 0, 0.147859827, 0)
Place.ZIndex = 2
Place.Font = Enum.Font.Arial
Place.Text = ""
Place.TextColor3 = Color3.fromRGB(240, 240, 240)
Place.TextSize = 32.000
Place.TextYAlignment = Enum.TextYAlignment.Top

Caption.Name = "Caption"
Caption.Parent = Main
Caption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Caption.BackgroundTransparency = 1.000
Caption.Position = UDim2.new(0.00142098125, 0, 0.581362903, 0)
Caption.Size = UDim2.new(1, 0, 0.0869565234, 0)
Caption.ZIndex = 2
Caption.Font = Enum.Font.Arial
Caption.Text = ""
Caption.TextColor3 = Color3.fromRGB(197, 186, 170)
Caption.TextSize = 18.000

Description.Name = "Description"
Description.Parent = Main
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.Position = UDim2.new(0.057096269, 0, 0.753906012, 0)
Description.Size = UDim2.new(0.885807514, 0, 0.227034315, 0)
Description.ZIndex = 2
Description.Font = Enum.Font.Arial
Description.Text = ""
Description.TextColor3 = Color3.fromRGB(197, 186, 170)
Description.TextSize = 18.000
Description.TextWrapped = true

Names.Name = "Names"
Names.Parent = Main
Names.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Names.BackgroundTransparency = 1.000
Names.Position = UDim2.new(-6.35179458e-05, 0, 0.118023343, 0)
Names.Size = UDim2.new(1, 0, 0.147859827, 0)
Names.ZIndex = 2
Names.Font = Enum.Font.Arial
Names.Text = ""
Names.TextColor3 = Color3.fromRGB(240, 240, 240)
Names.TextSize = 24.000
Names.TextYAlignment = Enum.TextYAlignment.Top

games.Name = "game"
games.Parent = Main
games.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
games.Position = UDim2.new(0.415049732, 0, 0.30753237, 0)
games.Size = UDim2.new(0, 100, 0, 100)
games.Visible = false
games.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid=15564836976&fmt=png&wd=100&ht=100"
games.ScaleType = Enum.ScaleType.Crop
games.TileSize = UDim2.new(0.5, 0, 1, 0)

UICorner_2.Parent = games


task.wait(3)
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Lerazz").Enabled = true
	
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local Main = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Lerazz").Main


Main.Caption.Text = "By: Lerazz"
Main.Description.Text = "Sussy Script BEST!"
Main.Place.Text = "Place Name:"
Main.Names.Text = GetName.Name 

Main.game.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..game.PlaceId.."&fmt=png&wd=100&ht=100"

local TweenPart = Main
local TweenService = game:GetService("TweenService")

local Info = TweenInfo.new(
	3,
	Enum.EasingStyle.Cubic,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

local TweenGoals = {
	Size = UDim2.new(0,590,0,380);
}

local Tween = TweenService:Create(TweenPart,Info,TweenGoals)
Tween:Play()
task.wait(3)
Main.game.Visible = true
task.wait(4)
Main.Parent:Remove()
