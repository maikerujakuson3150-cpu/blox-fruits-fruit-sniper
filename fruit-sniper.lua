if not (game.PlaceId == 79091703265657 or game.PlaceId == 85211729168715 or game.PlaceId == 100117331123089) then
    return
end

local EZFruitSniper = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Tip = Instance.new("TextLabel")
local InnerFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local StatusLabel = Instance.new("TextLabel")
local TweeningStatus = Instance.new("TextLabel")
local FruitType = Instance.new("TextLabel")
local FruitDistance = Instance.new("TextLabel")
local AbortButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

EZFruitSniper.Name = "EZFruitSniper"
EZFruitSniper.Parent = game:GetService("CoreGui")
EZFruitSniper.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = EZFruitSniper
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.Position = UDim2.new(
    0, (workspace.CurrentCamera.ViewportSize.X / 2) - (Frame.AbsoluteSize.X / 2),
    0, (workspace.CurrentCamera.ViewportSize.Y / 2) - (Frame.AbsoluteSize.Y / 2)
)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 0, 127)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 250
UIGradient.Parent = Frame

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "EZ Fruit Sniper"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Tip.Name = "Tip"
Tip.Parent = Frame
Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tip.BackgroundTransparency = 1.000
Tip.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tip.BorderSizePixel = 0
Tip.Position = UDim2.new(0, 15, 0.1, 0)
Tip.Size = UDim2.new(0, 300, 0, 23)
Tip.Font = Enum.Font.SourceSans
Tip.Text = "This script finds fruits automatically"
Tip.TextColor3 = Color3.fromRGB(255, 255, 255)
Tip.TextSize = 14.000
Tip.TextXAlignment = Enum.TextXAlignment.Left

InnerFrame.Name = "InnerFrame"
InnerFrame.Parent = Frame
InnerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InnerFrame.BackgroundTransparency = 0.900
InnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFrame.BorderSizePixel = 0
InnerFrame.Position = UDim2.new(0.0299999993, 0, 0.203333333, 0)
InnerFrame.Size = UDim2.new(0, 471, 0, 226)

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = InnerFrame

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = InnerFrame
StatusLabel.RichText = true
StatusLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.BackgroundTransparency = 1.000
StatusLabel.Position = UDim2.new(0, 15, 0.05, 0)
StatusLabel.Size = UDim2.new(0, 440, 0, 30)
StatusLabel.Font = Enum.Font.SourceSansBold
StatusLabel.Text = "Status:"
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextSize = 18.000
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left

TweeningStatus.Name = "TweeningStatus"
TweeningStatus.Parent = InnerFrame
TweeningStatus.RichText = true
TweeningStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TweeningStatus.BackgroundTransparency = 1.000
TweeningStatus.Position = UDim2.new(0, 15, 0.25, 0)
TweeningStatus.Size = UDim2.new(0, 440, 0, 30)
TweeningStatus.Font = Enum.Font.SourceSansBold
TweeningStatus.Text = "Tweening Status:"
TweeningStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
TweeningStatus.TextSize = 18.000
TweeningStatus.TextXAlignment = Enum.TextXAlignment.Left

FruitDistance.Name = "FruitDistance"
FruitDistance.Parent = InnerFrame
FruitDistance.RichText = true
FruitDistance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitDistance.BackgroundTransparency = 1.000
FruitDistance.Position = UDim2.new(0, 15, 0.45, 0)
FruitDistance.Size = UDim2.new(0, 440, 0, 30)
FruitDistance.Font = Enum.Font.SourceSansBold
FruitDistance.Text = "FruitDistance:"
FruitDistance.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitDistance.TextSize = 18.000
FruitDistance.TextXAlignment = Enum.TextXAlignment.Left

