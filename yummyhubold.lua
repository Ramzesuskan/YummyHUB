-- yummy hub
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")

local LocalPlayer = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "VenomHubScreenGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "VenomHubMainFrame"
mainFrame.Size = UDim2.new(0, 250, 0, 180)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(110, 0, 255)
mainFrame.BorderSizePixel = 2
mainFrame.Visible = true
mainFrame.Active = true
mainFrame.Selectable = true
mainFrame.Parent = screenGui

local titleBar = Instance.new("TextLabel")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.Font = Enum.Font.SourceSansBold
titleBar.TextSize = 18
titleBar.Text = "Yummy Menu :P"
titleBar.Parent = mainFrame

local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, 0, 0, 20)
footerLabel.Position = UDim2.new(0, 0, 1, -20)
footerLabel.BackgroundTransparency = 1
footerLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
footerLabel.Font = Enum.Font.SourceSansSemibold
footerLabel.TextSize = 16
footerLabel.Text = "By GOD (1gods)"
footerLabel.Parent = mainFrame

local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -10, 1, -60)
contentFrame.Position = UDim2.new(0, 5, 0, 35)
contentFrame.BackgroundTransparency = 1
contentFrame.BorderSizePixel = 0
contentFrame.ScrollingDirection = Enum.ScrollingDirection.Y
contentFrame.ScrollBarThickness = 4
contentFrame.Parent = mainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0,5)
UIListLayout.Parent = contentFrame

local function createToggleRow(parent, scriptName, canToggle, isEnabledFn, onEnable, onDisable, getKeyBindFn, setKeyBindFn)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 0, 30)
    frame.BackgroundTransparency = 1
    frame.Parent = parent

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.4, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = scriptName
    label.TextColor3 = Color3.new(1, 1, 1)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.2, 0, 1, 0)
    button.Position = UDim2.new(0.4, 5, 0, 0)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 16
    button.Parent = frame

    local bindButton = Instance.new("TextButton")
    bindButton.Size = UDim2.new(0.2, 0, 1, 0)
    bindButton.Position = UDim2.new(0.6, 10, 0, 0)
    bindButton.Font = Enum.Font.SourceSans
    bindButton.TextSize = 16
    bindButton.Text = "Bind"
    bindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    bindButton.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
    bindButton.Parent = frame

    local function updateToggleButton()
        if not canToggle then
            button.Text = "Run"
            button.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            return
        end
        if isEnabledFn() then
            button.Text = "ON"
            button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        else
            button.Text = "OFF"
            button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
        end
    end
    updateToggleButton()

    button.MouseButton1Click:Connect(function()
        if not canToggle then
            onEnable()
            button.Text = "DONE"
            button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
            button.Active = false
            bindButton.Active = false
            return
        end
        if isEnabledFn() then
            onDisable()
        else
            onEnable()
        end
        updateToggleButton()
    end)

    if getKeyBindFn and setKeyBindFn then
        local capturingKey = false

        local function updateBindButtonText()
            local kb = getKeyBindFn()
            if kb then
                bindButton.Text = "[".. kb.Name .."]"
            else
                bindButton.Text = "Bind"
            end
        end
        updateBindButtonText()

        bindButton.MouseButton1Click:Connect(function()
            if capturingKey then
                capturingKey = false
                bindButton.Text = "Bind"
            else
                capturingKey = true
                bindButton.Text = "Press Key..."
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gp)
            if gp then return end
            if capturingKey then
                if input.KeyCode ~= Enum.KeyCode.Unknown then
                    setKeyBindFn(input.KeyCode)
                    capturingKey = false
                    updateBindButtonText()
                end
            else
                local kb = getKeyBindFn()
                if kb and input.KeyCode == kb then
                    if canToggle then
                        if isEnabledFn() then
                            onDisable()
                        else
                            onEnable()
                        end
                        updateToggleButton()
                    else
                        onEnable()
                        button.Text = "DONE"
                        button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
                        button.Active = false
                        bindButton.Active = false
                    end
                end
            end
        end)
    else
        bindButton.Visible = false
    end

    return frame
end

