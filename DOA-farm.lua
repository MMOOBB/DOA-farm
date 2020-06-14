-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_Roundify_12px = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_Roundify_12px = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.371744275, 0, 0.142857149, 0)
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(34, 34, 34)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 250, 0, 50)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "DOA Farm"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 32.000

TextLabel_Roundify_12px.Name = "TextLabel_Roundify_12px"
TextLabel_Roundify_12px.Parent = TextLabel
TextLabel_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Roundify_12px.BackgroundTransparency = 1.000
TextLabel_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
TextLabel_Roundify_12px.Image = "rbxassetid://3570695787"
TextLabel_Roundify_12px.ImageColor3 = Color3.fromRGB(62, 62, 62)
TextLabel_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextLabel_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextLabel_Roundify_12px.SliceScale = 0.120

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.100000001, 0, 0.5, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 32.000

TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px.Parent = TextButton
TextButton_Roundify_12px.Active = true
TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_12px.BackgroundTransparency = 1.000
TextButton_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_12px.Selectable = true
TextButton_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(62, 62, 62)
TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px.SliceScale = 0.120

Toggle.Name = "Toggle"
Toggle.Parent = TextButton
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.899999976, 0, 0, 0)
Toggle.Size = UDim2.new(0, 20, 0, 50)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(255, 0, 0)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

local UserInputService = game:GetService("UserInputService")

local gui = Frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)


--functions

function tp(x,y,z)
-- SETTINGS START
local valtomove = 4
-- SETTINGS END

game:getService("RunService"):BindToRenderStep("tp",0,function()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(11)
end)


for i=0,2,1 do
if x < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.X then
while x < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.X do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if z < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Z then
while z < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Z do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z-valtomove))
end
end
if x > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.X then
while x > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.X do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if z > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Z then
while z > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Z do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+valtomove))
end
end
if y < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y then
while y < game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if y > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y then
while y > game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,y,z))


game:getService("RunService"):UnbindFromRenderStep("tp")
end

function getC4()
local Backpack = game.Players.LocalPlayer.Backpack
local Character = game.Players.LocalPlayer.Character
for i,v in pairs(Backpack:GetChildren()) do
    if v:FindFirstChild("C4") then
        v.Parent = Character
        break
    end
end
end

function moveTo(item)
aim = item.AbsolutePosition
for i=1,5,1 do
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
moveX, moveY = (aim.x - mouse.x), (aim.y - mouse.y)
mousemoverel(moveX/2,moveY/2+10)
wait(.08)
end
end

function buyC4()
local rarities = {"UNCOMMON","RARE","EPIC","LEGENDARY"}
for j=0,7,1 do
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.GameGuiStatic.NPCVendorStatic.ScaledContent.VendorItemSelectorStatic.Stock:GetChildren()) do
if not v:FindFirstChild("Item_Icon") then continue end
if v.Item_Icon.LootItemViewportSceneTemp.Model:FindFirstChild("Meshes/C4_Cube") then
if table.find(rarities,v.RarityLabel.Text) then
aim = v.Item_Icon
moveTo(aim)
mouse1click()
local purchase = v.Parent.Parent.Parent.VendorItemDetailsStatic.Item.Purchase.Purchase
moveTo(purchase)
mouse1click()
break
end
end
end
wait(.5)
end
end

function pressE()
keypress(0x45)
wait(.55)
keyrelease(0x45)
wait(.08)
end

function pressTAB()

keypress(0x09)
wait(.08)
keyrelease(0x09)
end

function pressB()
keypress(0x42)
wait(1.2)
keyrelease(0x42)
wait(.08)
end

function escapePrison()
wait(10)
tp(-526,109,-1664)
pressB()
end

function countC4()
local count = 0
local backpack = game.Players.LocalPlayer.PlayerGui.GameGuiStatic.QuickMenuStatic.Menus.InventoryStatic.PersonalSlotsStatic.ScaledContent
local containers = {"QuickSlots","Backpack"}
for j, con in pairs(containers) do
for i,v in pairs(backpack[con].Container:GetChildren()) do
if not v:FindFirstChild("ViewportIcon") then continue end
if not v.ViewportIcon:FindFirstChild("LootItemViewportSceneTemp") then continue end
if v.ViewportIcon.LootItemViewportSceneTemp.Model:FindFirstChild("Meshes/C4_Cube") then
if v.Quantity.Text == "" then 
    count = count + 1
else
   quan = tostring(v.Quantity.Text)
   count = count + string.sub(quan,-1)
end
end
end
end
return count
end


function init()
tp(305,130,-3222) -- Near Bank
tp(364,138,-3222) -- Up Bank

if game.Workspace.StaticEntity.BankSystem:FindFirstChild("Lasers") then
game.Workspace.StaticEntity.BankSystem.Lasers:Destroy()
end


game:getService("RunService"):BindToRenderStep("checkstate",0,function()
if tostring(game.Workspace.StaticEntity.BankSystem.ExteriorBankAccessDoors.Part.BackLight.Color) == "0, 1, 1" then
bankopen = true
else
bankopen = false
end
end)
wait(1)
end

--main

local togglefarm = false
local debounce = true

TextButton.MouseButton1Down:connect(function()
	if togglefarm then
		togglefarm = false
		Toggle.ImageColor3 = Color3.fromRGB(255, 0, 0)
		TextButton.Text = "OFF"
	else
		togglefarm = true
		Toggle.ImageColor3 = Color3.fromRGB(0, 255, 0)
		TextButton.Text = "ON"
	end
	if debounce then
		     debounce = false
			init()
		end
end)




while wait() do
if bankopen and togglefarm then
if tostring(game.Players.LocalPlayer.Team) == "Prisoner" then
escapePrison()
end
tp(392,112,-3221) -- Out Vault
for i=1,2,1 do
getC4()
wait(.08)
pressE()
end
if tostring(game.Players.LocalPlayer.Team) == "Prisoner" then
escapePrison()
end
tp(333,111,-3234) -- In Vault
wait(8)
if tostring(game.Players.LocalPlayer.Team) == "Prisoner" then
escapePrison()
end
for i=0,45,1 do
pressE()
if tostring(game.Players.LocalPlayer.Team) == "Prisoner" then
escapePrison()
break
end
end
if tostring(game.Players.LocalPlayer.Team) == "Prisoner" then
escapePrison()
end
tp(-1019,114,-3026) -- City Base
wait(60)
tp(-1061,114,-3003) -- Black Market
for i=0,3,1 do
pressE()
end
buyC4()
while countC4() < 2 do 
wait(30)
buyC4()
end
pressTAB()
wait(2)
pressE()
if not bankopen and togglefarm then
wait(180)
tp(305,130,-3222) -- Near Bank
tp(364,138,-3222) -- Up Bank
end
end
end
