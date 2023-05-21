local LocalPlr = game.Players.LocalPlayer
local Players = game.Players
local Lighting = game.Lighting
local LocalGui = game.Players.LocalPlayer.PlayerGui
local SafeGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Http = game:GetService("HttpService")
local ReplicatedStorage = game.ReplicatedStorage
local LocalBackpack = game.Players.LocalPlayer.Backpack
local ClientStorage = Instance.new("Folder", game)
ClientStorage.Name = "Hidin from developers (:<"

function LocalPlr:Chat(Message)
	if Message == true then
		error("Nitrogen: Message cannot be a boolean.")
	elseif Message == false then
		error("Nitrogen: Message cannot be a boolean.")
	else
		local args = {
			[1] = tostring(Message),
			[2] = "All"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
	end
end

function LocalPlr:PlaySound(Id, Volume, Looped)
	if tonumber(Id) then
		if tonumber(Volume) then
			if Looped == true then
				local Sound = Instance.new("Sound", workspace)
				Sound.SoundId = Id
				Sound.Volume = Volume
				Sound.Looped = true
			elseif Looped == false then
				local Sound = Instance.new("Sound", workspace)
				Sound.SoundId = Id
				Sound.Volume = Volume
				Sound.Looped = false
			else
				error("Nitrogen: Looped must be a boolean.")
			end
		else
			error("Nitrogen: Volume cannot be a string or boolean.")
		end
	else
		error("Nitrogen: Id cannot be a string or boolean.")
	end
end

function LocalPlr:ChangeFov(Fov)
	if tonumber(Fov) then
		game.Workspace.CurrentCamera.FieldOfView = Fov
	else
		error("Nitrogen: Fov cannot be a string or boolean.")
	end
end

function LocalPlr:Powerkick(Msg)
	local Powerkick = Instance.new("ScreenGui")
	local Bg = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Message = Instance.new("TextLabel")

	Powerkick.Name = "Powerkick"
	Powerkick.Parent = SafeGui
	Powerkick.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Bg.Name = "Bg"
	Bg.Parent = Powerkick
	Bg.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Bg.Position = UDim2.new(0.38102299, 0, 0.376543224, 0)
	Bg.Size = UDim2.new(0.237212747, 0, 0.246913582, 0)

	UICorner.Parent = Bg

	Message.Name = "Message"
	Message.Parent = Bg
	Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message.BackgroundTransparency = 1.000
	Message.Position = UDim2.new(0.046875, 0, 0.0850000009, 0)
	Message.Size = UDim2.new(0.903124988, 0, 0.824999988, 0)
	Message.Font = Enum.Font.Unknown
	Message.Text = "POWERKICKED!!!: " .. Msg
	Message.TextColor3 = Color3.fromRGB(217, 217, 217)
	Message.TextSize = 14.000
	
	Blur.Size = 56
	while true do
		print("GET POWER KICKED BITCHFACE")
	end
end
