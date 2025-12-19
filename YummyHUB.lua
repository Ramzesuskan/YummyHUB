--[[
created and leaked by
                                                                                                                                                                                         
                                                                                                                        ░▒▒▒▒                                                                                     
                       ▒████████████████████████████████████                                                    ░████████▒ ░████████▒                                                                             
                       ▒█▓ ██████▓         ██  ████████                   ▓█████████████░                    ░██░██████        ██ ██████                                                                          
                       ▒█▓░███           ██▒ ███████░              ░███████████▒      ░██████████          ░██ ███████         ▒██ ███████      ██████████████████████████████████▒                               
                       ▒███             ██ ░██████               ███ ████████              ██████         ██ ░███████░          ██  ███████           ▓██░ ████████░       ████ ███████                           
                       ▒█             ▓██ ███████              ░██  █████████                ░███        ██  ████████           ██▒ ████████           ██░ ████████         ▓██▓ ████████                         
                                     ██▒ ███████               ██  ██████████                            ██ █████████           ███ ▓███████▒          ██░ ████████          ███  ████████                        
                              ▒███████▒ █████████████         ▒██  ██████████   ██████████████████████████▓ █████████           ███ ▓███████▓          ██░ ████████          ███  ▓███████░                       
                                   ▒█▓ ███████                ▒██  ██████████         ▓███ ████████      ██ ▒████████           ███ ████████           ██░ ████████          ███  ▓███████░                       
                                   ██  ███████                 ██  ██████████          ███ ████████       █▒ ████████░          ██  ███████▓           ██░ ████████          ███  ████████                        
                                  ██░ ███████▓                 ░██  █████████          ███ ████████        ██ ████████         ░██ ███████░            ██░ ████████          ███ ▓███████                         
                                  ██  ███████▓                   ███ ████████          ███ ████████          █▓ ██████░        ██▓███████              ██░ ████████         ███ ███████▓                          
                                 ░██  ████████                     ░██████████        █████████████            █████████      ████████               ▓███░ █████████      ███████████                             
                                 ██████████████████                     ▒█████████████████░      ▒█                ▒██████████████              █████████████████████████████▓▒                                   
                                                                                                                                                                                                                  


im owner of this script created only by myself im leaking it because i hate crimcorp u can do anything u want with it i hope i will help someone
if u interested in developing scripts for criminality u can dm me i have more sources
--]]


-- ================ KEY CONFIGURATION ================
local KEY_CONFIG = {
    CORRECT_KEY = "HellYeahNiggaz",
    DISCORD_LINK = "https://discord.gg/qx3vVFWMtM",
    WINDOW_TITLE = "YummyHUB | Key Verification",
    WINDOW_SUBTITLE = "Get the key in our Discord",
    NOTIFICATION_TITLE = "YummyHUB",
    NOTIFICATION_CONTENT = "Key verification required"
}

-- ================ KEY VERIFICATION SYSTEM ================
local function safeLoadLibrary(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)
    return success and result or nil
end

local function createKeyVerificationWindow()
    local Fluent = safeLoadLibrary("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua")
    if not Fluent then 
        warn("Failed to load Fluent library")
        return false 
    end

    local KeyWindow = Fluent:CreateWindow({
        Title = KEY_CONFIG.WINDOW_TITLE,
        SubTitle = KEY_CONFIG.WINDOW_SUBTITLE,
        TabWidth = 110,
        Size = UDim2.fromOffset(400, 300),
        Acrylic = true,
        Theme = "Dark"
    })

    local KeyTab = KeyWindow:AddTab({ Title = "Key", Icon = "lock" })
    local keyVerified = false

    local KeyInput = KeyTab:AddInput("KeyInput", {
        Title = "Enter Key:",
        Default = "",
        PlaceholderText = "Get key in Discord",
        Numeric = false,
        Finished = false,
        Callback = function() end
    })

    local StatusLabel = KeyTab:AddParagraph({
        Title = "Status:",
        Content = "Waiting for key input..."
    })

    KeyTab:AddButton({
        Title = "Join Discord",
        Description = "Click to copy invite link",
        Callback = function()
            setclipboard(KEY_CONFIG.DISCORD_LINK)
            Fluent:Notify({
                Title = "Discord",
                Content = "Discord link copied to clipboard!",
                Duration = 5
            })
        end
    })

    KeyTab:AddButton({
        Title = "Verify Key",
        Description = "Click to verify your key",
        Callback = function()
            if KeyInput.Value == KEY_CONFIG.CORRECT_KEY then
                keyVerified = true
                StatusLabel.Content = "✅ Key verified! Loading hub..."
                Fluent:Notify({
                    Title = "Success",
                    Content = "Key verified successfully!",
                    Duration = 2
                })
                task.wait(1.5)
                KeyWindow:Destroy()
            else
                StatusLabel.Content = "❌ Invalid key! Get it in Discord."
                Fluent:Notify({
                    Title = "Error",
                    Content = "Invalid key entered!",
                    Duration = 5
                })
            end
        end
    })

    task.spawn(function()
        wait(0.5)
        KeyInput:CaptureFocus()
    end)

    repeat task.wait() until keyVerified
    return true
end

-- ================ MAIN SCRIPT LOADER ================
if createKeyVerificationWindow() then

--criminality

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "YummyHUB |",
    SubTitle = "By 7g0d [CRIMINALITY]",
    TabWidth = 110,
    Size = UDim2.fromOffset(700, 400),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftAlt-- Used when theres no MinimizeKeybind
})




--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Visual = Window:AddTab({ Title = "Visual", Icon = "eye" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "refresh-cw" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

--sound

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://104820311651633"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()



do
    Fluent:Notify({
        Title = "CRIMINALITY",
        Content = "Script By GOD (7g0d)",
        SubContent = "Rape Hack Activated", -- Optional
        Duration = 15 -- Set to nil to make the notification not disappear





})

	Tabs.Main:AddButton({
        Title = "Legit-Bot",
        Description = "the best legit bot script for crim u will never find sum better",
        Callback = function(esp)

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://4812830901"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Legit Aimbot | By 7g0d",
    LoadingTitle = "Yummy Legit-Bot",
    LoadingSubtitle = "by 7g0d",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "LegitAimbot", 
        FileName = "AimConfig"
    },
    KeySystem = false,
})

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService") 
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Settings
local Settings = {
    -- Main Aimbot Settings
    AimbotEnabled = false,
    AimbotActive = false,
    Smoothness = 0.05,
    Prediction = 0.1,
    HeadOffset = 0.7,
    -- Visuals
    WallCheck = false,
    IgnoreDowned = false,
    FOVRadius = 150,
    ShowFOV = false,
    FOVColor = Color3.fromRGB(255, 255, 255),
    ShowSnaplines = true,
    SnaplineColor = Color3.fromRGB(255, 79, 87),
    EffectiveFOVMultiplier = 1.0,
    -- Internal
    CapturedTarget = nil,
    CapturedPlayer = nil,
    RMBPressed = false
}

-- aimbot ignore list
local BannedPlayers = {
    "",
    "",
    ""
}

-- FOV Circle
local circle = Drawing.new("Circle")
circle.Color = Settings.FOVColor
circle.Thickness = 1
circle.NumSides = 100
circle.Filled = false
circle.Visible = false
circle.Radius = Settings.FOVRadius
circle.Position = Vector2.new(0, 60)

-- Snapline
local snapline = Drawing.new("Line")
snapline.Color = Settings.SnaplineColor
snapline.Thickness = 1
snapline.Transparency = 1
snapline.Visible = false

local Mouse = LocalPlayer:GetMouse()

-- first person checker
local function IsFirstPerson()
    local character = LocalPlayer.Character
    if not character then return false end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return false end
    local head = character:FindFirstChild("Head")
    if not head then return false end
    local cameraPos = Camera.CFrame.Position
    local headPos = head.Position
    local distance = (cameraPos - headPos).Magnitude
    return distance < 2
end

-- Calculate effective capture radius with dynamic multiplier
local function GetEffectiveFOVRadius()
    local baseRadius = Settings.FOVRadius
    if baseRadius >= 140 and baseRadius <= 150 then
        return (baseRadius / 1.09) * 1.5
    end
    return baseRadius * 1.5
end

-- Show notification
local function ShowToggleNotification(name, value)
    Rayfield:Notify({
        Title = name,
        Content = value and "Enabled" or "Disabled",
        Duration = 1.5,
        Image = 4483362458
    })
end

-- Get torso position
local function GetTorsoPosition(player)
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local torso = humanoid.RootPart or player.Character:FindFirstChild("UpperTorso") or player.Character:FindFirstChild("Torso")
        return torso and torso.Position
    end
    return nil
end

-- Enhanced visibility check
local function IsVisible(part)
    if not Settings.WallCheck then return true end
    local origin = Camera.CFrame.Position
    local direction = (part.Position - origin).Unit * 500
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    rayParams.FilterDescendantsInstances = {LocalPlayer.Character}
    local result = workspace:Raycast(origin, direction, rayParams)
    if not result then return true end
    local hitPart = result.Instance
    if hitPart:IsDescendantOf(part.Parent) then
        return true
    end
    local hitPlayer = Players:GetPlayerFromCharacter(hitPart:FindFirstAncestorOfClass("Model"))
    if hitPlayer and hitPlayer ~= LocalPlayer then
        return true
    end
    return false
end

-- Target validation
local function IsTargetValid(player)
    if not player or not player.Character then return false end
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return false end
    
    for _, bannedName in ipairs(BannedPlayers) do
        if player.Name == bannedName then
            return false
        end
    end
    
    if Settings.IgnoreDowned and humanoid.Health < 15 then
        return false
    end
    return humanoid.Health > 0
end

local function GetHeadPosition(player)
    local head = player.Character:FindFirstChild("Head")
    return head and (head.Position - Vector3.new(0, Settings.HeadOffset, 0))
end

local function FindClosestTarget()
    if not IsFirstPerson() then return nil, nil end
    local closestPart, closestPlayer, shortestDistance = nil, nil, math.huge
    local effectiveRadius = GetEffectiveFOVRadius()
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and IsTargetValid(player) then
            local head = player.Character:FindFirstChild("Head")
            if head then
                if IsVisible(head) then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(GetHeadPosition(player))
                    if onScreen then
                        local distance = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                        if distance < effectiveRadius and distance < shortestDistance then
                            shortestDistance = distance
                            closestPart = head
                            closestPlayer = player
                        end
                    end
                end
            end
        end
    end
    return closestPart, closestPlayer
end

-- Main aiming function
local function UpdateAim()
    if Settings.AimbotEnabled and Settings.AimbotActive then
        if not Settings.CapturedTarget or not IsTargetValid(Settings.CapturedPlayer) or not IsVisible(Settings.CapturedTarget) then
            -- Если текущая цель недействительна или невидима, ищем новую цель
            Settings.CapturedTarget, Settings.CapturedPlayer = FindClosestTarget()
        end

        if Settings.CapturedPlayer then
            for _, bannedName in ipairs(BannedPlayers) do
                if Settings.CapturedPlayer.Name == bannedName then
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + Vector3.new(0, 1, 0))
                    Settings.CapturedTarget = nil
                    Settings.CapturedPlayer = nil
                    return
                end
            end
        end

        if Settings.CapturedTarget then
            local targetPosition = GetHeadPosition(Settings.CapturedPlayer)
            if targetPosition then
                if Settings.CapturedTarget.Velocity then
                    targetPosition = targetPosition + (Settings.CapturedTarget.Velocity * Settings.Prediction)
                end
                local targetCFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
                Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, Settings.Smoothness)
            end
        end
    else

        Settings.CapturedTarget = nil
        Settings.CapturedPlayer = nil
    end
