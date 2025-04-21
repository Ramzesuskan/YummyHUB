-- Проверка: если уже активен предыдущий fly — выключаем его
if _G.Fly_Disable then
    _G.Fly_Disable()
    _G.Fly_Disable = nil
end

-- Новый Fly-скрипт
_G.Fly_Disable = (function()
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
        humanoid:ChangeState(enabled and Enum.HumanoidStateType.Flying or Enum.HumanoidStateType.Running)
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

    -- Функция отключения
    return function()
        if inputConn then inputConn:Disconnect() end
        if steppedConn then steppedConn:Disconnect() end
        if charAddedConn then charAddedConn:Disconnect() end
        enabled = false
    end
end)()