--========================== Admin Check ========================--
local AdminCheck_Enabled = false
local AdminCheck_Connection
local AdminCheck_Coroutine

local AdminList = {
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
    ["Cefasin"] = true, ["ulzig"] = true, ["DieYouOder"] = true, ["whosframed"] = true,
    ["b3THyb1T3z"] = true,
}

local function CheckAdmins()
    local players = Players:GetPlayers()
    for i = 1, #players do
        if AdminList[players[i].Name] then
            LocalPlayer:Kick("Admin")
            wait(2)
            game:Shutdown()
            return
        end
    end
end

local function AdminCheck_Enable()
    if AdminCheck_Enabled then return end
    AdminCheck_Enabled = true

    CheckAdmins()

    AdminCheck_Connection = Players.PlayerAdded:Connect(function(plr)
        if AdminCheck_Enabled and AdminList[plr.Name] then
            LocalPlayer:Kick("Detected Nigger")
            wait(2)
            game:Shutdown()
        end
    end)

    AdminCheck_Coroutine = spawn(function()
        while AdminCheck_Enabled do
            CheckAdmins()
            wait(4)
        end
    end)
end

local function AdminCheck_Disable()
    if not AdminCheck_Enabled then return end
    AdminCheck_Enabled = false

    if AdminCheck_Connection then
        AdminCheck_Connection:Disconnect()
        AdminCheck_Connection = nil
    end
    if AdminCheck_Coroutine then
        cancel(AdminCheck_Coroutine)
        AdminCheck_Coroutine = nil
    end
end

local function killScript()
    if AdminCheck_Connection then AdminCheck_Connection:Disconnect() end
    if AntiAFK_IdledConnection then AntiAFK_IdledConnection:Disconnect() end
    -- Удаление интерфейса
    if screenGui then
        screenGui:Destroy()
        screenGui = nil
    end

    AdminCheck_Enabled = false
    AntiAFK_Enabled = false

    
    print("u killed nigga in africa")
end

local killButtonFrame = Instance.new("Frame")
killButtonFrame.Size = UDim2.new(1, 0, 0, 30)
killButtonFrame.BackgroundTransparency = 1
killButtonFrame.Parent = contentFrame

local killButtonLabel = Instance.new("TextLabel")
killButtonLabel.Size = UDim2.new(0.4, 0, 1, 0)
killButtonLabel.BackgroundTransparency = 1
killButtonLabel.Text = "KILL BUTTON"
killButtonLabel.TextColor3 = Color3.new(1, 1, 1)
killButtonLabel.Font = Enum.Font.SourceSansSemibold
killButtonLabel.TextSize = 16
killButtonLabel.TextXAlignment = Enum.TextXAlignment.Left
killButtonLabel.Parent = killButtonFrame

local killButton = Instance.new("TextButton")
killButton.Size = UDim2.new(0.2, 0, 1, 0)
killButton.Position = UDim2.new(0.4, 5, 0, 0)
killButton.Font = Enum.Font.SourceSans
killButton.TextSize = 16
killButton.Text = "KILL"
killButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
killButton.TextColor3 = Color3.new(255, 255, 255)
killButton.Parent = killButtonFrame

killButton.MouseButton1Click:Connect(function()
    killScript()
    killButton.Text = "DONE"
    killButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0) 
    killButton.Active = false 
end)

local AntiAFK_Enabled = false
local AntiAFK_IdledConnection
local AntiAFK_Coroutine

local function AntiAFK_DoAction()
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:SetKeyDown('0x20')
        task.wait(0.1)
        VirtualUser:SetKeyUp('0x20')
    end)
    pcall(function()
        local camera = workspace.CurrentCamera
        camera.CFrame = camera.CFrame * CFrame.Angles(math.rad(0.5), 0, 0)
        task.wait(0.1)
        camera.CFrame = camera.CFrame * CFrame.Angles(math.rad(-0.5), 0, 0)
    end)
end

