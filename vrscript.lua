--[[
 __          __  _                               _                        _          __      __  _____  
 \ \        / / | |                             (_)                      ( )         \ \    / / |  __ \ 
  \ \  /\  / /  | |__     ___     ___     __ _   _  __   __   ___   ___  |/   ___     \ \  / /  | |__) |
   \ \/  \/ /   | '_ \   / _ \   / _ \   / _` | | | \ \ / /  / _ \ / __|     / __|     \ \/ /   |  _  / 
    \  /\  /    | | | | | (_) | | (_) | | (_| | | |  \ V /  |  __/ \__ \     \__ \      \  /    | | \ \ 
     \/  \/     |_| |_|  \___/   \___/   \__, | |_|   \_/    \___| |___/     |___/       \/     |_|  \_\
                                          __/ |                                                         
                                         |___/                
  Inspired By Skeds VR
--]]

local options = {}



-- OPTIONS:
options.VRChat = true									-- Set this to true if you want to chat in VR (Button to open is B on your VR controller)

options.headscale = 3          							-- How big you are in VR, This does not make your character any bigger (3 is recommended)
options.forcebubblechat = true 							-- Force bubblechat

options.HandsRotationOffset = Vector3.new(90,0,0) 		-- Rotation offset (90 is recommended) 

options.HandTransparency = 0.4							-- Transparency for your VR hands, Dont worry this is client sided (0.4 is recommended)
options.HideAllHats = true       						-- Set this to true if you want your hats to not get in the way, This is client sided

--


local plr = game:GetService("Players").LocalPlayer
local VR = game:GetService("VRService")
local runservice = game:service("RunService")
local input = game:GetService("UserInputService")
local keysPressed = input:GetKeysPressed()
local cam = workspace.CurrentCamera
local runservice = game:service("RunService")
local character = plr["Character"]

 
--
local Root = character:FindFirstChild("HumanoidRootPart")

repeat wait()
	a = pcall(function()
		game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
			if c.Name == "PlayerScriptsLoader"then
				c.Disabled = true
			end
		end)
	end)
	if a == true then break end
until true == false

game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
	if c.Name == "PlayerScriptsLoader"then
		c.Disabled = true
	end
end)

options.righthandrotoffset = options.HandsRotationOffset
options.lefthandrotoffset = options.HandsRotationOffset

character.Humanoid.AnimationPlayed:connect(function(anime)
	anime:Stop()
end)

for i,v in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
	v:AdjustSpeed(0)
end