end

-- Update visuals
RunService.RenderStepped:Connect(function()
    -- FOV Circle
    circle.Visible = Settings.ShowFOV
    circle.Radius = Settings.FOVRadius
    circle.Position = Vector2.new(Mouse.X, Mouse.Y + 60)
    circle.Color = Settings.FOVColor


    snapline.Visible = Settings.ShowSnaplines and Settings.CapturedTarget ~= nil
    if snapline.Visible then
        local screenPos = Camera:WorldToViewportPoint(Settings.CapturedTarget.Position)
        snapline.From = Vector2.new(Mouse.X, Mouse.Y + 60)
        snapline.To = Vector2.new(screenPos.X, screenPos.Y)
        snapline.Color = Settings.SnaplineColor
    end
end)

-- Input handling
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    -- Toggle Aimbot with X key
    if input.KeyCode == Enum.KeyCode.X then
        Settings.AimbotEnabled = not Settings.AimbotEnabled
        ShowToggleNotification("Aimbot", Settings.AimbotEnabled)
    end
    -- Right Mouse Button pressed (activate aimbot)
    if input.UserInputType == Enum.UserInputType.MouseButton2 and IsFirstPerson() then
        Settings.RMBPressed = true
        if Settings.AimbotEnabled then
            Settings.AimbotActive = true
        end
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    -- Right Mouse Button released (deactivate aimbot)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        Settings.RMBPressed = false
        Settings.AimbotActive = false
    end
end)


RunService.RenderStepped:Connect(UpdateAim)


local LegitTab = Window:CreateTab("Legit", 4483362458)


LegitTab:CreateSection("Aimbot Settings")
LegitTab:CreateToggle({
    Name = "Aimbot (X Key)",
    CurrentValue = Settings.AimbotEnabled,
    Callback = function(Value)
        Settings.AimbotEnabled = Value
        ShowToggleNotification("Aimbot", Value)
    end,
})

-- FOV Settings
LegitTab:CreateSection("FOV Settings")
LegitTab:CreateToggle({
    Name = "Show FOV Circle",
    CurrentValue = Settings.ShowFOV,
    Callback = function(Value)
        Settings.ShowFOV = Value
        ShowToggleNotification("FOV Circle", Value)
    end,
})
LegitTab:CreateSlider({
    Name = "FOV Radius",
    Range = {50, 150},
    Increment = 5,
    CurrentValue = 150,
    Callback = function(Value)
        Settings.FOVRadius = Value
        circle.Radius = Value
        -- Динамически обновляем множитель для эффективного радиуса
        if Value >= 140 and Value <= 150 then
            Settings.EffectiveFOVMultiplier = 1/1.3
        else
            Settings.EffectiveFOVMultiplier = 1.0
        end
    end,
})
LegitTab:CreateColorPicker({
    Name = "FOV Color",
    Color = Settings.FOVColor,
    Callback = function(Color)
        Settings.FOVColor = Color
        circle.Color = Color
    end
})

-- Snapline Settings
LegitTab:CreateSection("Snapline Settings")
LegitTab:CreateToggle({
    Name = "Show Snaplines",
    CurrentValue = Settings.ShowSnaplines,
    Callback = function(Value)
        Settings.ShowSnaplines = Value
        ShowToggleNotification("Snaplines", Value)
    end,
})
LegitTab:CreateColorPicker({
    Name = "Snapline Color",
    Color = Settings.SnaplineColor,
    Callback = function(Color)
        Settings.SnaplineColor = Color
        snapline.Color = Color
    end
})

-- Aim Settings
LegitTab:CreateSection("Aim Settings")
LegitTab:CreateSlider({
    Name = "Smoothness",
    Range = {1, 50},
    Increment = 1,
    CurrentValue = 5,
    Callback = function(Value)
        Settings.Smoothness = Value / 100
    end,
})
LegitTab:CreateSlider({
    Name = "Prediction",
    Range = {0, 500},
    Increment = 10,
    CurrentValue = 100,
    Callback = function(Value)
        Settings.Prediction = Value / 1000
    end,
})
LegitTab:CreateSlider({
    Name = "Head Offset",
    Range = {0, 2},
    Increment = 0.1,
    CurrentValue = 0.7,
    Callback = function(Value)
        Settings.HeadOffset = Value
    end,
})

-- Target Settings
LegitTab:CreateSection("Target Settings")
LegitTab:CreateToggle({
    Name = "Wall Check",
    CurrentValue = Settings.WallCheck,
    Callback = function(Value)
        Settings.WallCheck = Value
        ShowToggleNotification("Wall Check", Value)
    end,
})
LegitTab:CreateToggle({
    Name = "Ignore Downed",
    CurrentValue = Settings.IgnoreDowned,
    Callback = function(Value)
        Settings.IgnoreDowned = Value
        ShowToggleNotification("Ignore Downed", Value)
    end,
})

-- Misc
LegitTab:CreateSection("Miscellaneous")
LegitTab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
        circle:Remove()
        snapline:Remove()
    end,
})

Rayfield:LoadConfiguration()
				
			Fluent:Notify({
                        Title = "Legit-Bot",
                        Content = "Already Loaded",
                        Duration = 10
                        })

			end





})
	
	
        Tabs.Main:AddButton({
        Title = "Recoil Control",
        Description = "u can change recoil for any gun",
        Callback = function()


			Fluent:Notify({
                        Title = "Recoil Control",
                        Content = "Already Loaded",
                        Duration = 10
                        })




local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://3043029786"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


   
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Recoil Control | by 7g0d",
    LoadingTitle = "Recoil Settings",
    LoadingSubtitle = "by 7g0d",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "RecoilConfig",
        FileName = "Settings.json"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
})

-- Store original recoil values
local OriginalRecoilValues = {}
local Settings = {
    AngleX_Min = 0,
    AngleX_Max = 0,
    AngleY_Min = 0,
    AngleY_Max = 0,
    AngleZ_Min = 0,
    AngleZ_Max = 0,
}

local Player = game:GetService("Players").LocalPlayer

local function SaveOriginalRecoilIfNeeded()
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "EquipTime") then
            if not OriginalRecoilValues[v] then
                OriginalRecoilValues[v] = {
                    AngleX_Min = v.AngleX_Min,
                    AngleX_Max = v.AngleX_Max,
                    AngleY_Min = v.AngleY_Min,
                    AngleY_Max = v.AngleY_Max,
                    AngleZ_Min = v.AngleZ_Min,
                    AngleZ_Max = v.AngleZ_Max,
                }
            end
        end
    end
end

local function ApplyCurrentSettings()
    SaveOriginalRecoilIfNeeded()
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "EquipTime") then
            v.AngleX_Min = Settings.AngleX_Min
            v.AngleX_Max = Settings.AngleX_Max
            v.AngleY_Min = Settings.AngleY_Min
            v.AngleY_Max = Settings.AngleY_Max
            v.AngleZ_Min = Settings.AngleZ_Min
            v.AngleZ_Max = Settings.AngleZ_Max
        end
    end
end

local function ResetToOriginal()
    for v, original in pairs(OriginalRecoilValues) do
        if type(v) == "table" and rawget(v, "EquipTime") then
            v.AngleX_Min = original.AngleX_Min
            v.AngleX_Max = original.AngleX_Max
            v.AngleY_Min = original.AngleY_Min
            v.AngleY_Max = original.AngleY_Max
            v.AngleZ_Min = original.AngleZ_Min
            v.AngleZ_Max = original.AngleZ_Max
        end
    end

    Rayfield:Notify({
        Title = "Recoil Control",
        Content = "Recoil reset to original values!",
        Duration = 3,
        Image = 4483362458,
    })
end

local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateButton({
    Name = "Reset Recoil to Default",
    Callback = function()
        ResetToOriginal()
    end,
})

MainTab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
})

local AnglesTab = Window:CreateTab("Recoil Angles", 4483362458)

AnglesTab:CreateSlider({
    Name = "Angle X Min",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleX_Min,
    Flag = "AngleXMin",
    Callback = function(Value)
        Settings.AngleX_Min = Value
    end,
})

AnglesTab:CreateSlider({
    Name = "Angle X Max",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleX_Max,
    Flag = "AngleXMax",
    Callback = function(Value)
        Settings.AngleX_Max = Value
    end,
})

AnglesTab:CreateSlider({
    Name = "Angle Y Min",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleY_Min,
    Flag = "AngleYMin",
    Callback = function(Value)
        Settings.AngleY_Min = Value
    end,
})

AnglesTab:CreateSlider({
    Name = "Angle Y Max",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleY_Max,
    Flag = "AngleYMax",
    Callback = function(Value)
        Settings.AngleY_Max = Value
    end,
})

