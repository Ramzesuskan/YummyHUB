--criminality

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "YummyHUB |",
    SubTitle = "By 1gods [CRIMINALITY]",
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
        Content = "Script By GOD (1gods)",
        SubContent = "Rape Hack Activated", -- Optional
        Duration = 15 -- Set to nil to make the notification not disappear





})

	Tabs.Main:AddButton({
        Title = "Silent Aim",
        Description = "One time use if u click button again it will crash",
        Callback = function(esp)

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://106821802375198"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


			loadstring(game:HttpGet("https://raw.githubusercontent.com/Ramzesuskan/YummyHUB/refs/heads/main/YummyHUBsilent.lua",true))()
				
			Fluent:Notify({
                        Title = "Silent Aim",
                        Content = "Already Loaded",
                        Duration = 10
                        })

			end





})
	
	
        Tabs.Main:AddButton({
        Title = "FemboysHUB Premium",
        Description = "sometimes can load not all pages + dont use wallbang u will get insta ban!!!",
        Callback = function()


			Fluent:Notify({
                        Title = "FemboysHUB Premium",
                        Content = "Already Loaded",
                        Duration = 10
                        })




local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://3043029786"
Sound.Volume = 2
Sound.PlayOnRemove = true
Sound.Parent = game:GetService("SoundService")
Sound:Destroy()


   
    pcall(function()
        writefile("Rayfield/Key System/Key123.rfld", "NoHomo")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LisSploit/FemboysHubBoosr/2784d6c4ede4340ad9af4865828d915ffc26c7bb/Criminality"))()
    end)

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


			loadstring(game:HttpGet("https://raw.githubusercontent.com/Ramzesuskan/WDYM_HUB/refs/heads/main/WdymHub.lua",true))()
				
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
	





    local Toggle = Tabs.Visual:AddToggle("Highlight", {Title = "Highlight", Default = false })

    Toggle:OnChanged(function(Value)
        _G.highlightEnabled = Value
    end)


    _G.highlightEnabled = false

    local function getRoleColor(plr)
        if (plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife")) then
            return Color3.new(1, 0, 0)
        elseif (plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun")) then
            return Color3.new(0, 0, 1)
        else
            return Color3.new(186,85,211)
        end
    end
    
    local function handleHighlight()
        while true do
            if _G.highlightEnabled then
                for _, v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character then
                        if not v.Character:FindFirstChild("Highlight") then
                            local highlight = Instance.new("Highlight", v.Character)
                            highlight.FillTransparency = 1.0
                            highlight.OutlineTransparency = 0.0
                            highlight.FillColor = getRoleColor(v)
                        else
                            v.Character.Highlight.FillColor = getRoleColor(v)
                        end
                    end
                end
            else
                for _, v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Highlight") then
                        v.Character.Highlight:Destroy()
                    end
                end
            end
            wait(0.1)
        end
    end
    
    spawn(handleHighlight)

        Tabs.Visual:AddButton({
        Title = "FullBright",
        Description = "FullBright",
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



			setclipboard("1gods")
        end
    })
 

Tabs.Misc:AddToggle("FlyToggle", {
    Title = "Fly",
    Description = "Enable/Disable Fly | V to toggle E = Up Q = Down",
    Default = false,
    Callback = function(state)
        -- При любом новом включении сначала отключаем предыдущий Fly
        if _G.Fly_Disable then
            _G.Fly_Disable()
            _G.Fly_Disable = nil
            task.wait(0.05)
        end

        if state then
            -- Встроенный Fly код
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

            -- Функция отключения
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
                Content = "Fly enabled. Press V to toggle.",
                Duration = 6
            })
        else
            -- Отключаем Fly
            if _G.Fly_Disable then
                _G.Fly_Disable()
                _G.Fly_Disable = nil
                Fluent:Notify({
                    Title = "Fly",
                    Content = "Fly disabled.",
                    Duration = 4
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

-- Создаем луч для визуализации телепортации
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

-- Функция для получения позиции курсора
local function getCursorPosition()
    local mouse = player:GetMouse()
    local camera = workspace.CurrentCamera
    
    -- Создаем луч от камеры через позицию курсора
    local rayOrigin = camera.CFrame.Position
    local rayDirection = camera:ScreenPointToRay(mouse.X, mouse.Y).Direction * 1000
    
    local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
    
    if raycastResult then
        return raycastResult.Position
    end
    
    return nil
end

-- Функция телепортации
local function teleportToCursor()
    if not teleportEnabled then return end
    
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local targetPosition = getCursorPosition()
    if not targetPosition then return end
    
    -- Добавляем небольшое смещение вверх, чтобы не застрять в земле
    humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 3, 0))
end

-- Обработка нажатия клавиши
UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == teleportKey and teleportEnabled then
        teleportToCursor()
    end
end)



local player = game:GetService("Players").LocalPlayer
local runService = game:GetService("RunService")

local noclipEnabled = false
local noclipConnection
local healthThreshold = 15 -- Порог здоровья для автоматического отключения

-- Функция проверки здоровья
local function checkHealth()
    local character = player.Character
    if not character then return false end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return false end
    
    return humanoid.Health < healthThreshold
end  

-- Функция для активации/деактивации Noclip
local function toggleNoclip(state)
    -- Если здоровье низкое - принудительно отключаем
    if state and checkHealth() then
        if noclipEnabled then
            noclipEnabled = false
            if Toggle then
                Toggle:Set(false)
            end
        end
        return
    end

    local character = player.Character or player.CharacterAdded:Wait()
    
    if state then
        -- Активируем Noclip
        noclipConnection = runService.Stepped:Connect(function()
            if character and character:FindFirstChildOfClass("Humanoid") then
                -- Проверяем здоровье каждый кадр
                if checkHealth() then
                    toggleNoclip(false)
                    if Toggle then
                        Toggle:Set(false)
                    end
                    return
                end
                
                -- Отключаем коллизии
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        -- Деактивируем Noclip
        if noclipConnection then
            noclipConnection:Disconnect()
            noclipConnection = nil
            
            -- Восстанавливаем коллизии
            local character = player.Character
            if character then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
end

-- Добавляем Toggle в интерфейс
local Toggle = Tabs.Misc:AddToggle("Noclip", {
    Title = "Noclip",
    Default = false,
    Description = "if you down you will not drop through ground bc its better noclip",
    Callback = function(value)
        noclipEnabled = value
        toggleNoclip(value)
    end
})

-- Обработка изменений здоровья
local function onHealthChanged()
    if noclipEnabled and checkHealth() then
        noclipEnabled = false
        toggleNoclip(false)
        if Toggle then
            Toggle:Set(false)
        end
    end
end

-- Подписываемся на события здоровья
player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChildOfClass("Humanoid")
    humanoid.HealthChanged:Connect(onHealthChanged)
    
    if noclipEnabled then
        toggleNoclip(false)
        task.wait(0.5)
        toggleNoclip(true)
    end
end)

-- Инициализация для существующего персонажа
if player.Character then
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.HealthChanged:Connect(onHealthChanged)
    end
end




Tabs.Misc:AddToggle("RagdollToggle", {
    Title = "RagdollV1",
    Description = "ragdollV1 your character",
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
                Duration = 6
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
    Title = "Ragdoll",
    Description = "Ragdoll v2",
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

        -- Функция для выключения Ragdoll
        local function disableRagdoll()
            -- Включаем контроль персонажа
            humanoid.PlatformStand = false

            -- Фиксируем все части (чтобы персонаж не разваливался)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = true
                end
            end

            -- Через небольшой промежуток времени возвращаем физику
            wait(0.1)

            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = false
                end
            end

            -- Возвращаем персонажа в стоячее положение
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end

        -- Если режим включен, активируем ragdoll
        if state then
            enableRagdoll()
            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV2 Enabled",
                Duration = 6
            })
        else
            -- Если режим выключен, деактивируем ragdoll
            disableRagdoll()
            Fluent:Notify({
                Title = "Ragdoll",
                Content = "RagdollV2 Enabled",
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
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})
 
-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
end