-- Chat Part:
if options.VRChat == true then
	local VRchat = Instance.new("ScreenGui")
	local Page1 = Instance.new("Frame")
	local Hello = Instance.new("TextButton")
	local Ok = Instance.new("TextButton")
	local No = Instance.new("TextButton")
	local Yes = Instance.new("TextButton")
	local Hm = Instance.new("TextButton")
	local Lol = Instance.new("TextButton")
	local Come = Instance.new("TextButton")
	local WhoosVR = Instance.new("TextButton")
	local WaitAMin = Instance.new("TextButton")
	local What = Instance.new("TextButton")
	local NextPage = Instance.new("TextButton")
	local Page2 = Instance.new("Frame")
	local Stop = Instance.new("TextButton")
	local Start = Instance.new("TextButton")
	local TextButton = Instance.new("TextButton")
	local Hey = Instance.new("TextButton")
	local Cool = Instance.new("TextButton")
	local Bruh = Instance.new("TextButton")
	local SUS = Instance.new("TextButton")
	local Hacker = Instance.new("TextButton")
	local Me = Instance.new("TextButton")
	local BackPage = Instance.new("TextButton")
	VRchat.Name = "VR chat"
	VRchat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	VRchat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Page1.Name = "Page1"
	Page1.Parent = VRchat
	Page1.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
	Page1.BackgroundTransparency = 0.300
	Page1.Position = UDim2.new(-0.00080871582, 0, -0.00193678541, 0)
	Page1.Size = UDim2.new(1, 0, 1, 0)
	Page1.Visible = false
	Hello.Name = "Hello"
	Hello.Parent = Page1
	Hello.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hello.Position = UDim2.new(0.0549020506, 0, 0.0764637515, 0)
	Hello.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hello.Font = Enum.Font.SourceSans
	Hello.Text = "Hello!"
	Hello.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hello.TextScaled = true
	Hello.TextSize = 25.000
	Hello.TextWrapped = true
	Ok.Name = "Ok"
	Ok.Parent = Page1
	Ok.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ok.Position = UDim2.new(0.355535269, 0, 0.0764637515, 0)
	Ok.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Ok.Font = Enum.Font.SourceSans
	Ok.Text = "Ok"
	Ok.TextColor3 = Color3.fromRGB(0, 0, 0)
	Ok.TextScaled = true
	Ok.TextSize = 25.000
	Ok.TextWrapped = true
	No.Name = "No"
	No.Parent = Page1
	No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	No.Position = UDim2.new(0.354956299, 0, 0.32854709, 0)
	No.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	No.Font = Enum.Font.SourceSans
	No.Text = "No"
	No.TextColor3 = Color3.fromRGB(0, 0, 0)
	No.TextScaled = true
	No.TextSize = 25.000
	No.TextWrapped = true
	Yes.Name = "Yes"
	Yes.Parent = Page1
	Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Yes.Position = UDim2.new(0.0549020506, 0, 0.330081195, 0)
	Yes.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Yes.Font = Enum.Font.SourceSans
	Yes.Text = "Yes"
	Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
	Yes.TextScaled = true
	Yes.TextSize = 25.000
	Yes.TextWrapped = true
	Hm.Name = "Hm"
	Hm.Parent = Page1
	Hm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hm.Position = UDim2.new(0.677410305, 0, 0.330081195, 0)
	Hm.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hm.Font = Enum.Font.SourceSans
	Hm.Text = "?"
	Hm.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hm.TextScaled = true
	Hm.TextSize = 25.000
	Hm.TextWrapped = true
	Lol.Name = "Lol"
	Lol.Parent = Page1
	Lol.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lol.Position = UDim2.new(0.676831245, 0, 0.0759145617, 0)
	Lol.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Lol.Font = Enum.Font.SourceSans
	Lol.Text = "Lol"
	Lol.TextColor3 = Color3.fromRGB(0, 0, 0)
	Lol.TextScaled = true
	Lol.TextSize = 25.000
	Lol.TextWrapped = true
	Come.Name = "Come"
	Come.Parent = Page1
	Come.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Come.Position = UDim2.new(0.0549020506, 0, 0.574909747, 0)
	Come.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Come.Font = Enum.Font.SourceSans
	Come.Text = "Come"
	Come.TextColor3 = Color3.fromRGB(0, 0, 0)
	Come.TextScaled = true
	Come.TextSize = 25.000
	Come.TextWrapped = true
	WhoosVR.Name = "WhoosVR"
	WhoosVR.Parent = Page1
	WhoosVR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WhoosVR.Position = UDim2.new(0.325847805, 0, 0.839991808, 0)
	WhoosVR.Size = UDim2.new(0.347911447, 0, 0.108808197, 0)
	WhoosVR.Font = Enum.Font.SourceSans
	WhoosVR.Text = "Whoogives's VR"
	WhoosVR.TextColor3 = Color3.fromRGB(0, 0, 0)
	WhoosVR.TextScaled = true
	WhoosVR.TextSize = 25.000
	WhoosVR.TextWrapped = true
	WaitAMin.Name = "WaitAMin"
	WaitAMin.Parent = Page1
	WaitAMin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WaitAMin.Position = UDim2.new(0.356518745, 0, 0.574909747, 0)
	WaitAMin.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	WaitAMin.Font = Enum.Font.SourceSans
	WaitAMin.Text = "Wait a min"
	WaitAMin.TextColor3 = Color3.fromRGB(0, 0, 0)
	WaitAMin.TextScaled = true
	WaitAMin.TextSize = 25.000
	WaitAMin.TextWrapped = true
	What.Name = "What"
	What.Parent = Page1
	What.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	What.Position = UDim2.new(0.675847769, 0, 0.573831201, 0)
	What.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	What.Font = Enum.Font.SourceSans
	What.Text = "What?"
	What.TextColor3 = Color3.fromRGB(0, 0, 0)
	What.TextScaled = true
	What.TextSize = 25.000
	What.TextWrapped = true
	NextPage.Name = "NextPage"
	NextPage.Parent = Page1
	NextPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NextPage.Position = UDim2.new(0.733790994, 0, 0.854575157, 0)
	NextPage.Size = UDim2.new(0.152555302, 0, 0.081699349, 0)
	NextPage.Font = Enum.Font.SourceSansSemibold
	NextPage.Text = "Next"
	NextPage.TextColor3 = Color3.fromRGB(0, 0, 0)
	NextPage.TextScaled = true
	NextPage.TextSize = 14.000
	NextPage.TextWrapped = true
	Page2.Name = "Page2"
	Page2.Parent = VRchat
	Page2.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
	Page2.BackgroundTransparency = 0.300
	Page2.Position = UDim2.new(-0.00080871582, 0, -0.00193678541, 0)
	Page2.Size = UDim2.new(1, 0, 1, 0)
	Page2.Visible = false
	Stop.Name = "Stop"
	Stop.Parent = Page2
	Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stop.Position = UDim2.new(0.0549020506, 0, 0.0764637515, 0)
	Stop.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Stop.Font = Enum.Font.SourceSans
	Stop.Text = "Stop"
	Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
	Stop.TextScaled = true
	Stop.TextSize = 25.000
	Stop.TextWrapped = true
	Start.Name = "Start"
	Start.Parent = Page2
	Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Start.Position = UDim2.new(0.355535269, 0, 0.0764637515, 0)
	Start.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Start.Font = Enum.Font.SourceSans
	Start.Text = "Start"
	Start.TextColor3 = Color3.fromRGB(0, 0, 0)
	Start.TextScaled = true
	Start.TextSize = 25.000
	Start.TextWrapped = true
	TextButton.Name = "!"
	TextButton.Parent = Page2
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.Position = UDim2.new(0.354956299, 0, 0.32854709, 0)
	TextButton.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "!"
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextScaled = true
	TextButton.TextSize = 25.000
	TextButton.TextWrapped = true
	Hey.Name = "Hey"
	Hey.Parent = Page2
	Hey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hey.Position = UDim2.new(0.0549020506, 0, 0.330081195, 0)
	Hey.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hey.Font = Enum.Font.SourceSans
	Hey.Text = "Hey"
	Hey.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hey.TextScaled = true
	Hey.TextSize = 25.000
	Hey.TextWrapped = true
	Cool.Name = "Cool"
	Cool.Parent = Page2
	Cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Cool.Position = UDim2.new(0.677410305, 0, 0.330081195, 0)
	Cool.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Cool.Font = Enum.Font.SourceSans
	Cool.Text = "Cool"
	Cool.TextColor3 = Color3.fromRGB(0, 0, 0)
	Cool.TextScaled = true
	Cool.TextSize = 25.000
	Cool.TextWrapped = true
	Bruh.Name = "Bruh"
	Bruh.Parent = Page2
	Bruh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bruh.Position = UDim2.new(0.676831245, 0, 0.0759145617, 0)
	Bruh.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Bruh.Font = Enum.Font.SourceSans
	Bruh.Text = "Bruh"
	Bruh.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bruh.TextScaled = true
	Bruh.TextSize = 25.000
	Bruh.TextWrapped = true
	SUS.Name = "SUS"
	SUS.Parent = Page2
	SUS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SUS.Position = UDim2.new(0.0549020506, 0, 0.574909747, 0)
	SUS.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	SUS.Font = Enum.Font.SourceSans
	SUS.Text = "sus"
	SUS.TextColor3 = Color3.fromRGB(0, 0, 0)
	SUS.TextScaled = true
	SUS.TextSize = 25.000
	SUS.TextWrapped = true
	Hacker.Name = "Hacker"
	Hacker.Parent = Page2
	Hacker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hacker.Position = UDim2.new(0.356518745, 0, 0.574909747, 0)
	Hacker.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Hacker.Font = Enum.Font.SourceSans
	Hacker.Text = "Hacker"
	Hacker.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hacker.TextScaled = true
	Hacker.TextSize = 25.000
	Hacker.TextWrapped = true
	Me.Name = "Me"
	Me.Parent = Page2
	Me.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Me.Position = UDim2.new(0.675847769, 0, 0.573831201, 0)
	Me.Size = UDim2.new(0.265625, 0, 0.21041666, 0)
	Me.Font = Enum.Font.SourceSans
	Me.Text = "Me"
	Me.TextColor3 = Color3.fromRGB(0, 0, 0)
	Me.TextScaled = true
	Me.TextSize = 25.000
	Me.TextWrapped = true
	BackPage.Name = "BackPage"
	BackPage.Parent = Page2
	BackPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BackPage.Position = UDim2.new(0.11035347, 0, 0.854575157, 0)
	BackPage.Size = UDim2.new(0.152555302, 0, 0.081699349, 0)
	BackPage.Font = Enum.Font.SourceSansSemibold
	BackPage.Text = "Back"
	BackPage.TextColor3 = Color3.fromRGB(0, 0, 0)
	BackPage.TextScaled = true
	BackPage.TextSize = 14.000
	BackPage.TextWrapped = true
	
	Page2.Visible = false
	Page1.Visible = false
	game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.ButtonB  then
			if Page1.Visible == false then
				Page1.Visible = true
				wait(.2)
			else
				Page1.Visible = false
				wait(.2)
			end
		end 
	end)
	BackPage.Activated:Connect(function()
		Page1.Visible = true
		Page2.Visible = false
	end)
	NextPage.Activated:Connect(function()
		Page1.Visible = false
		Page2.Visible = true
	end)
	Hello.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello!", "All")
		Page1.Visible = false
	end)
	Ok.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ok", "All")
		Page1.Visible = false
	end)
	Hm.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("?", "All")
		Page1.Visible = false
	end)
	Yes.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yes", "All")
		Page1.Visible = false
	end)
	Come.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Come", "All")
		Page1.Visible = false
	end)
	Lol.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Lol", "All")
		Page1.Visible = false
	end)
	No.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No", "All")
		Page1.Visible = false
	end)
	WaitAMin.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Wait a min", "All")
		Page1.Visible = false
	end)
	WhoosVR.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Whoogives's VR", "All")
		Page1.Visible = false
	end)
	What.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("What", "All")
		Page1.Visible = false
	end)
	-- Page2:
	SUS.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sus", "All")
		Page2.Visible = false
	end)
	Cool.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Cool", "All")
		Page2.Visible = false
	end)
	Hey.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hey", "All")
		Page2.Visible = false
	end)
	Stop.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Stop", "All")
		Page2.Visible = false
	end)
	TextButton.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("!", "All")
		Page2.Visible = false
	end)
	Start.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Start", "All")
		Page2.Visible = false
	end)
	Hacker.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hacker", "All")
		Page2.Visible = false
	end)
	Me.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Me", "All")
		Page2.Visible = false
	end)
	Bruh.Activated:Connect(function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bruh", "All")
		Page2.Visible = false
	end)
	--