AnglesTab:CreateSlider({
    Name = "Angle Z Min",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleZ_Min,
    Flag = "AngleZMin",
    Callback = function(Value)
        Settings.AngleZ_Min = Value
    end,
})

AnglesTab:CreateSlider({
    Name = "Angle Z Max",
    Range = {0, 10},
    Increment = 0.1,
    CurrentValue = Settings.AngleZ_Max,
    Flag = "AngleZMax",
    Callback = function(Value)
        Settings.AngleZ_Max = Value
    end,
})

AnglesTab:CreateButton({
    Name = "Apply Changes",
    Callback = function()
        ApplyCurrentSettings()
        Rayfield:Notify({
            Title = "Recoil Control",
            Content = "Recoil settings applied!",
            Duration = 3,
            Image = 4483362458,
        })
    end,
})

Rayfield:LoadConfiguration()


end

})

	Tabs.Visual:AddButton({
        Title = "Farm ESP GUI",
        Description = "for farm money and loot scraps + admin esp",
        Callback = function(esp)


local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://131886985"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


			local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local RunService = game:GetService("RunService")

-- Settings
local NAME_KEYWORDS = { "SmallSafe", "MediumSafe" }
local LOOT_NAMES = { "S1", "S2", "C1" }
local HIGHLIGHT_NAME = "SafeESP"
local ADMIN_HIGHLIGHT_NAME = "AdminESP"
local LOOT_HIGHLIGHT_NAME = "LootESP"
local ADMIN_LIST = {
    ["tabootvcat"] = true, ["Revenantic"] = true, ["Saabor"] = true, ["MoIitor"] = true,
    ["IAmUnderAMask"] = true, ["SheriffGorji"] = true, ["xXFireyScorpionXx"] = true,
    ["LoChips"] = true, ["DeliverCreations"] = true, ["TDXiswinning"] = true,
    ["TZZV"] = true, ["FelixVenue"] = true, ["SIEGFRlED"] = true, ["ARRYvvv"] = true,
    ["z_papermoon"] = true, ["Malpheasance"] = true, ["ModHandIer"] = true,
    ["valphex"] = true, ["J_anday"] = true, ["tvdisko"] = true, ["yIlehs"] = true,
    ["COLOSSUSBUILTOFSTEEL"] = true, ["SeizedHolder"] = true, ["r3shape"] = true,
    ["RVVZ"] = true, ["adurize"] = true, ["codedcosmetics"] = true,
    ["QuantumCaterpillar"] = true, ["FractalHarmonics"] = true, ["GalacticSculptor"] = true,
    ["oTheSilver"] = true, ["Kretacaous"] = true, ["icarus_xs1goliath"] = true,
    ["GlamorousDradon"] = true, ["rainjeremy"] = true, ["parachuter2000"] = true,
    ["faintermercury"] = true, ["harht"] = true, ["Sansek1252"] = true,
    ["Snorpuwu"] = true, ["BenAzoten"] = true, ["Cand1ebox"] = true, ["KeenlyAware"] = true,
    ["mrzued"] = true, ["BruhmanVIII"] = true, ["Nystesia"] = true, ["fausties"] = true,
    ["zateopp"] = true, ["Iordnabi"] = true, ["ReviveTheDevil"] = true, ["jake_jpeg"] = true,
    ["UncrossedMeat3888"] = true, ["realpenyy"] = true, ["karateeeh"] = true,
    ["JayyMlg"] = true, ["Lo_Chips"] = true, ["Avelosky"] = true, ["king_ab09"] = true,
    ["TigerLe123"] = true, ["Dalvanuis"] = true, ["iSonMillions"] = true,
    ["Cefasin"] = true, ["ulzig"] = true, ["DieYouOder"] = true, ["whosframed"] = true, ["b3THyb1T3z"] = true
}

-- Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdvancedESP_GUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Main Menu
local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 280, 0, 320)
menuFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menuFrame.BorderSizePixel = 0
menuFrame.BackgroundTransparency = 0.1
menuFrame.Visible = true
menuFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = menuFrame

local layout = Instance.new("UIListLayout")
layout.FillDirection = Enum.FillDirection.Vertical
layout.Padding = UDim.new(0, 10)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.VerticalAlignment = Enum.VerticalAlignment.Top
layout.Parent = menuFrame

local padding = Instance.new("UIPadding")
padding.PaddingTop = UDim.new(0, 15)
padding.PaddingLeft = UDim.new(0, 20)
padding.PaddingRight = UDim.new(0, 20)
padding.Parent = menuFrame

-- Title
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "WDYM? GUI BY GOD (7g0d)"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.BackgroundTransparency = 1
title.Parent = menuFrame

-- Function to create styled buttons
local function createStyledButton(name, text, color)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(1, 0, 0, 40)
    button.BackgroundColor3 = color
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 16
    button.AutoButtonColor = true
    button.Parent = menuFrame

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button

    return button
end

-- Create buttons
local buttonDestroy = createStyledButton("DestroyButton", "DESTROY SCRIPT", Color3.fromRGB(150, 0, 0))
local buttonFind = createStyledButton("FindButton", "Find Safes", Color3.fromRGB(40, 170, 70))
local buttonLootESP = createStyledButton("LootESPButton", "Find Loot", Color3.fromRGB(70, 170, 200))
local buttonAdminCheck = createStyledButton("AdminCheckButton", "Admin Check: OFF", Color3.fromRGB(120, 80, 200))
local buttonAdminESP = createStyledButton("AdminESPButton", "Admin ESP: OFF", Color3.fromRGB(200, 80, 120))
local buttonClear = createStyledButton("ClearButton", "Clear Highlights", Color3.fromRGB(170, 40, 40))

-- State variables
local adminCheckEnabled = false
local espEnabled = true
local adminHighlights = {}
local safeHighlights = {}
local lootHighlights = {}

-- Function to get display name (with RVVZ replacement)
local function getDisplayName(player)
    if player.Name == "put here sum idk" then
        return "RVVZ"
    end
    return player.Name
end

-- Function to show admin alert (only shows when adminCheckEnabled is true)
local function showAdminAlert(playerName)
    if not adminCheckEnabled then return end
    
    local alert = Instance.new("TextLabel")
    alert.Name = "AdminAlert"
    alert.Size = UDim2.new(0, 300, 0, 50)
    alert.Position = UDim2.new(0.5, -150, 0.1, 0)
    alert.AnchorPoint = Vector2.new(0.5, 0)
    alert.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    alert.Text = "ADMIN DETECTED (" .. (playerName == "put here sum idk" and "RVVZ" or playerName) .. ")"
    alert.TextColor3 = Color3.new(1, 1, 1)
    alert.Font = Enum.Font.GothamBold
    alert.TextSize = 18
    alert.BackgroundTransparency = 0.3
    alert.Parent = screenGui

    local alertCorner = Instance.new("UICorner")
    alertCorner.CornerRadius = UDim.new(0, 8)
    alertCorner.Parent = alert

    delay(5, function()
        alert:Destroy()
    end)
end

-- Remove Highlight
local function removeHighlight(target, highlightName)
    local highlight = target:FindFirstChild(highlightName)
    if highlight then
        highlight:Destroy()
    end
end

-- Create Highlight
local function createHighlight(target, highlightName, color)
    removeHighlight(target, highlightName)
    
    local highlight = Instance.new("Highlight")
    highlight.Name = highlightName
    highlight.FillColor = color
    highlight.OutlineColor = color
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = target
    
    return highlight
end

-- Check object name
local function matchesTargetName(name)
    for _, keyword in ipairs(NAME_KEYWORDS) do
        if name:find(keyword) then
            return true
        end
    end
    return false
end

-- Check loot name
local function matchesLootName(name)
    for _, lootName in ipairs(LOOT_NAMES) do
        if name == lootName then
            return true
        end
    end
    return false
end

-- Check if broken
local function isBroken(obj)
    local valuesFolder = obj:FindFirstChild("Values")
    if valuesFolder then
        local brokenValue = valuesFolder:FindFirstChild("Broken")
        if brokenValue and brokenValue:IsA("BoolValue") then
            return brokenValue.Value
        end
    end
    return false
end

-- Check if admin
local function isAdmin(player)
    return ADMIN_LIST[player.Name] == true
end

-- Create Admin ESP (with RVVZ name replacement)
local function createAdminESP(player)
    if not player.Character then return end
    
    local character = player.Character
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local color = Color3.fromRGB(255, 0, 0) -- Always red for admins
    local highlight = createHighlight(character, ADMIN_HIGHLIGHT_NAME, color)
    
    -- Name tag with RVVZ replacement
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "AdminNameTag"
    billboardGui.Adornee = humanoidRootPart
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.AlwaysOnTop = true
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = getDisplayName(player)
    textLabel.TextColor3 = color
    textLabel.BackgroundTransparency = 1
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 18
    textLabel.TextStrokeTransparency = 0.5
    textLabel.TextStrokeColor3 = Color3.new(0,0,0)
    textLabel.Parent = billboardGui
    
    billboardGui.Parent = character
    
    adminHighlights[player] = {highlight = highlight, billboard = billboardGui}
    
    -- Show admin alert (only if admin check is enabled)
    showAdminAlert(player.Name)
end

-- Destroy Admin ESP
local function destroyAdminESP(player)
    if adminHighlights[player] then
        if adminHighlights[player].highlight then 
            adminHighlights[player].highlight:Destroy()
        end
        if adminHighlights[player].billboard then 
            adminHighlights[player].billboard:Destroy()
        end
        adminHighlights[player] = nil
    end
end

-- Find and highlight safes
local function scanSafes()
    local healthyCount = 0
    local processed = {}

    for _, obj in ipairs(Workspace:GetDescendants()) do
        if matchesTargetName(obj.Name) then
            local target = obj:IsA("BasePart") and obj:FindFirstAncestorOfClass("Model") or obj
            
            if not processed[target] then
                processed[target] = true
                removeHighlight(target, HIGHLIGHT_NAME)

                local color = isBroken(target) and Color3.fromRGB(255, 0, 0) or Color3.new(1, 1, 1)
                safeHighlights[target] = createHighlight(target, HIGHLIGHT_NAME, color)
                
                if not isBroken(target) then
                    healthyCount = healthyCount + 1
                end
            end
        end
    end

    buttonFind.Text = "Intact Safes: " .. healthyCount
    task.delay(2, function()
        buttonFind.Text = "Find Safes"
    end)
end

-- Find and highlight loot
local function scanLoot()
    local processed = {}
    local foundCount = 0

    for _, obj in ipairs(Workspace:GetDescendants()) do
        if matchesLootName(obj.Name) then
            local target = obj:IsA("BasePart") and obj:FindFirstAncestorOfClass("Model") or obj
            
            if not processed[target] then
                processed[target] = true
                removeHighlight(target, LOOT_HIGHLIGHT_NAME)

                local color = Color3.fromRGB(0, 255, 255)
                lootHighlights[target] = createHighlight(target, LOOT_HIGHLIGHT_NAME, color)
                foundCount = foundCount + 1
            end
        end
    end

    buttonLootESP.Text = "Found: " .. foundCount
    task.delay(2, function()
        buttonLootESP.Text = "Find Loot"
    end)
end

-- Clear all highlights
local function removeAllHighlights()
    for model, _ in pairs(safeHighlights) do
        removeHighlight(model, HIGHLIGHT_NAME)
    end
    safeHighlights = {}

    for model, _ in pairs(lootHighlights) do
        removeHighlight(model, LOOT_HIGHLIGHT_NAME)
    end
    lootHighlights = {}

    for player, _ in pairs(adminHighlights) do
        destroyAdminESP(player)
    end
    adminHighlights = {}

    buttonClear.Text = "Highlights Cleared"
    task.delay(2, function()
        buttonClear.Text = "Clear Highlights"
    end)
end

-- Update Admin ESP
local function updateAdminESP()
    if not espEnabled then return end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and isAdmin(player) then
            if not adminHighlights[player] and player.Character then
                createAdminESP(player)
            elseif adminHighlights[player] and not player.Character then
                destroyAdminESP(player)
            end
        elseif adminHighlights[player] then
            destroyAdminESP(player)
        end
    end
end

-- Toggle Admin Check
local function toggleAdminCheck()
    adminCheckEnabled = not adminCheckEnabled
    buttonAdminCheck.Text = "Admin Check: " .. (adminCheckEnabled and "ON" or "OFF")
end

-- Toggle Admin ESP
local function toggleESP()
    espEnabled = not espEnabled
    buttonAdminESP.Text = "Admin ESP: " .. (espEnabled and "ON" or "OFF")
    
    if espEnabled then
        updateAdminESP()
    else
        for player, _ in pairs(adminHighlights) do
            destroyAdminESP(player)
        end
    end
end

-- Destroy script completely
local function destroyScript()
    removeAllHighlights()
    screenGui:Destroy()
    
    for _, connection in ipairs(getconnections(RunService.Heartbeat)) do
        connection:Disconnect()
    end
end

-- Button handlers
buttonDestroy.MouseButton1Click:Connect(destroyScript)
-- (удалено)
buttonLootESP.MouseButton1Click:Connect(scanLoot) -- Однократный скан при нажатии
buttonAdminCheck.MouseButton1Click:Connect(toggleAdminCheck)
buttonAdminESP.MouseButton1Click:Connect(toggleESP)
-- (удалено)

-- Handle new players
local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        if espEnabled and isAdmin(player) then
            createAdminESP(player)
        end
    end)
    
    if espEnabled and isAdmin(player) and player.Character then
        createAdminESP(player)
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- Automatic updates
RunService.Heartbeat:Connect(function()
    if espEnabled then
        updateAdminESP()
    end
end)