local function AntiAFK_Enable()
    if AntiAFK_Enabled then return end
    AntiAFK_Enabled = true

    local player = LocalPlayer
    AntiAFK_IdledConnection = player.Idled:Connect(function()
        if AntiAFK_Enabled then
            AntiAFK_DoAction()
        end
    end)

    AntiAFK_Coroutine = coroutine.create(function()
        while AntiAFK_Enabled do
            AntiAFK_DoAction()
            task.wait(30)
        end
    end)
    coroutine.resume(AntiAFK_Coroutine)
end

local function AntiAFK_Disable()
    if not AntiAFK_Enabled then return end
    AntiAFK_Enabled = false

    if AntiAFK_IdledConnection then
        AntiAFK_IdledConnection:Disconnect()
        AntiAFK_IdledConnection = nil
    end
    AntiAFK_Coroutine = nil
end

local function createToggleRow(parent, scriptName, canToggle, isEnabledFn, onEnable, onDisable, getKeyBindFn, setKeyBindFn)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 0, 30)
    frame.BackgroundTransparency = 1
    frame.Parent = parent

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.4, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = scriptName
    label.TextColor3 = Color3.new(1, 1, 1)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.2, 0, 1, 0)
    button.Position = UDim2.new(0.4, 5, 0, 0)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 16
    button.Parent = frame

    local bindButton = Instance.new("TextButton")
    bindButton.Size = UDim2.new(0.2, 0, 1, 0)
    bindButton.Position = UDim2.new(0.6, 10, 0, 0)
    bindButton.Font = Enum.Font.SourceSans
    bindButton.TextSize = 16
    bindButton.Text = "Bind"
    bindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    bindButton.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
    bindButton.Parent = frame

    local function updateToggleButton()
        if not canToggle then
            button.Text = "Run"
            button.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            return
        end
        if isEnabledFn() then
            button.Text = "ON"
            button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        else
            button.Text = "OFF"
            button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
        end
    end
    updateToggleButton()

    button.MouseButton1Click:Connect(function()
        if not canToggle then
            -- одноразовый запуск
            onEnable()
            button.Text = "DONE"
            button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
            button.Active = false
            bindButton.Active = false
            return
        end
        if isEnabledFn() then
            onDisable()
        else
            onEnable()
        end
        updateToggleButton()
    end)

    if getKeyBindFn and setKeyBindFn then
        local capturingKey = false

        local function updateBindButtonText()
            local kb = getKeyBindFn()
            if kb then
                bindButton.Text = "[".. kb.Name .."]"
            else
                bindButton.Text = "Bind"
            end
        end
        updateBindButtonText()

        bindButton.MouseButton1Click:Connect(function()
            if capturingKey then
                capturingKey = false
                bindButton.Text = "Bind"
            else
                capturingKey = true
                bindButton.Text = "Press Key..."
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gp)
            if gp then return end
            if capturingKey then
                if input.KeyCode ~= Enum.KeyCode.Unknown then
                    setKeyBindFn(input.KeyCode)
                    capturingKey = false
                    updateBindButtonText()
                end
            else
                local kb = getKeyBindFn()
                if kb and input.KeyCode == kb then
                    if canToggle then
                        if isEnabledFn() then
                            onDisable()
                        else
                            onEnable()
                        end
                        updateToggleButton()
                    else
                        -- одноразовый
                        if not DeletedMob_Ran then
                            onEnable()
                            button.Text = "DONE"
                            button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
                            button.Active = false
                            bindButton.Active = false
                        end
                    end
                end
            end
        end)
    else
        bindButton.Visible = false
    end

    return frame
end

-- 5) Admin Check
do
    local adminCheckBind = nil
    createToggleRow(
        contentFrame,
        "Admin Kick",
        true,
        function() return AdminCheck_Enabled end,
        AdminCheck_Enable,
        AdminCheck_Disable,
        function() return adminCheckBind end,
        function(k) adminCheckBind = k end
    )
end

-- 7) Anti AFK
do
    local antiAFKBind = nil
    createToggleRow(
        contentFrame,
        "Anti AFK",
        true,
        function() return AntiAFK_Enabled end,
        AntiAFK_Enable,
        AntiAFK_Disable,
        function() return antiAFKBind end,
        function(k) antiAFKBind = k end
    )
end

