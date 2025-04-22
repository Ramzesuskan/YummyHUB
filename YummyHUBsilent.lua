-- Silent Aim Script for GitHub (Main Tab Compatible)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Проверка, есть ли Tabs.Main
if not Tabs or not Tabs.Main then
    warn("Silent Aim: Tabs.Main не найден!")
    return
end

local SilentAim = {
    Enabled = false,
    FOV = 80,
    ShowFOV = true,
    Target = nil,
    FOVCircle = nil
}

-- Создание круга FOV
local function CreateFOVCircle()
    local circle = Drawing.new("Circle")
    circle.Transparency = 1
    circle.Thickness = 2
    circle.Color = Color3.fromRGB(255, 255, 255)
    circle.Filled = false
    circle.Radius = SilentAim.FOV
    circle.Position = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
    circle.Visible = SilentAim.ShowFOV and SilentAim.Enabled
    return circle
end

-- Обновление круга
local function UpdateFOVCircle()
    if SilentAim.FOVCircle then
        SilentAim.FOVCircle.Radius = SilentAim.FOV
        SilentAim.FOVCircle.Visible = SilentAim.ShowFOV and SilentAim.Enabled
        SilentAim.FOVCircle.Position = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
    end
end

-- Поиск цели
local function FindTarget()
    if not SilentAim.Enabled then return nil end

    local closestTarget = nil
    local closestDistance = math.huge
    local screenCenter = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                if onScreen then
                    local distance = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
                    if distance < SilentAim.FOV and distance < closestDistance then
                        closestDistance = distance
                        closestTarget = player.Character
                    end
                end
            end
        end
    end

    return closestTarget
end

-- Инициализация
SilentAim.FOVCircle = CreateFOVCircle()
UpdateFOVCircle()

-- Цикл обновления
RunService.RenderStepped:Connect(function()
    SilentAim.Target = FindTarget()
    UpdateFOVCircle()
end)

Camera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateFOVCircle)

-- UI
local SilentAimSection = Tabs.Main:AddSection("Silent Aim Settings")

SilentAimSection:AddToggle("SilentAimEnabled", {
    Title = "Enable Silent Aim",
    Description = "Turns Silent Aim on/off",
    Default = SilentAim.Enabled,
    Callback = function(Value)
        SilentAim.Enabled = Value
        UpdateFOVCircle()
        if Fluent then
            Fluent:Notify({
                Title = "Silent Aim",
                Content = Value and "Enabled" or "Disabled",
                Duration = 2
            })
        end
    end
})

SilentAimSection:AddToggle("ShowFOVToggle", {
    Title = "Show FOV Circle",
    Description = "Display the FOV circle on screen",
    Default = SilentAim.ShowFOV,
    Callback = function(Value)
        SilentAim.ShowFOV = Value
        UpdateFOVCircle()
    end
})

SilentAimSection:AddSlider("SilentFOVSlider", {
    Title = "FOV Radius: "..SilentAim.FOV,
    Description = "Adjust how large the Silent Aim area is",
    Default = SilentAim.FOV,
    Min = 20,
    Max = 300,
    Rounding = 1,
    Callback = function(Value)
        SilentAim.FOV = Value
        SilentAimSection.Elements.SilentFOVSlider:SetTitle("FOV Radius: "..Value)
        UpdateFOVCircle()
    end
})