-- Initial admin check
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer and isAdmin(player) then
        if espEnabled and player.Character then
            createAdminESP(player)
        end
    end
end


-- Флаг сканирования
local scanningSafes = false
local scannedSafes = {}

-- Обновление только уже найденных сейфов по кадрам
local function updateSafeStates()
    task.spawn(function()
        while scanningSafes do
            for model, _ in pairs(scannedSafes) do
                if model and model.Parent then
                    local color = isBroken(model) and Color3.fromRGB(255, 0, 0) or Color3.new(1, 1, 1)
                    local highlight = model:FindFirstChild(HIGHLIGHT_NAME)
                    if highlight then
                        highlight.FillColor = color
                        highlight.OutlineColor = color
                    end
                end
                task.wait() -- Обновление по 1 объекту за кадр
            end
            task.wait(1) -- Интервал между циклами
        end
    end)
end

-- Новый обработчик сканирования сейфов
buttonFind.MouseButton1Click:Connect(function()
    scanningSafes = false
    scannedSafes = {}

    local healthyCount = 0
    local processed = {}

    for _, obj in ipairs(Workspace:GetDescendants()) do
        if matchesTargetName(obj.Name) then
            local target = obj:IsA("BasePart") and obj:FindFirstAncestorOfClass("Model") or obj

            if target and not processed[target] then
                processed[target] = true
                removeHighlight(target, HIGHLIGHT_NAME)

                local color = isBroken(target) and Color3.fromRGB(255, 0, 0) or Color3.new(1, 1, 1)
                safeHighlights[target] = createHighlight(target, HIGHLIGHT_NAME, color)
                scannedSafes[target] = true

                if not isBroken(target) then
                    healthyCount = healthyCount + 1
                end
            end
        end
    end

    scanningSafes = true
    updateSafeStates()

    buttonFind.Text = "Intact Safes: " .. healthyCount
    task.delay(2, function()
        buttonFind.Text = "Find Safes"
    end)
end)

-- Clear также отключает цикл
buttonClear.MouseButton1Click:Connect(function()
    scanningSafes = false
    removeAllHighlights()
end)

				
			Fluent:Notify({
                        Title = "Farm ESP GUI",
                        Content = "Already Loaded",
                        Duration = 10
                        })

			end

			

					
})

	Tabs.Main:AddButton({
        Title = "Admin detection",
        Description = "instant kicks u if admin join on server",
        Callback = function()

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://18892783765"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()



			loadstring(game:HttpGet("https://raw.githubusercontent.com/Ramzesuskan/YummyHUB/refs/heads/main/yummyhubold.lua",true))()
				
                        Fluent:Notify({
                        Title = "Admin Detection",
                        Content = "Admin Detection Activated",
                        Duration = 10
                        })

			end

			
	
    })

	Tabs.Main:AddButton({
        Title = "Infinite Yield",
        Description = "developer tool",
        Callback = function()


local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://3125624765"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
				
				
			Fluent:Notify({
                        Title = "Infinite Yield",
                        Content = "developer tool loaded",
                        Duration = 10
                        })
			end
 })
	




 

	Tabs.Main:AddButton({
        Title = "Explorer (Dex)",
        Description = "the best thing in the fucking world",
        Callback = function()


local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://112399901996574"
Sound.Volume = 1
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


			loadstring(game:HttpGet("https://raw.githubusercontent.com/Ramzesuskan/YummyHUB/refs/heads/main/dex.lua",true))()
				
				
			Fluent:Notify({
                        Title = "File Explorer",
                        Content = "crazy thing already loaded",
                        Duration = 10
                        })
			end


})



	Tabs.Visual:AddButton({
        Title = "Esp Menu",
        Description = "nice esp menu idk",
        Callback = function()




local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://112399901996574"
Sound.Volume = 1
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()



    for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do 
        v:Disable()
    end
    
    if getgenv().ESPTOGGLE1 then 
        getgenv().ESPTOGGLE1 = nil
    end
    getgenv().ESPTOGGLE1 = true
    local ToggleKey = Enum.KeyCode.Y
    local HideCommonToggleKey = Enum.KeyCode.U
    local Meshes = {
        ["rbxassetid://16657069"] = "Money Bag",
        ["rbxassetid://60791940"] = "Scroll",
        ["rbxassetid://2877143560"] = "Jewel",
        ["rbxassetid://2637545558"] = "Ring",
        ["rbxassetid://439102658"] = "Phoenix Feather",
        ["rbxassetid://13116112"] = "Goblet",
        ["rbxassetid://5196577540"] = "Amulet",
        ["rbxassetid://5204003946"] = "Goblet",
        ["rbxassetid://5204453430"] = "Scroll",
        ["rbxassetid://5196782997"] = "Old Ring",
        ["rbxassetid://%2016657069%20"] = "Money Bag",
        ["rbxassetid://%2060791940%20"] = "Scroll",
        ["rbxassetid://%202877143560%20"] = "Jewel",
        ["rbxassetid://%202637545558%20"] = "Ring",
        ["rbxassetid://%20439102658%20"] = "Phoenix Feather",
        ["rbxassetid://%2013116112%20"] = "Goblet",
        ["rbxassetid://%205196577540%20"] = "Amulet",
        ["rbxassetid://%205204003946%20"] = "Goblet",
        ["rbxassetid://%205204453430%20"] = "Scroll",
        ["rbxassetid://%205196782997%20"] = "Old Ring",
        ["rbxassetid://5196776695"] = "Ring",
        ["rbxassetid://%205196776695%20"] = "Ring",
    
    }
    
    local RefreshRate = 14 --In miliseconds, change if your laggy
    local wrksp = game:GetService("Workspace");
    local Camera = wrksp.CurrentCamera;
    local WTVP = Camera.WorldToViewportPoint;
    local IsDescendantOf = game.IsDescendantOf;
    local Vec2 = Vector2.new(0, 15);
    local strformat = string.format;
    
    
    function WTS(Position)
        local VP,bool = WTVP(Camera,Position)
        return Vector2.new(VP.x, VP.y),bool,VP.Z
    end
    
    function CreateESP(Character, Class)
        local LastRefresh = 0;
        if not Character then
            return
        end
        
        local PName = Character.Name;
        local Name = Drawing.new("Text")
        Name.Text = Character.Name;
        Name.Color = Color3.fromRGB(141, 255, 126)
        Name.Position = WTS(Character.Position);
        Name.Size = 18
        Name.Outline = true
        Name.Center = true
        Name.Visible = true
        Name.Font = 0
        local Bottom = Drawing.new("Text")
        Bottom.Color = Color3.fromRGB(192,192,192)
        Bottom.Position = WTS(Character.Position) + Vec2;
        Bottom.Size = 18
        Bottom.Outline = true
        Bottom.Center = true
        Bottom.Visible = true
        Bottom.Font = 0
        
        pcall(function()
            if Character.Parent:IsA("MeshPart") and Meshes[Character.Parent.MeshId]  then 
                Name.Text = tostring(Meshes[Character.Parent.MeshId]) 
            elseif Character.Parent:IsA("Part") and Character.Parent:FindFirstChildWhichIsA("SpecialMesh") and Meshes[Character.Parent:FindFirstChildWhichIsA("SpecialMesh").MeshId] then
                Name.Text = tostring(Meshes[Character.Parent:FindFirstChildWhichIsA("SpecialMesh").MeshId])
            elseif Character.Parent:IsA("Part") and Character.Parent:FindFirstChildWhichIsA("SpecialMesh") and Character.Parent:FindFirstChild("OrbParticle") then
                Name.Text = tostring("???")
            else
                Name.Text = tostring("Opal")
            end
        end)
    
        local Con;
        Con = game:GetService("RunService").RenderStepped:Connect(function() --Update if on screen.
            if (tick() - LastRefresh) > (RefreshRate / 1000) then
                LastRefresh = tick();
                if not IsDescendantOf(Character,workspace) and Name ~= nil and Bottom ~= nil then
                    Con:Disconnect();
                    Con = nil; 
                    Name:Remove()
                    Bottom:Remove()
                    return 
                end
                local HRPP = Character.Position;
                local Pos,Bool,Distance = WTS(HRPP);
                if Bool and getgenv().ESPTOGGLE1 then
                    Bottom.Text = strformat('[%d]',Distance)
                    Name.Position = Pos;
                    Bottom.Position = Pos + Vec2;
                    Name.Visible = true;
                    Bottom.Visible = true;
                else
                    Name.Visible = false;
                    Bottom.Visible = false;
                end
            end
        end)
    end

    
    
    for i,v in pairs(wrksp:GetChildren()) do 
        if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("Part") then 
            for i2,v2 in pairs(v:GetDescendants()) do 
                if v2:IsA("ClickDetector") then 
                    CreateESP(v2.Parent)
                end
            end
        end
    end
    
    wrksp.ChildAdded:Connect(function(v)
        if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("Part") then 
            for i2,v2 in pairs(v:GetDescendants()) do 
                if v2:IsA("ClickDetector") then 
                    CreateESP(v2.Parent)
                end
            end
        end
    end)


    game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessed)
        if inputObject.KeyCode == ToggleKey then
            getgenv().ESPTOGGLE1 = true
        elseif inputObject.KeyCode == HideCommonToggleKey then
            getgenv().ESPTOGGLE1 = false
        end
    end)
    
  local custom_theme = {} --soon
 
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
    inst[i] = v