end
--

cam.CameraType = "Scriptable"
cam.HeadScale = options.headscale
game:GetService("StarterGui"):SetCore("VRLaserPointerMode", 0)
game:GetService("StarterGui"):SetCore("VREnableControllerModels", false)
print("Whoogive's VR by Whoogivesashit#2751")

local function createpart(size, name)
	local Part = Instance.new("Part", character)
	Part.CFrame = character.HumanoidRootPart.CFrame
	Part.Size = size
	Part.Transparency = 1
	Part.CanCollide = false
	Part.Anchored = true
	Part.Name = name
	return Part
end
local moveHandL = createpart(Vector3.new(1,1,2), "moveRH")
local moveHandR = createpart(Vector3.new(1,1,2), "moveLH")
local moveHead = createpart(Vector3.new(1,1,1), "moveH")
local R1down = false

workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position)
game:GetService("RunService").RenderStepped:connect(function()
	if R1down then
		cam.CFrame = cam.CFrame:Lerp(cam.CoordinateFrame + (moveHandR.CFrame*CFrame.Angles(-math.rad(options.righthandrotoffset.X),-math.rad(options.righthandrotoffset.Y),math.rad(180-options.righthandrotoffset.X))).LookVector * cam.HeadScale/2, 0.5)
	end
end)
local function bubble(plr,msg)
	game:GetService("Chat"):Chat(plr.Character.Head,msg,Enum.ChatColor.White)
