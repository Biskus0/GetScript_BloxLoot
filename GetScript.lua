local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function CreateButton(text, pos, parent, callback)
    local button = Instance.new("TextButton", parent)
    button.Size = UDim2.new(0, 145, 0, 60)
    button.Position = pos
    button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

    button.Activated:Connect(function()
        callback()
        parent.Parent:Destroy()
    end)
end

local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame", screenGui)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 350, 0, 100)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 12)

CreateButton("Mobile", UDim2.new(0, 20, 0.5, -30), mainFrame, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Sosiskomras/Blox-Loot/refs/heads/main/MobileMain.lua", true))()
end)

CreateButton("PC", UDim2.new(0, 185, 0.5, -30), mainFrame, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sosiskomras/Blox-Loot/refs/heads/main/Main.lua", true))()
end)