end
return inst
end
    
local age1 = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='age1', Parent=game.CoreGui})
local p_visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 50, 0, 60),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 254),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'p_visuals',Parent = age1})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 1), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = p_visuals })
local title1 = CreateInstance('TextLabel',{Font=Enum.Font.GothamBlack,FontSize=Enum.FontSize.Size18,Text='ESP | By 7g0d',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1',Parent = p_visuals})
local b_b = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Bounding box',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_b',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_b})
local b_f = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill alpha',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f})
local b_f_t = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill transparency',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f_t',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='1',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f_t})
local b_sd = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show distance',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sd',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sd})
local b_sn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show name',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sn',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sn})
local b_sh = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show health',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sh',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sh})
local b_ht = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Health type',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ht',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Text',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_ht})
local b_tc = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Use color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_tc',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_tc})
local title1_2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size18,Text='ESP',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1_2',Parent = p_visuals})
local b_ct = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Change color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ct',Parent = p_visuals})
local ct_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_b',Parent = b_ct})
local ct_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_g',Parent = b_ct})
local ct_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_r',Parent = b_ct})
local watermark = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, -34),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark',Parent = age1})
local watermark1 = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -2, 0, -2),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark1',Parent = watermark})
p_visuals.Draggable = true
 
title1.LayoutOrder = 0 title1_2.LayoutOrder = 1
b_b.LayoutOrder = 1 b_f.LayoutOrder = 2 b_f_t.LayoutOrder = 3 b_sd.LayoutOrder = 4 b_sn.LayoutOrder = 5 b_sh.LayoutOrder = 6 b_ht.LayoutOrder = 7 b_tc.LayoutOrder = 8 b_ct.LayoutOrder = 9
 
local localplayer = game:GetService"Players".LocalPlayer
local uis = game:GetService"UserInputService"
 
local cheats = {
    b_b = false;
    b_f = false;
    b_f_t = 1;
    b_sd = false;
    b_sn = false;
    b_sh = false;
    b_ht = "Text";
    b_rt = true; -- Render team теперь включен по умолчанию
    b_tc = false;
}
 
local cheatsf = Instance.new("Folder", game.CoreGui) cheatsf.Name = "cheats"
local espf = Instance.new("Folder", cheatsf) espf.Name = "esp"
 