FruitType.Name = "FruitType"
FruitType.Parent = InnerFrame
FruitType.RichText = true
FruitType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitType.BackgroundTransparency = 1.000
FruitType.Position = UDim2.new(0, 15, 0.65, 0)
FruitType.Size = UDim2.new(0, 440, 0, 30)
FruitType.Font = Enum.Font.SourceSansBold
FruitType.Text = "Fruit Type:"
FruitType.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitType.TextSize = 18.000
FruitType.TextXAlignment = Enum.TextXAlignment.Left

AbortButton.Name = "AbortButton"
AbortButton.Parent = InnerFrame
AbortButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AbortButton.BackgroundTransparency = 0.900
AbortButton.BorderColor3 = Color3.fromRGB(204, 204, 204)
AbortButton.BorderSizePixel = 0
AbortButton.Position = UDim2.new(0.5, -55, 0.8, 0)
AbortButton.Size = UDim2.new(0, 110, 0, 35)
AbortButton.Font = Enum.Font.SourceSansBold
AbortButton.Text = "ABORT"
AbortButton.TextColor3 = Color3.fromRGB(255, 107, 107)
AbortButton.TextSize = 18.000

UICorner_3.CornerRadius = UDim.new(0, 50)
UICorner_3.Parent = AbortButton

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(255, 107, 107)
UIStroke.Thickness = 2
UIStroke.Transparency = 0.5
UIStroke.Parent = AbortButton

local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CommF = ReplicatedStorage.Remotes.CommF_

local AutoExec = true

AbortButton.MouseButton1Click:Connect(function()
    AutoExec = false
    AbortButton.Text = "ABORTED"
    task.wait(1)
    EZFruitSniper:Destroy() 
end)

local function UpdateStatus(property, value)
    if property == "Status" then
        if value then
            StatusLabel.Text = 'Status: <font color="rgb(0, 255, 0)">Fruit found</font>'
        else
            StatusLabel.Text = 'Status: <font color="rgb(255, 0, 0)">Fruit not found, server hopping...</font>'
        end
    elseif property == "TweeningStatus" then
        if value then
            TweeningStatus.Text = 'Tweening Status: <font color="rgb(0, 255, 0)">Tweening...</font>'
        else
            TweeningStatus.Text = 'Tweening Status:'
        end
    elseif property == "FruitType" then
        FruitType.Text = "Fruit Type: " .. tostring(value)
    elseif property == "FruitDistance" then
        FruitDistance.Text = "FruitDistance: " .. tostring(value) .. "m"
    end
end

local function FindFruit()
    for _, v in ipairs(workspace:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Handle") and string.find(v.Name, "Fruit") then
            return v
        end
    end
    return nil
end

local function TweenTo(pos)
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Distance = (HumanoidRootPart.Position - pos).Magnitude
    local Time = Distance / 200
    local Tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(Time, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    Tween:Play()
    Tween.Completed:Wait()
end

local function StoreFruit(fruit)
    CommF:InvokeServer("StoreFruit", fruit:GetAttribute("OriginalName"), fruit)
end

local function ServerHop()
    local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/maikerujakuson3150-cpu/serverhopforbf/refs/heads/main/hopper.lua"))()
    Module:Teleport(game.PlaceId)
end

local function Main()
    UpdateStatus("Status", false)
    local Fruit = FindFruit()
    
    if Fruit then
        UpdateStatus("Status", true)
        UpdateStatus("FruitType", Fruit.Name)
        
        local Handle = Fruit:FindFirstChild("Handle")
        if Handle then
            local Distance = (LocalPlayer.Character.HumanoidRootPart.Position - Handle.Position).Magnitude
            UpdateStatus("FruitDistance", math.floor(Distance))
            
            UpdateStatus("TweeningStatus", true)
            TweenTo(Handle.Position)
            UpdateStatus("TweeningStatus", false)
            
            task.wait(1)
            StoreFruit(Fruit)
            task.wait(1)
            if AutoExec then
                queue_on_teleport()
                ServerHop()
            end
        end
    else
        if AutoExec then
            UpdateStatus("Status", false)
            task.wait(1)
            ServerHop()
        end
    end
end

Main()