end
if options.forcebubblechat == true then
	game.Players.PlayerAdded:connect(function(plr)
		plr.Chatted:connect(function(msg)
			game:GetService("Chat"):Chat(plr.Character.Head,msg,Enum.ChatColor.White)
		end)
	end)

	for i,v in pairs(game.Players:GetPlayers()) do
		v.Chatted:connect(function(msg)
			game:GetService("Chat"):Chat(v.Character.Head,msg,Enum.ChatColor.White)
		end)
	end
end
input.InputChanged:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		if key.Position.Z > 0.9 then
			R1down = true
		else
			R1down = false
		end
	end
end)
input.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		R1down = true
	end
end)
input.InputEnded:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonR1 then
		R1down = false
	end
end)

character["Left Arm"]:BreakJoints()
character["Right Arm"]:BreakJoints()
character["Left Leg"]:BreakJoints()
character["Right Leg"]:BreakJoints()
character["Left Arm"].Transparency = options.HandTransparency
character["Right Arm"].Transparency = options.HandTransparency
character["Torso"].Transparency = 0.8
character["Head"].Transparency = 1
character["Right Arm"].CanCollide = false
character["Left Arm"].CanCollide = false

if options.HideAllHats == true then
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("Accessory") then
			v.Handle.Transparency = 1
		end
	end
end

input.UserCFrameChanged:connect(function(part,move)
	if part == Enum.UserCFrame.Head then
		--move(head,cam.CFrame*move)
		moveHead.CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move - Vector3.new(0,1.7,0))
	elseif part == Enum.UserCFrame.LeftHand then
		--move(handL,cam.CFrame*move)
		moveHandL.CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move*CFrame.Angles(math.rad(options.righthandrotoffset.X),math.rad(options.righthandrotoffset.Y),math.rad(options.righthandrotoffset.Z)))
	elseif part == Enum.UserCFrame.RightHand then
		--move(handR,cam.CFrame*move)
		moveHandR.CFrame = cam.CFrame*(CFrame.new(move.p*(cam.HeadScale-1))*move*CFrame.Angles(math.rad(options.righthandrotoffset.X),math.rad(options.righthandrotoffset.Y),math.rad(options.righthandrotoffset.Z)))
	end
end)
while runservice["Heartbeat"]:Wait() do
	character["HumanoidRootPart"].CFrame = moveHead.CFrame
	character["Left Arm"].CFrame = moveHandL.CFrame
	character["Right Arm"].CFrame = moveHandR.CFrame
end