function addEsp(player)
    local bbg = Instance.new("BillboardGui", espf)
    bbg.Name = player.Name
    bbg.AlwaysOnTop = true
    bbg.Size = UDim2.new(4,0,5.4,0)
    bbg.ClipsDescendants = false
    
    local outlines = Instance.new("Frame", bbg)
    outlines.Size = UDim2.new(1,0,1,0)
    outlines.BorderSizePixel = 0
    outlines.BackgroundTransparency = 1
    local left = Instance.new("Frame", outlines)
    left.BorderSizePixel = 0
    left.Size = UDim2.new(0,1,1,0)
    local right = left:Clone()
    right.Parent = outlines
    right.Size = UDim2.new(0,-1,1,0)
    right.Position = UDim2.new(1,0,0,0)
    local up = left:Clone()
    up.Parent = outlines
    up.Size = UDim2.new(1,0,0,1)
    local down = left:Clone()
    down.Parent = outlines
    down.Size = UDim2.new(1,0,0,-1)
    down.Position = UDim2.new(0,0,1,0)
    
    local info = Instance.new("BillboardGui", bbg)
    info.Name = "info"
    info.Size = UDim2.new(3,0,0,54)
    info.StudsOffset = Vector3.new(3.6,-3,0)
    info.AlwaysOnTop = true
    info.ClipsDescendants = false
    local namelabel = Instance.new("TextLabel", info)
    namelabel.Name = "namelabel"
    namelabel.BackgroundTransparency = 1
    namelabel.TextStrokeTransparency = 0
    namelabel.TextXAlignment = Enum.TextXAlignment.Left
    namelabel.Size = UDim2.new(0,100,0,18)
    namelabel.Position = UDim2.new(0,0,0,0)
    namelabel.Text = player.Name
    local distancel = Instance.new("TextLabel", info)
    distancel.Name = "distancelabel"
    distancel.BackgroundTransparency = 1
    distancel.TextStrokeTransparency = 0
    distancel.TextXAlignment = Enum.TextXAlignment.Left
    distancel.Size = UDim2.new(0,100,0,18)
    distancel.Position = UDim2.new(0,0,0,18)
    local healthl = Instance.new("TextLabel", info)
    healthl.Name = "healthlabel"
    healthl.BackgroundTransparency = 1
    healthl.TextStrokeTransparency = 0
    healthl.TextXAlignment = Enum.TextXAlignment.Left
    healthl.Size = UDim2.new(0,100,0,18)
    healthl.Position = UDim2.new(0,0,0,36)
    
    local uill = Instance.new("UIListLayout", info)
    
    local forhealth = Instance.new("BillboardGui", bbg)
    forhealth.Name = "forhealth"
    forhealth.Size = UDim2.new(5,0,6,0)
    forhealth.AlwaysOnTop = true
    forhealth.ClipsDescendants = false
    
    local healthbar = Instance.new("Frame", forhealth)
    healthbar.Name = "healthbar"
    healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
    healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
    healthbar.Size = UDim2.new(0.04,0,0.9,0)
    healthbar.Position = UDim2.new(0,0,0.05,0)
    local bar = Instance.new("Frame", healthbar)
    bar.Name = "bar"
    bar.BorderSizePixel = 0
    bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
    bar.AnchorPoint = Vector2.new(0,1)
    bar.Position = UDim2.new(0,0,1,0)
    bar.Size = UDim2.new(1,0,1,0)
    
    local co = coroutine.create(function()
        while wait(0.1) do
            if (player.Character and player.Character:FindFirstChild"HumanoidRootPart") then
                bbg.Adornee = player.Character.HumanoidRootPart
                info.Adornee = player.Character.HumanoidRootPart
                forhealth.Adornee = player.Character.HumanoidRootPart
                
                if (player.Team ~= localplayer.Team) then
                    bbg.Enabled = true
                    info.Enabled = true
                    forhealth.Enabled = true
                end
                if player.Character:FindFirstChild("ForceField") then
                    outlines.BackgroundTransparency = 0.4
                    left.BackgroundTransparency = 0.4
                    right.BackgroundTransparency = 0.4
                    up.BackgroundTransparency = 0.4
                    down.BackgroundTransparency = 0.4
                    healthl.TextTransparency = 0.4
                    healthl.TextStrokeTransparency = 0.8
                    distancel.TextTransparency = 0.4
                    distancel.TextStrokeTransparency = 0.8
                    namelabel.TextTransparency = 0.4
                    namelabel.TextStrokeTransparency = 0.8
                    bar.BackgroundTransparency = 0.4
                    healthbar.BackgroundTransparency = 0.8
                else
                    outlines.BackgroundTransparency = 0
                    left.BackgroundTransparency = 0
                    right.BackgroundTransparency = 0
                    up.BackgroundTransparency = 0
                    down.BackgroundTransparency = 0
                    healthl.TextTransparency = 0
                    healthl.TextStrokeTransparency = 0
                    distancel.TextTransparency = 0
                    distancel.TextStrokeTransparency = 0
                    namelabel.TextTransparency = 0
                    namelabel.TextStrokeTransparency = 0
                    bar.BackgroundTransparency = 0
                    healthbar.BackgroundTransparency = 0
                end
                if cheats.b_b == true then
                    outlines.Visible = true
                else
                    outlines.Visible = false
                end
                if cheats.b_f == true then
                    if player.Character:FindFirstChild("ForceField") then
                        outlines.BackgroundTransparency = 0.9
                    else
                        outlines.BackgroundTransparency = cheats.b_f_t
                    end
                else
                    outlines.BackgroundTransparency = 1
                end
                if cheats.b_sh == true then
                    if (player.Character:FindFirstChild"Humanoid") then
                        healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
                        healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
                    end
                    if cheats.b_ht == "Text" then
                        healthbar.Visible = false
                        healthl.Visible = true
                    end
                    if cheats.b_ht == "Bar" then
                        healthl.Visible = false
                        healthbar.Visible = true
                    end
                else
                    healthl.Visible = false
                    healthbar.Visible = false
                end
                if cheats.b_sn then
                    namelabel.Visible = true
                else
                    namelabel.Visible = false
                end
                if cheats.b_sd == true then
                    distancel.Visible = true
                    if (localplayer.Character and localplayer.Character:FindFirstChild"HumanoidRootPart") then
                        distancel.Text = "Distance: "..math.floor(0.5+(localplayer.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
                    end
                else
                    distancel.Visible = false
                end
                if cheats.b_rt == true then
                    if (player.Team == localplayer.Team) then
                        bbg.Enabled = true
                        info.Enabled = true
                        forhealth.Enabled = true
                    end
                else
                    if (player.Team == localplayer.Team) then
                        bbg.Enabled = false
                        info.Enabled = false
                        forhealth.Enabled = false
                    end
                end
                if cheats.b_tc == true then
                    outlines.BackgroundColor3 = player.TeamColor.Color
                    left.BackgroundColor3 = player.TeamColor.Color
                    right.BackgroundColor3 = player.TeamColor.Color
                    up.BackgroundColor3 = player.TeamColor.Color
                    down.BackgroundColor3 = player.TeamColor.Color
                    healthl.TextColor3 = player.TeamColor.Color
                    distancel.TextColor3 = player.TeamColor.Color
                    namelabel.TextColor3 = player.TeamColor.Color
                else
                    outlines.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    left.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    right.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    up.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    down.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    healthl.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    distancel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                    namelabel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                end
            end
            if not (game:GetService"Players":FindFirstChild(player.Name)) then
                print(player.Name.." has left. Clearing esp.")
                espf:FindFirstChild(player.Name):Destroy()
                coroutine.yield()
            end
        end
    end)
    coroutine.resume(co)
end
 
--main
do
    wait(2)
    --menu buttons
    for _,button in pairs(age1:GetDescendants()) do
        if button:IsA"TextButton" then
            button.MouseButton1Click:connect(function()
                if button.Name == "b_f_t" then
                    if cheats.b_f_t >= 0 then
                        cheats.b_f_t = cheats.b_f_t+0.1
                        if cheats.b_f_t > 1 then
                            cheats.b_f_t = 0
                        end
                    end
                    button.v.Text = cheats.b_f_t
                elseif button.Name == "b_ht" then
                    if cheats.b_ht == "Text" then
                        cheats.b_ht = "Bar"
                    else
                        cheats.b_ht = "Text"
                    end
                    button.v.Text = cheats.b_ht
                else
                    if cheats[button.Name] == true then
                        cheats[button.Name] = false
                        button.v.Text = "OFF"
                        button.v.TextColor3 = Color3.fromRGB(255,0,0)
                    else
                        cheats[button.Name] = true
                        button.v.Text = "ON"
                        button.v.TextColor3 = Color3.fromRGB(0,255,0)
                    end
                end 
            end)
        end
    end
    







local b_destroy = CreateInstance('TextButton',{
    Font=Enum.Font.SourceSans,
    FontSize=Enum.FontSize.Size18,
    Text='Destroy Script',
    TextColor3=Color3.new(1, 0, 0),  -- Красный цвет для опасной кнопки
    TextScaled=false,
    TextSize=16,
    TextStrokeColor3=Color3.new(0, 0, 0),
    TextStrokeTransparency=1,
    TextTransparency=0,
    TextWrapped=false,
    TextXAlignment=Enum.TextXAlignment.Center,
    TextYAlignment=Enum.TextYAlignment.Center,
    AutoButtonColor=true,
    Modal=false,
    Selected=false,
    Style=Enum.ButtonStyle.Custom,
    Active=false,
    AnchorPoint=Vector2.new(0, 0),
    BackgroundColor3=Color3.new(0.2, 0.2, 0.2),
    BackgroundTransparency=0.5,
    BorderColor3=Color3.new(1, 0, 0),
    BorderSizePixel=1,
    ClipsDescendants=false,
    Draggable=false,
    Position=UDim2.new(0, 0, 0, 0),
    Rotation=0,
    Selectable=true,
    Size=UDim2.new(1, 0, 0, 24),
    SizeConstraint=Enum.SizeConstraint.RelativeXY,
    Visible=true,
    ZIndex=1,
    Name='b_destroy',
    Parent = p_visuals
})

-- Добавьте обработчик клика для кнопки уничтожения
b_destroy.MouseButton1Click:connect(function()
    -- Удаляем все созданные объекты
    age1:Destroy()
    if cheatsf then cheatsf:Destroy() end
    
    -- Отключаем ESP
    getgenv().ESPTOGGLE1 = false
    
    -- Останавливаем все циклы и соединения
    for _, connection in pairs(getconnections(game:GetService("ScriptContext").Error)) do
        connection:Disable()
    end
    
    -- Очищаем глобальные переменные
    getgenv().ESPTOGGLE1 = nil
    
    -- Выводим сообщение об успешном удалении
    print("Script has been destroyed successfully")
end)

-- Не забудьте обновить LayoutOrder для новой кнопки
b_destroy.LayoutOrder = 12











    --initial player addition
    for _,v in pairs(game:GetService("Players"):GetChildren()) do
        if not (v.Name == localplayer.Name) then
            if not (espf:FindFirstChild(v.Name)) then
                addEsp(v)
            end
        end
    end
    
    --open/close gui
    game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.KeypadOne then
            if not gameProcessed then
                age1.Enabled = not age1.Enabled
            end
        end
    end)
    
    --auto-update
    while wait(10) do
        for _,v in pairs(game:GetService("Players"):GetChildren()) do
            if not (v.Name == localplayer.Name) then
                if not (espf:FindFirstChild(v.Name)) then
                    addEsp(v)
                end
            end
        end
    end
end


			Fluent:Notify({
                        Title = "Esp Menu",
                        Content = "Esp Menu already loaded",
                        Duration = 10
                        })
			end


 })







local Toggle = Tabs.Visual:AddToggle("highlight", {Title = "Highlight", Description = "doesn't have player refresh", Default = false })
local highlightConnections = {}

Toggle:OnChanged(function(Value)
    if Value then
        for _, v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer and v.Character then
                if not v.Character:FindFirstChild("Highlight") then
                    local highlight = Instance.new("Highlight", v.Character)
                    highlight.FillTransparency = 1.0
                    highlight.OutlineTransparency = 0.0
                    highlight.FillColor = getRoleColor(v)
                    highlightConnections[v.UserId] = v.Character.DescendantAdded:Connect(function()
                        highlight.OutlineTransparency = 0.0
                    end)
                end
            end
        end
    else
        for _, v in pairs(highlightConnections) do
            v:Disconnect()
        end
        for _, v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Highlight") then
                v.Character.Highlight:Destroy()
            end
        end
    end
end)

function getRoleColor(plr)
    if (plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife")) then
        return Color3.new(1, 0, 0)
    elseif (plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun")) then
        return Color3.new(0, 0, 1)
    else
        return Color3.new(186,85,211)
    end
end



        Tabs.Visual:AddButton({
        Title = "FullBright",
        Description = "ugly but no more dark",
        Callback = function(esp)


local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://2609981431"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()

			pcall(function()
                local lighting = game:GetService("Lighting");
                lighting.Ambient = Color3.fromRGB(255, 255, 255);
                lighting.Brightness = 1;
                lighting.FogEnd = 1e10;
                for i, v in pairs(lighting:GetDescendants()) do
                    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
                        v.Enabled = false;
                    end;
                end;
                lighting.Changed:Connect(function()
                    lighting.Ambient = Color3.fromRGB(255, 255, 255);
                    lighting.Brightness = 1;
                    lighting.FogEnd = 1e10;
                end);
                spawn(function()
                    local character = game:GetService("Players").LocalPlayer.Character;
                    while wait() do
                        repeat wait() until character ~= nil;
                        if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                            local headlight = Instance.new("PointLight", character.HumanoidRootPart);
                            headlight.Brightness = 1;
                            headlight.Range = 60;
																
                        Fluent:Notify({
                        Title = "FullBright",
                        Content = "Already Loaded",
                        Duration = 10
                        })
					
                        end;
                    end;
                end);
            end)
        end
})






        Tabs.Visual:AddButton({
        Title = "Free Cam",
        Description = "Shift + P",
        Callback = function()
				
    Fluent:Notify({
        Title = "Free Cam",
        Content = "Already Loaded",
        Duration = 10
    })


local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://6748255118"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


				
			function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                __index = function(self,k)
                if k=="script" then
                return var
                else
                return env[k]
                end
                end,
                })
                setfenv(func,newenv)
                return func
                end
                cors = {}
                mas = Instance.new("Model",game:GetService("Lighting"))
                LocalScript0 = Instance.new("LocalScript")
                LocalScript0.Name = "FreeCamera"
                LocalScript0.Parent = mas
                table.insert(cors,sandbox(LocalScript0,function()
                
                local pi    = math.pi
                local abs   = math.abs
                local clamp = math.clamp
                local exp   = math.exp
                local rad   = math.rad
                local sign  = math.sign
                local sqrt  = math.sqrt
                local tan   = math.tan
                
                local ContextActionService = game:GetService("ContextActionService")
                local Players = game:GetService("Players")
                local RunService = game:GetService("RunService")
                local StarterGui = game:GetService("StarterGui")
                local UserInputService = game:GetService("UserInputService")
                
                local LocalPlayer = Players.LocalPlayer
                if not LocalPlayer then
                Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
                LocalPlayer = Players.LocalPlayer
                end
                
                local Camera = workspace.CurrentCamera
                workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
                local newCamera = workspace.CurrentCamera
                if newCamera then
                Camera = newCamera
										
                end
                end)




                
                ------------------------------------------------------------------------
                
                local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
                local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
                local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}
                
                local NAV_GAIN = Vector3.new(1, 1, 1)*64
                local PAN_GAIN = Vector2.new(0.75, 1)*8
                local FOV_GAIN = 300
                
                local PITCH_LIMIT = rad(90)
                
                local VEL_STIFFNESS = 1.5
                local PAN_STIFFNESS = 1.0
                local FOV_STIFFNESS = 4.0
                
                ------------------------------------------------------------------------
                
                local Spring = {} do
                Spring.__index = Spring
                
                function Spring.new(freq, pos)
                local self = setmetatable({}, Spring)
                self.f = freq
                self.p = pos
                self.v = pos*0
                return self
                end
                
                function Spring:Update(dt, goal)
                local f = self.f*2*pi
                local p0 = self.p
                local v0 = self.v
                
                local offset = goal - p0
                local decay = exp(-f*dt)
                
                local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
                local v1 = (f*dt*(offset*f - v0) + v0)*decay
                
                self.p = p1
                self.v = v1
                
                return p1
                end
                
                function Spring:Reset(pos)
                self.p = pos
                self.v = pos*0
                end
                end
                
                ------------------------------------------------------------------------
                
                local cameraPos = Vector3.new()
                local cameraRot = Vector2.new()
                local cameraFov = 0
                
                local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
                local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
                local fovSpring = Spring.new(FOV_STIFFNESS, 0)
                
                ------------------------------------------------------------------------
                
                local Input = {} do
                local thumbstickCurve do
                local K_CURVATURE = 2.0
                local K_DEADZONE = 0.15
                
                local function fCurve(x)
                return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
                end
                
                local function fDeadzone(x)
                return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
                end
                
                function thumbstickCurve(x)
                return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
                end
                end
                
                local gamepad = {
                ButtonX = 0,
                ButtonY = 0,
                DPadDown = 0,
                DPadUp = 0,
                ButtonL2 = 0,
                ButtonR2 = 0,
                Thumbstick1 = Vector2.new(),
                Thumbstick2 = Vector2.new(),
                }
                
                local keyboard = {
                W = 0,
                A = 0,
                S = 0,
                D = 0,
                E = 0,
                Q = 0,
                U = 0,
                H = 0,
                J = 0,
                K = 0,
                I = 0,
                Y = 0,
                Up = 0,
                Down = 0,
                LeftShift = 0,
                RightShift = 0,
                }
                
                local mouse = {
                Delta = Vector2.new(),
                MouseWheel = 0,
                }
                
                local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
                local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
                local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
                local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
                local FOV_WHEEL_SPEED    = 1.0
                local FOV_GAMEPAD_SPEED  = 0.25
                local NAV_ADJ_SPEED      = 0.75
                local NAV_SHIFT_MUL      = 0.25
                
                local navSpeed = 1
                
                function Input.Vel(dt)
                navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
                
                local kGamepad = Vector3.new(
                thumbstickCurve(gamepad.Thumbstick1.x),
                thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
                thumbstickCurve(-gamepad.Thumbstick1.y)
                )*NAV_GAMEPAD_SPEED
                
                local kKeyboard = Vector3.new(
                keyboard.D - keyboard.A + keyboard.K - keyboard.H,
                keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
                keyboard.S - keyboard.W + keyboard.J - keyboard.U
                )*NAV_KEYBOARD_SPEED
                
                local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
                
                return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
                end
                
                function Input.Pan(dt)
                local kGamepad = Vector2.new(
                thumbstickCurve(gamepad.Thumbstick2.y),
                thumbstickCurve(-gamepad.Thumbstick2.x)
                )*PAN_GAMEPAD_SPEED
                local kMouse = mouse.Delta*PAN_MOUSE_SPEED
                mouse.Delta = Vector2.new()
                return kGamepad + kMouse
                end
                
                function Input.Fov(dt)
                local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
                local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
                mouse.MouseWheel = 0
                return kGamepad + kMouse
                end
                
                do
                local function Keypress(action, state, input)
                keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                return Enum.ContextActionResult.Sink
                end
                
                local function GpButton(action, state, input)
                gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                return Enum.ContextActionResult.Sink
                end
                
                local function MousePan(action, state, input)
                local delta = input.Delta
                mouse.Delta = Vector2.new(-delta.y, -delta.x)
                return Enum.ContextActionResult.Sink
                end
                
                local function Thumb(action, state, input)
                gamepad[input.KeyCode.Name] = input.Position
                return Enum.ContextActionResult.Sink
                end
                
                local function Trigger(action, state, input)
                gamepad[input.KeyCode.Name] = input.Position.z
                return Enum.ContextActionResult.Sink
                end
                
                local function MouseWheel(action, state, input)
                mouse[input.UserInputType.Name] = -input.Position.z
                return Enum.ContextActionResult.Sink
                end
                
                local function Zero(t)
                for k, v in pairs(t) do
                t[k] = v*0
                end
                end
                
                function Input.StartCapture()
                ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
                Enum.KeyCode.W, Enum.KeyCode.U,
                Enum.KeyCode.A, Enum.KeyCode.H,
                Enum.KeyCode.S, Enum.KeyCode.J,
                Enum.KeyCode.D, Enum.KeyCode.K,
                Enum.KeyCode.E, Enum.KeyCode.I,
                Enum.KeyCode.Q, Enum.KeyCode.Y,
                Enum.KeyCode.Up, Enum.KeyCode.Down
                )
                ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
                ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
                ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
                ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
                ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
                end
                
                function Input.StopCapture()
                navSpeed = 1
                Zero(gamepad)
                Zero(keyboard)
                Zero(mouse)
                ContextActionService:UnbindAction("FreecamKeyboard")
                ContextActionService:UnbindAction("FreecamMousePan")
                ContextActionService:UnbindAction("FreecamMouseWheel")
                ContextActionService:UnbindAction("FreecamGamepadButton")
                ContextActionService:UnbindAction("FreecamGamepadTrigger")
                ContextActionService:UnbindAction("FreecamGamepadThumbstick")
                end
                end
                end
                
                local function GetFocusDistance(cameraFrame)
                local znear = 0.1
                local viewport = Camera.ViewportSize
                local projy = 2*tan(cameraFov/2)
                local projx = viewport.x/viewport.y*projy
                local fx = cameraFrame.rightVector
                local fy = cameraFrame.upVector
                local fz = cameraFrame.lookVector
                
                local minVect = Vector3.new()
                local minDist = 512
                
                for x = 0, 1, 0.5 do
                for y = 0, 1, 0.5 do
                local cx = (x - 0.5)*projx
                local cy = (y - 0.5)*projy
                local offset = fx*cx - fy*cy + fz
                local origin = cameraFrame.p + offset*znear
                local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
                local dist = (hit - origin).magnitude
                if minDist > dist then
                minDist = dist
                minVect = offset.unit
                end
                end
                end
                
                return fz:Dot(minVect)*minDist
                end
                
                ------------------------------------------------------------------------
                
                local function StepFreecam(dt)
                local vel = velSpring:Update(dt, Input.Vel(dt))
                local pan = panSpring:Update(dt, Input.Pan(dt))
                local fov = fovSpring:Update(dt, Input.Fov(dt))
                
                local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))
                
                cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
                cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
                cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))
                
                local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
                cameraPos = cameraCFrame.p
                
                Camera.CFrame = cameraCFrame
                Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
                Camera.FieldOfView = cameraFov
                end
                
                ------------------------------------------------------------------------
                
                local PlayerState = {} do
                local mouseIconEnabled
                local cameraSubject
                local cameraType
                local cameraFocus
                local cameraCFrame
                local cameraFieldOfView
                local screenGuis = {}
                local coreGuis = {
                Backpack = true,
                Chat = true,
                Health = true,
                PlayerList = true,
                }
                local setCores = {
                BadgesNotificationsActive = true,
                PointsNotificationsActive = true,
                }
                
                -- Save state and set up for freecam
                function PlayerState.Push()
                for name in pairs(coreGuis) do
                coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
                end
                for name in pairs(setCores) do
                setCores[name] = StarterGui:GetCore(name)
                StarterGui:SetCore(name, false)
                end
                local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                if playergui then
                for _, gui in pairs(playergui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Enabled then
                screenGuis[#screenGuis + 1] = gui
                gui.Enabled = false
                end
                end
                end
                
                cameraFieldOfView = Camera.FieldOfView
                Camera.FieldOfView = 60
                
                cameraType = Camera.CameraType
                Camera.CameraType = Enum.CameraType.Custom
                
                cameraSubject = Camera.CameraSubject
                Camera.CameraSubject = nil
                
                cameraCFrame = Camera.CFrame
                cameraFocus = Camera.Focus
                
                mouseIconEnabled = UserInputService.MouseIconEnabled
                UserInputService.MouseIconEnabled = false
                
                mouseBehavior = UserInputService.MouseBehavior
                UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                end
                
                -- Restore state
                function PlayerState.Pop()
                for name, isEnabled in pairs(coreGuis) do
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
                end
                for name, isEnabled in pairs(setCores) do
                StarterGui:SetCore(name, isEnabled)
                end
                for _, gui in pairs(screenGuis) do
                if gui.Parent then
                gui.Enabled = true
                end
                end
                
                Camera.FieldOfView = cameraFieldOfView
                cameraFieldOfView = nil
                
                Camera.CameraType = cameraType
                cameraType = nil
                
                Camera.CameraSubject = cameraSubject
                cameraSubject = nil
                
                Camera.CFrame = cameraCFrame
                cameraCFrame = nil
                
                Camera.Focus = cameraFocus
                cameraFocus = nil
                
                UserInputService.MouseIconEnabled = mouseIconEnabled
                mouseIconEnabled = nil
                
                UserInputService.MouseBehavior = mouseBehavior
                mouseBehavior = nil
                end
                end
                
                local function StartFreecam()
                local cameraCFrame = Camera.CFrame
                cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
                cameraPos = cameraCFrame.p
                cameraFov = Camera.FieldOfView
                
                velSpring:Reset(Vector3.new())
                panSpring:Reset(Vector2.new())
                fovSpring:Reset(0)
                
                PlayerState.Push()
                RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
                Input.StartCapture()
                end
                
                local function StopFreecam()
                Input.StopCapture()
                RunService:UnbindFromRenderStep("Freecam")
                PlayerState.Pop()
                end
                
                ------------------------------------------------------------------------
                
                do
                local enabled = false
                
                local function ToggleFreecam()
                if enabled then
                StopFreecam()
                else
                StartFreecam()
                end
                enabled = not enabled
                end
                
                local function CheckMacro(macro)
                for i = 1, #macro - 1 do
                if not UserInputService:IsKeyDown(macro[i]) then
                return
                end
                end
                ToggleFreecam()
                end
                
                local function HandleActivationInput(action, state, input)
                if state == Enum.UserInputState.Begin then
                if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
                CheckMacro(FREECAM_MACRO_KB)
                end
                end
                return Enum.ContextActionResult.Pass
                end
                
                ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
                end
                end))
                for i,v in pairs(mas:GetChildren()) do
                v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
                pcall(function() v:MakeJoints() end)
                end
                mas:Destroy()
                for i,v in pairs(cors) do
                spawn(function()
                pcall(v)
                end)
                end
        end
    })


	Tabs.Main:AddButton({
        Title = "CLICK TO COPY MY DISCORD",
        Description = "im living in cave :(",
        Callback = function()

			Fluent:Notify({
                        Title = "Discord",
                        Content = "Copied!",
                        Duration = 10
                        })



			setclipboard("7g0d")
        end
    })
 

Tabs.Misc:AddToggle("FlyToggle", {
    Title = "Fly",
    Description = "V to toggle E = Up Q = Down",
    Default = false,
    Callback = function(state)

        if _G.Fly_Disable then
            _G.Fly_Disable()
            _G.Fly_Disable = nil
            task.wait(0.05)
        end

        if state then
 
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local UserInputService = game:GetService("UserInputService")

            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local rootPart = character:WaitForChild("HumanoidRootPart")

            local enabled = false
            local verticalSpeed = 0
            local flySpeed = 35
            local liftSpeed = 35

            local steppedConn
            local inputConn
            local charAddedConn

            local function toggleFly()
                enabled = not enabled
                if enabled then
                    humanoid:ChangeState(Enum.HumanoidStateType.Flying)
                else
                    humanoid:ChangeState(Enum.HumanoidStateType.Running)
                    if rootPart then
                        rootPart.Velocity = Vector3.zero
                    end
                end
                verticalSpeed = 0
            end

            inputConn = UserInputService.InputBegan:Connect(function(input, processed)
                if processed then return end
                if input.KeyCode == Enum.KeyCode.V then
                    toggleFly()
                end
            end)

            steppedConn = RunService.Stepped:Connect(function()
                if not enabled or not rootPart then return end

                local moveDirection = humanoid.MoveDirection
                local isPressingE = UserInputService:IsKeyDown(Enum.KeyCode.E)
                local isPressingQ = UserInputService:IsKeyDown(Enum.KeyCode.Q)

                if isPressingE then
                    verticalSpeed = liftSpeed
                elseif isPressingQ then
                    verticalSpeed = -liftSpeed
                else
                    verticalSpeed = 0
                end

                local velocity = Vector3.new(moveDirection.X * flySpeed, verticalSpeed, moveDirection.Z * flySpeed)
                rootPart.Velocity = velocity
            end)

            charAddedConn = player.CharacterAdded:Connect(function(newCharacter)
                character = newCharacter
                humanoid = character:WaitForChild("Humanoid")
                rootPart = character:WaitForChild("HumanoidRootPart")
                enabled = false
            end)

            _G.Fly_Disable = function()
                enabled = false
                pcall(function() if inputConn then inputConn:Disconnect() end end)
                pcall(function() if steppedConn then steppedConn:Disconnect() end end)
                pcall(function() if charAddedConn then charAddedConn:Disconnect() end end)
                if rootPart then
                    rootPart.Velocity = Vector3.zero
                end
                character, humanoid, rootPart = nil, nil, nil
            end

            Fluent:Notify({
                Title = "Fly",
                Content = "Fly enabled press V to toggle",
                Duration = 3
            })
        else
            -- Отключаем Fly
            if _G.Fly_Disable then
                _G.Fly_Disable()
                _G.Fly_Disable = nil

                Fluent:Notify({
                    Title = "Fly",
                    Content = "Fly disabled",
                    Duration = 0
                })
            end
        end
    end


})

local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local teleportEnabled = false
local teleportKey = Enum.KeyCode.Q


local raycastParams = RaycastParams.new()
raycastParams.FilterDescendantsInstances = {workspace.Terrain}
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist


Tabs.Misc:AddToggle("Teleport - Q", {
Description = "just teleport tool",
    Title = "Teleport - Q",
    Default = false,
    Callback = function(value)
        teleportEnabled = value
    end
})


local function getCursorPosition()
    local mouse = player:GetMouse()
    local camera = workspace.CurrentCamera
    

    local rayOrigin = camera.CFrame.Position
    local rayDirection = camera:ScreenPointToRay(mouse.X, mouse.Y).Direction * 1000
    
    local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
    
    if raycastResult then
        return raycastResult.Position
    end
    
    return nil
end


local function teleportToCursor()
    if not teleportEnabled then return end
    
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local targetPosition = getCursorPosition()
    if not targetPosition then return end
    

    humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 3, 0))
end


UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == teleportKey and teleportEnabled then
        teleportToCursor()
    end
end)


-- noclip

local NoclipEnabled = false
local NoclipConnection = nil


local IMPORTANT_PARTS = {
    "Head",
    "Torso",
    "HumanoidRootPart"
}

local function EnableNoclip()
    if NoclipConnection then return end
    
    NoclipConnection = game:GetService('RunService').Stepped:Connect(function()
        if NoclipEnabled and game.Players.LocalPlayer.Character then
            for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if part:IsA('BasePart') then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function DisableNoclip()
    if NoclipConnection then
        NoclipConnection:Disconnect()
        NoclipConnection = nil
    end
    

    local character = game.Players.LocalPlayer.Character
    if character then
        for _, partName in ipairs(IMPORTANT_PARTS) do
            local part = character:FindFirstChild(partName)
            if part and part:IsA('BasePart') then
                part.CanCollide = true
            end
        end
    end
end

Tabs.Misc:AddToggle("NoclipToggle", {
    Title = "NoClip",
    Description = "UeUeUeUeUeUeUeUe",
    Default = false,
    Callback = function(state)
        NoclipEnabled = state
        
        if state then
            EnableNoclip()
            Fluent:Notify({
                Title = "NoClip",
                Content = "NoClip enabled",
                Duration = 3
            })
        else
            DisableNoclip()
            Fluent:Notify({
                Title = "NoClip",
                Content = "NoClip disabled",
                Duration = 0
            })
        end
    end
})


Tabs.Misc:AddToggle("RagdollToggle", {
    Title = "RagdollV1",
    Description = "ragdoll your character",
    Default = false,
    Callback = function(state)
        if _G.Ragdoll_Disable then
            _G.Ragdoll_Disable()
            _G.Ragdoll_Disable = nil
        end

        if state then
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")

            if not humanoid then
                Fluent:Notify({
                    Title = "Ragdoll",
                    Content = "Humanoid not found!",
                    Duration = 4
                })
                return
            end

            local originalStates = {}

            -- Отключаем управление
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("Motor6D") then
                    local socket = Instance.new("BallSocketConstraint")
                    local a0 = Instance.new("Attachment")
                    local a1 = Instance.new("Attachment")

                    a0.Name = "RagdollAttachment0"
                    a1.Name = "RagdollAttachment1"

                    a0.CFrame = part.C0
                    a1.CFrame = part.C1

                    a0.Parent = part.Part0
                    a1.Parent = part.Part1

                    socket.Attachment0 = a0
                    socket.Attachment1 = a1
                    socket.Parent = part.Part0

                    table.insert(originalStates, {Motor = part, Socket = socket, A0 = a0, A1 = a1})
                    part.Enabled = false
                end
            end

            -- Убираем контроль
            humanoid.PlatformStand = true

            -- Сохраняем функцию отключения
            _G.Ragdoll_Disable = function()
                humanoid.PlatformStand = false
                for _, entry in ipairs(originalStates) do
                    entry.Motor.Enabled = true
                    entry.Socket:Destroy()
                    entry.A0:Destroy()
                    entry.A1:Destroy()
                end
                originalStates = {}
            end

            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV1 Enabled",
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV1 Disabled",
                Duration = 0
            })
        end
    end
})



Tabs.Misc:AddToggle("RagdollToggle", {
    Title = "RagdollV2",
    Description = "another one ragdoll",
    Default = false,
    Callback = function(state)
        -- Получаем игрока и персонажа
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        -- Функция для включения Ragdoll
        local function enableRagdoll()
            -- Отключаем контроль персонажа
            humanoid.PlatformStand = true
            -- Включаем физику для всех частей тела
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                    part.Anchored = false
                end
            end
        end


        local function disableRagdoll()

            humanoid.PlatformStand = false


            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = true
                end
            end


            wait(0.1)

            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = false
                end
            end


            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end


        if state then
            enableRagdoll()
            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV2 Enabled",
                Duration = 3
            })
        else

            disableRagdoll()
            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV2 Disabled",
                Duration = 0
            })
        end
    end
})

-- Автоматическая настройка при смене персонажа
local player = game:GetService("Players").LocalPlayer
player.CharacterAdded:Connect(function(newCharacter)
    local character = newCharacter
    local humanoid = character:WaitForChild("Humanoid")
    -- При смене персонажа отключаем ragdoll
    Tabs.Misc.RagdollToggle:SetState(false)
end)




-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)
 
-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
 
-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()
 
-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})
 
-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
 
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
 
 
Window:SelectTab(1)
 
Fluent:Notify({
    Title = "GOD",
    Content = "YummyHub has been loaded.",
    Duration = 8
})
 
-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
end


else
    warn("Key verification failed or was cancelled")
end

