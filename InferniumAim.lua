local v24 = {
    GUI = {
        GUIButton = true,
        GUIToggleKey = Enum.KeyCode.RightShift
    },
    AimBot = {
        Enabled = false,
        TeamCheck = false,
        WallCheck = false,
        StickyAim = false,
        Prediction = false,
        PredictionAmmount = 1,
        UseMouse = true,
        MouseBind = 'MouseButton2',
        Keybind = Enum.KeyCode.E,
        ShowFov = false,
        Fov = 360,
        Smoothing = 0.3,
        AimPart = 'Head',
        Thickness = 1,
        FovFillColor = Color3.fromRGB(100, 0, 100),
        FovColor = Color3.fromRGB(100, 0, 100),
        FovFillTransparency = 1,
        FovTransparenct = 0,
        IsAimKeyDown = false,
        Target = nil,
        CameraTween = nil
    },
    esp = {
        Enabled = false,
        TeamCheck = false,
        MaxDistance = 4E3,
        CharacterSize = Vector2.new(5, 6),
        Box = {
            Box = false,
            Name = false,
            Distance = false,
            Health = false,
            HealthBar = false,
            Color = Color3.fromRGB(255, 255, 255),
            Outline = false,
            OutlineColor = Color3.fromRGB(0, 0, 0)
        },
        Tracer = {
            TeamColor = false,
            Tracer = false,
            Color = Color3.fromRGB(255, 255, 255),
            Outline = false,
            OutlineColor = Color3.fromRGB(0, 0, 0)
        },
        Hilights = {
            Hilights = false,
            AllWaysVisible = false,
            OutlineTransparency = 0.5,
            FillTransparency = 0.5,
            OutlineColor = Color3.fromRGB(255, 0, 0),
            FillColor = Color3.fromRGB(255, 255, 255)
        }
    }
};
local v25 = game.Players;
local v26 = v25.LocalPlayer;
local v27 = game.Workspace.CurrentCamera;
local v28 = game.TweenService;
local v29 = game.UserInputService;
local v30 = v29.GetMouseLocation;
local v31 = game:FindFirstChild('CoreGui');
function library()
    local v73 = 0;
    local v74;
    local v75;
    local v76;
    local v77;
    local v78;
    while true do
        local v172 = 0;
        while true do
            if (0 == v172) then
                if (v73 == 0) then
                    v74 = {
                        flags = {},
                        items = {}
                    };
                    v75 = game.Players.LocalPlayer.PlayerGui;
                    v73 = 1;
                end
                if (v73 == (2)) then
                    v78 = game:GetService('HttpService');
                    v74.theme = {
                        BackGround = Color3.fromRGB(30, 30, 30),
                        BackGround2 = Color3.fromRGB(38, 38, 38),
                        Border = Color3.fromRGB(0, 0, 0),
                        Toggle = Color3.fromRGB(62, 62, 62),
                        Selected = Color3.fromRGB(85, 0, 255),
                        Font = Enum.Font.Ubuntu,
                        TextSize = 14,
                        TextColor = Color3.fromRGB(255, 255, 255)
                    };
                    v73 = 3;
                end
                v172 = 1;
            end
            if (v172 == (1)) then
                if (v73 == 3) then
                    v74.CreateWindow = function(v306, v307, v308)
                        local v309 = {};
                        v309.keybind = v307 or Enum.KeyCode.RightShift ;
                        v309.name = v308 or 'Infernium YummyHUB' ;
                        v309.ScreenGui = Instance.new('ScreenGui');
                        v309.ScreenGui.Parent = v76 or v75 ;
                        v309.ScreenGui.ResetOnSpawn = false;
                        v309.ScreenGui.DisplayOrder = 10;
                        local v316, v317, v318, v319;
                        game:GetService('UserInputService').InputChanged:Connect(function(v379)
                            if ((v379 == v317) and v316) then
                                local v512 = 0;
                                local v513;
                                while true do
                                    if (v512 == (0)) then
                                        v513 = v379.Position - v318 ;
                                        v309.Main.Position = UDim2.new(v319.X.Scale, v319.X.Offset + v513.X, v319.Y.Scale, v319.Y.Offset + v513.Y);
                                        break
                                    end
                                end
                            end
                        end);
                        local v320 = function(v380)
                            if ((v380.UserInputType == Enum.UserInputType.MouseButton1) or (v380.UserInputType == Enum.UserInputType.Touch)) then
                                v316 = true;
                                v318 = v380.Position;
                                v319 = v309.Main.Position;
                                v380.Changed:Connect(function()
                                    if (v380.UserInputState == Enum.UserInputState.End) then
                                        v316 = false;
                                    end
                                end);
                            end
                        end;
                        local v321 = function(v381)
                            if ((v381.UserInputType == Enum.UserInputType.MouseMovement) or (v381.UserInputType == Enum.UserInputType.Touch)) then
                                v317 = v381;
                            end
                        end;
                        v309.Main = Instance.new('TextButton', v309.ScreenGui);
                        v309.Main.Size = UDim2.fromOffset(800, 450);
                        v309.Main.BackgroundColor3 = v74.theme.BackGround;
                        v309.Main.BorderSizePixel = 1;
                        v309.Main.BorderColor3 = v74.theme.Border;
                        v309.Main.Active = true;
                        v309.Main.AutoButtonColor = false;
                        v309.Main.Text = "";
                        v309.Main.InputBegan:Connect(v320);
                        v309.Main.InputChanged:Connect(v321);
                        v309.RightSide = Instance.new('Frame', v309.Main);
                        v309.RightSide.BackgroundColor3 = v74.theme.BackGround2;
                        v309.RightSide.Size = UDim2.fromOffset(150, 450);
                        v309.RightSide.BorderSizePixel = 0;
                        v309.TabsHolder = Instance.new('Frame', v309.Main);
                        v309.TabsHolder.Position = UDim2.fromScale(3.099999999994907E-2, 0.107);
                        v309.TabsHolder.Size = UDim2.fromOffset(100, 389);
                        v309.TabsHolder.BackgroundTransparency = 1;
                        v309.UIListLayout = Instance.new('UIListLayout', v309.TabsHolder);
                        v309.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                        v309.UIListLayout.Padding = UDim.new(0, 10);
                        v309.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
                        v309.line = Instance.new('Frame', v309.Main);
                        v309.line.Position = UDim2.fromScale(0.188, 0);
                        v309.line.Size = UDim2.fromOffset(1, 450);
                        v309.line.BorderSizePixel = 0;
                        v309.line.BackgroundColor3 = v74.theme.Border;
                        v309.Title = Instance.new('TextLabel', v309.Main);
                        v309.Title.Position = UDim2.fromScale(0.016, 1.599999999996271E-2);
                        v309.Title.Size = UDim2.fromOffset(123, 34);
                        v309.Title.Text = v309.name;
                        v309.Title.Font = v74.theme.Font;
                        v309.Title.TextSize = 19;
                        v309.Title.BackgroundTransparency = 1;
                        v309.Title.TextColor3 = v74.theme.TextColor;
                        local v362 = v309.Title.FontFace;
                        v362.Weight = Enum.FontWeight.Bold;
                        v309.Title.FontFace = v362;
                        game:GetService('UserInputService').InputBegan:Connect(function(v382)
                            if (v382.KeyCode == v309.keybind) then
                                v309.Main.Visible = not v309.Main.Visible;
                            end
                        end);
                        v309.Tabs = {};
                        v309.OpenedColorPickers = {};
                        v309.UpdateKeyBind = function(v383, v384)
                            v309.keybind = v384;
                        end;
                        v309.CreateToggleButton = function(v386)
                            local v387 = 0;
                            local v388;
                            while true do
                                local v443 = 0;
                                while true do
                                    if (v443 == (2)) then
                                        if (v387 == (4)) then
                                            v388.Button.BackgroundColor3 = v74.theme.BackGround2;
                                            v388.Button.BorderSizePixel = 0;
                                            v388.Button.BorderColor3 = v74.theme.Border;
                                            v388.Button.MouseButton1Click:Connect(function()
                                                local v1190 = 0;
                                                while true do
                                                    if (v1190 == (0)) then
                                                        v309.Main.Visible = not v309.Main.Visible;
                                                        v388.Button.Text = (v309.Main.Visible and 'Close') or (not v309.Main.Visible and 'Open') ;
                                                        break
                                                    end
                                                end
                                            end);
                                            v387 = 5;
                                        end
                                        if ((2) == v387) then
                                            v388.Frame.BorderColor3 = v74.theme.Border;
                                            v388.Button = Instance.new('TextButton', v388.Frame);
                                            v388.Button.Size = UDim2.fromOffset(141, 26);
                                            v388.Button.Position = UDim2.fromScale(0, 0.3160000000000309);
                                            v387 = 3;
                                        end
                                        break
                                    end
                                    if (v443 == (1)) then
                                        if (v387 == 1) then
                                            v388.Frame.Draggable = true;
                                            v388.Frame.Active = true;
                                            v388.Frame.BackgroundColor3 = v74.theme.BackGround;
                                            v388.Frame.BorderSizePixel = 1;
                                            v387 = 2;
                                        end
                                        if (v387 == (3)) then
                                            v388.Button.Text = 'Close';
                                            v388.Button.TextColor3 = v74.theme.TextColor;
                                            v388.Button.Font = v74.theme.Font;
                                            v388.Button.TextSize = v74.theme.TextSize;
                                            v387 = 4;
                                        end
                                        v443 = 2;
                                    end
                                    if (v443 == 0) then
                                        if (v387 == (0)) then
                                            v388 = {};
                                            v388.Frame = Instance.new('Frame', v309.ScreenGui);
                                            v388.Frame.Size = UDim2.fromOffset(141, 38);
                                            v388.Frame.Position = UDim2.fromScale(0.466, 0.15);
                                            v387 = 1;
                                        end
                                        if (v387 == (5)) then
                                            game:GetService('UserInputService').InputBegan:Connect(function(v1191)
                                                if (v1191.KeyCode == v309.keybind) then
                                                    v388.Button.Text = (v309.Main.Visible and 'Close') or 'Open' ;
                                                end
                                            end);
                                            v388.Update = function(v1192, v1193)
                                                v388.Frame.Visible = v1193;
                                            end;
                                            return v388
                                        end
                                        v443 = 1;
                                    end
                                end
                            end
                        end;
                        v309.CreateTab = function(v389, v390)
                            local v391 = {};
                            v391.Button = Instance.new('TextButton', v309.TabsHolder);
                            v391.Button.Size = UDim2.fromOffset(137, 33);
                            v391.Button.BackgroundColor3 = v74.theme.BackGround;
                            v391.Button.Text = v390;
                            v391.Button.TextColor3 = v74.theme.TextColor;
                            v391.Button.Font = v74.theme.Font;
                            v391.Button.TextSize = v74.theme.TextSize;
                            v391.Button.BorderSizePixel = 0;
                            v391.Window = Instance.new('ScrollingFrame', v309.Main);
                            v391.Window.Name = v390 .. 'Tab' ;
                            v391.Window.BackgroundTransparency = 1;
                            v391.Window.Visible = false;
                            v391.Window.Size = UDim2.fromOffset(650, 450);
                            v391.Window.Position = UDim2.fromOffset(150, 0);
                            v391.Window.ScrollBarThickness = 0;
                            v391.Left = Instance.new('Frame', v391.Window);
                            v391.Left.Size = UDim2.fromOffset(100, 428);
                            v391.Left.Position = UDim2.fromOffset(120, 18);
                            v391.Left.BackgroundTransparency = 1;
                            v391.UiListLayout = Instance.new('UIListLayout', v391.Left);
                            v391.UiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                            v391.UiListLayout.Padding = UDim.new(0, 7);
                            v391.UiListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
                            v391.Right = Instance.new('Frame', v391.Window);
                            v391.Right.Size = UDim2.fromOffset(100, 428);
                            v391.Right.Position = UDim2.fromOffset(430, 18);
                            v391.Right.BackgroundTransparency = 1;
                            v391.UiListLayout1 = Instance.new('UIListLayout', v391.Right);
                            v391.UiListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                            v391.UiListLayout1.Padding = UDim.new(0, 7);
                            v391.UiListLayout1.SortOrder = Enum.SortOrder.LayoutOrder;
                            local v429 = false;
                            v391.SelectTab = function(v444)
                                repeat
                                    wait();
                                until v429 == false
                                v429 = true;
                                for v517, v518 in pairs(v309.Tabs) do
                                    if ((v518 ~= v391) or (v518.ClassName ~= 'TextLabel')) then
                                        local v1058 = 0;
                                        while true do
                                            if (v1058 == 0) then
                                                v518.Button.BackgroundColor3 = v74.theme.BackGround;
                                                v518.Button.Name = 'Tab';
                                                v1058 = 1;
                                            end
                                            if (v1058 == (1)) then
                                                v518.Window.Visible = false;
                                                break
                                            end
                                        end
                                    end
                                end
                                v391.Button.BackgroundColor3 = v74.theme.Selected;
                                v391.Button.Name = 'SelectedTab';
                                v391.Window.Visible = true;
                                v429 = false;
                            end;
                            if (# v309.Tabs == 0) then
                                v391:SelectTab();
                            end
                            v391.Button.MouseButton1Down:Connect(function()
                                v391:SelectTab();
                            end);
                            v391.SectorsLeft = {};
                            v391.SectorsRight = {};
                            v391.CreateSector = function(v449, v450, v451)
                                local v452 = {};
                                v452.side = v451:lower() or 'left' ;
                                v452.name = v450 or "" ;
                                v452.Main = Instance.new('Frame', ((v452.side == 'left') and v391.Left) or v391.Right);
                                v452.Main.BackgroundColor3 = v74.theme.BackGround2;
                                v452.Main.BorderSizePixel = 0;
                                v452.Main.Name = v452.name:gsub(" ", "") .. 'Sector' ;
                                v452.Main.Size = UDim2.fromOffset(265, 50);
                                v452.UICorner = Instance.new('UICorner', v452.Main);
                                v452.UICorner.CornerRadius = UDim.new(0, 9);
                                v452.Items = Instance.new('Frame', v452.Main);
                                v452.Items.Position = UDim2.fromScale(0.434, 0);
                                v452.Items.Size = UDim2.fromOffset(34, 50);
                                v452.Items.AutomaticSize = Enum.AutomaticSize.Y;
                                v452.Items.BackgroundTransparency = 1;
                                v452.UIListLayout = Instance.new('UIListLayout', v452.Items);
                                v452.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
                                v452.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
                                v452.UIListLayout.Padding = UDim.new(0, 7);
                                v452.Name = Instance.new('TextLabel', v452.Items);
                                v452.Name.BackgroundTransparency = 1;
                                v452.Name.Size = UDim2.fromOffset(20, 20);
                                v452.Name.Text = v450;
                                v452.Name.TextColor3 = v74.theme.TextColor;
                                v452.Name.Font = v74.theme.Font;
                                v452.Name.TextSize = v74.theme.TextSize;
                                v452.Name.TextYAlignment = Enum.TextYAlignment.Bottom;
                                v452.Divider = Instance.new('Frame', v452.Items);
                                v452.Divider.Size = UDim2.fromOffset(230, 2);
                                v452.Divider.BorderSizePixel = 0;
                                v452.Divider.BackgroundColor3 = v74.theme.BackGround;
                                table.insert(((v452.side:lower() == 'left') and v391.SectorsLeft) or v391.SectorsRight, v452);
                                v452.FixSize = function(v519)
                                    local v520 = 0;
                                    local v521;
                                    local v522;
                                    local v523;
                                    while true do
                                        if (0 == v520) then
                                            v521 = 0;
                                            v522 = nil;
                                            v520 = 1;
                                        end
                                        if (v520 == (1)) then
                                            v523 = nil;
                                            while true do
                                                if (v521 == (0)) then
                                                    v452.Main.Size = UDim2.fromOffset(250, v452.UIListLayout.AbsoluteContentSize.Y + (12));
                                                    v522, v523 = 0, 0;
                                                    v521 = 1;
                                                end
                                                if (1 == v521) then
                                                    for v1230, v1231 in pairs(v391.SectorsLeft) do
                                                        v522 = v522 + v1231.Main.AbsoluteSize.Y ;
                                                    end
                                                    for v1232, v1233 in pairs(v391.SectorsRight) do
                                                        v523 = v523 + v1233.Main.AbsoluteSize.Y ;
                                                    end
                                                    v521 = 2;
                                                end
                                                if (v521 == (2)) then
                                                    v391.Window.CanvasSize = ((v522 > v523) and UDim2.fromOffset(650, v522 + (100))) or UDim2.fromOffset(650, v523 + (100)) ;
                                                    break
                                                end
                                            end
                                            break
                                        end
                                    end
                                end;
                                v452.CreateToggle = function(v524, v525, v526, v527, v528)
                                    local v529 = {};
                                    v529.text = v525 or "" ;
                                    v529.default = v526 or false ;
                                    v529.callback = v527 or function(v956)
                                    end ;
                                    v529.flag = v528 or v525 or "" ;
                                    v529.value = v529.default;
                                    v529.Main = Instance.new('TextButton', v452.Items);
                                    v529.Main.Size = UDim2.fromOffset(240, 35);
                                    v529.Main.BackgroundColor3 = v74.theme.BackGround;
                                    v529.Main.AutoButtonColor = false;
                                    v529.Main.Text = "";
                                    v529.UICorner = Instance.new('UICorner', v529.Main);
                                    v529.UICorner.CornerRadius = UDim.new(0, 8);
                                    v529.Text = Instance.new('TextLabel', v529.Main);
                                    v529.Text.Position = UDim2.fromScale(4.599999999999227E-2, 0);
                                    v529.Text.Size = UDim2.fromOffset(125, 35);
                                    v529.Text.Text = v525;
                                    v529.Text.TextColor3 = v74.theme.TextColor;
                                    v529.Text.Font = v74.theme.Font;
                                    v529.Text.TextSize = v74.theme.TextSize;
                                    v529.Text.BackgroundTransparency = 1;
                                    v529.Text.TextXAlignment = Enum.TextXAlignment.Left;
                                    v529.Indicator = Instance.new('Frame', v529.Main);
                                    v529.Indicator.Position = UDim2.fromScale(0.875, 0.229);
                                    v529.Indicator.Size = UDim2.fromOffset(18, 18);
                                    v529.Indicator.BackgroundColor3 = v74.theme.Toggle;
                                    v529.Indicator.BorderSizePixel = 0;
                                    if (v529.flag and (v529.flag ~= "")) then
                                        v74.flags[v529.flag] = v529.default or false ;
                                    end
                                    v529.Set = function(v957, v958)
                                        if v958 then
                                            v529.Indicator.BackgroundColor3 = v74.theme.Selected;
                                        else
                                            v529.Indicator.BackgroundColor3 = v74.theme.Toggle;
                                        end
                                        v529.value = v958;
                                        v529.Indicator.BackgroundColor3 = (v958 and v74.theme.Selected) or v74.theme.Toggle ;
                                        if (v529.flag and (v529.flag ~= "")) then
                                            v74.flags[v529.flag] = v529.value;
                                        end
                                        pcall(v529.callback, v958);
                                    end;
                                    v529.Main.MouseButton1Down:Connect(function()
                                        v529:Set(not (((v529.Indicator.BackgroundColor3 == v74.theme.Selected) and true) or ((v529.Indicator.BackgroundColor3 == v74.theme.Toggle) and false)));
                                    end);
                                    v529:Set(v529.default);
                                    v452:FixSize();
                                    table.insert(v74.items, v529);
                                    return v529
                                end;
                                v452.CreateSlider = function(v563, v564, v565, v566, v567, v568, v569, v570)
                                    local v571 = {};
                                    v571.text = v564 or "" ;
                                    v571.callback = v569 or function(v961)
                                    end ;
                                    v571.min = v565 or (0) ;
                                    v571.max = v567 or (100) ;
                                    v571.decimals = v568 or 1 ;
                                    v571.default = v566 or v571.min ;
                                    v571.flag = v570 or v564 or "" ;
                                    v571.value = v571.default;
                                    local v580 = false;
                                    v571.Mainback = Instance.new('Frame', v452.Items);
                                    v571.Mainback.Size = UDim2.fromOffset(240, 35);
                                    v571.Mainback.BackgroundColor3 = v74.theme.BackGround;
                                    v571.Mainback.BorderSizePixel = 0;
                                    v571.UICorner = Instance.new('UICorner', v571.Mainback);
                                    v571.UICorner.CornerRadius = UDim.new(0, 8);
                                    v571.Text = Instance.new('TextLabel', v571.Mainback);
                                    v571.Text.Position = UDim2.fromScale(4.6E-2, 0);
                                    v571.Text.Size = UDim2.fromOffset(125, 35);
                                    v571.Text.Text = v564;
                                    v571.Text.TextColor3 = v74.theme.TextColor;
                                    v571.Text.Font = v74.theme.Font;
                                    v571.Text.TextSize = v74.theme.TextSize;
                                    v571.Text.BackgroundTransparency = 1;
                                    v571.Text.TextXAlignment = Enum.TextXAlignment.Left;
                                    v571.Main = Instance.new('TextButton', v571.Mainback);
                                    v571.Main.BackgroundColor3 = v74.theme.Toggle;
                                    v571.Main.Text = "";
                                    v571.Main.Position = UDim2.fromScale(0.5330000000000155, 0.229);
                                    v571.Main.Size = UDim2.fromOffset(100, 18);
                                    v571.Main.BorderSizePixel = 0;
                                    v571.Main.AutoButtonColor = false;
                                    v571.Slider = Instance.new('Frame', v571.Main);
                                    v571.Slider.BackgroundColor3 = v74.theme.Selected;
                                    v571.Slider.BorderSizePixel = 0;
                                    v571.Slider.Position = UDim2.fromScale(0, 0);
                                    v571.Slider.Size = UDim2.fromOffset(50, 18);
                                    v571.OutPutText = Instance.new('TextLabel', v571.Main);
                                    v571.OutPutText.Position = UDim2.fromScale(0, 0);
                                    v571.OutPutText.Size = UDim2.fromOffset(100, 18);
                                    v571.OutPutText.BackgroundTransparency = 1;
                                    v571.OutPutText.Font = v74.theme.Font;
                                    v571.OutPutText.TextColor3 = v74.theme.TextColor;
                                    v571.OutPutText.TextSize = v74.theme.TextSize;
                                    v571.OutPutText.Text = v571.value;
                                    if (v571.flag and (v571.flag ~= "")) then
                                        v74.flags[v571.flag] = v571.default or v571.min or 0 ;
                                    end
                                    v571.Get = function(v962)
                                        return v571.value
                                    end;
                                    v571.Set = function(v963, v964)
                                        local v965 = 0;
                                        local v966;
                                        while true do
                                            if (v965 == 1) then
                                                if (v571.flag and (v571.flag ~= "")) then
                                                    v74.flags[v571.flag] = v571.value;
                                                end
                                                v571.Slider:TweenSize(UDim2.fromOffset(v966 * v571.Main.AbsoluteSize.X, v571.Main.AbsoluteSize.Y), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 7.000000000000028E-2);
                                                v965 = 2;
                                            end
                                            if (v965 == 2) then
                                                v571.OutPutText.Text = v571.value;
                                                pcall(v571.callback, v571.value);
                                                break
                                            end
                                            if (v965 == 0) then
                                                v571.value = math.clamp(math.round(v964 * v571.decimals) / v571.decimals, v571.min, v571.max);
                                                v966 = (1) - ((v571.max - v571.value) / (v571.max - v571.min)) ;
                                                v965 = 1;
                                            end
                                        end
                                    end;
                                    v571:Set(v571.default);
                                    v571.Refresh = function(v967)
                                        local v968 = 0;
                                        local v969;
                                        local v970;
                                        local v971;
                                        while true do
                                            if ((1) == v968) then
                                                v971 = math.floor((v571.min + ((v571.max - v571.min) * v970)) * v571.decimals) / v571.decimals ;
                                                v971 = math.clamp(v971, v571.min, v571.max);
                                                v968 = 2;
                                            end
                                            if (v968 == 0) then
                                                v969 = game.Workspace.CurrentCamera:WorldToViewportPoint(game.Players.LocalPlayer:GetMouse().Hit.p);
                                                v970 = math.clamp(v969.X - v571.Slider.AbsolutePosition.X, 0, v571.Main.AbsoluteSize.X) / v571.Main.AbsoluteSize.X ;
                                                v968 = 1;
                                            end
                                            if (v968 == (2)) then
                                                v571:Set(v971);
                                                break
                                            end
                                        end
                                    end;
                                    v571.Slider.InputBegan:Connect(function(v972)
                                        if (v972.UserInputType == Enum.UserInputType.MouseButton1) then
                                            local v1086 = 0;
                                            local v1087;
                                            while true do
                                                if (v1086 == 0) then
                                                    v1087 = 0;
                                                    while true do
                                                        if (v1087 == 0) then
                                                            v580 = true;
                                                            v571:Refresh();
                                                            break
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    end);
                                    v571.Slider.InputEnded:Connect(function(v973)
                                        if (v973.UserInputType == Enum.UserInputType.MouseButton1) then
                                            v580 = false;
                                        end
                                    end);
                                    v571.Main.InputBegan:Connect(function(v974)
                                        if (v974.UserInputType == Enum.UserInputType.MouseButton1) then
                                            v580 = true;
                                            v571:Refresh();
                                        end
                                    end);
                                    v571.Main.InputEnded:Connect(function(v975)
                                        if (v975.UserInputType == Enum.UserInputType.MouseButton1) then
                                            v580 = false;
                                        end
                                    end);
                                    game:GetService('UserInputService').InputChanged:Connect(function(v976)
                                        if (v580 and (v976.UserInputType == Enum.UserInputType.MouseMovement)) then
                                            v571:Refresh();
                                        end
                                    end);
                                    v452:FixSize();
                                    table.insert(v74.items, v571);
                                    return v571
                                end;
                                v452.CreateDropDown = function(v626, v627, v628, v629, v630, v631, v632)
                                    local v633 = {};
                                    v633.text = v627 or "" ;
                                    v633.defaultitems = v628 or {} ;
                                    v633.default = v629;
                                    v633.callback = v631 or function()
                                    end ;
                                    v633.multichoice = v630 or false ;
                                    v633.values = {};
                                    v633.flag = v632 or v627 or "" ;
                                    v633.MainBack = Instance.new('TextButton', v452.Items);
                                    v633.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                    v633.MainBack.AutoButtonColor = false;
                                    v633.MainBack.Size = UDim2.fromOffset(240, 35);
                                    v633.MainBack.Text = "";
                                    v633.UICorner = Instance.new('UICorner', v633.MainBack);
                                    v633.UICorner.CornerRadius = UDim.new(0, 8);
                                    v633.TextLabel = Instance.new('TextLabel', v633.MainBack);
                                    v633.TextLabel.Text = v633.text;
                                    v633.TextLabel.BackgroundTransparency = 1;
                                    v633.TextLabel.TextColor3 = v74.theme.TextColor;
                                    v633.TextLabel.TextSize = v74.theme.TextSize;
                                    v633.TextLabel.Font = v74.theme.Font;
                                    v633.TextLabel.Size = UDim2.fromOffset(125, 35);
                                    v633.TextLabel.Position = UDim2.fromScale(4.6E-2, 0);
                                    v633.TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
                                    v633.Main = Instance.new('TextButton', v633.MainBack);
                                    v633.Main.BackgroundColor3 = v74.theme.Toggle;
                                    v633.Main.BorderSizePixel = 0;
                                    v633.Main.Position = UDim2.fromScale(0.496, 0.229);
                                    v633.Main.Size = UDim2.fromOffset(109, 18);
                                    v633.Main.TextSize = v74.theme.TextSize;
                                    v633.Main.TextColor3 = v74.theme.TextColor;
                                    v633.Main.Font = v74.theme.Font;
                                    v633.Main.AutoButtonColor = false;
                                    v633.Main.Text = "";
                                    v633.SelectedLable = Instance.new('TextLabel', v633.Main);
                                    v633.SelectedLable.Position = UDim2.fromOffset(0, 0);
                                    v633.SelectedLable.Size = UDim2.fromOffset(108, 18);
                                    v633.SelectedLable.BackgroundTransparency = 1;
                                    v633.SelectedLable.TextSize = v74.theme.TextSize;
                                    v633.SelectedLable.TextColor3 = v74.theme.TextColor;
                                    v633.SelectedLable.Font = v74.theme.Font;
                                    v633.SelectedLable.Text = v633.text;
                                    v633.Arrow = Instance.new('TextLabel', v633.Main);
                                    v633.Arrow.Position = UDim2.fromScale(0.8259999999999934, 0);
                                    v633.Arrow.Size = UDim2.fromOffset(18, 18);
                                    v633.Arrow.BackgroundTransparency = 1;
                                    v633.Arrow.TextSize = v74.theme.TextSize;
                                    v633.Arrow.TextColor3 = v74.theme.TextColor;
                                    v633.Arrow.Font = v74.theme.Font;
                                    v633.Arrow.Text = "<";
                                    v633.Arrow.Rotation = - 90;
                                    v633.Itemsframe = Instance.new('ScrollingFrame', v633.Main);
                                    v633.Itemsframe.BorderSizePixel = 0;
                                    v633.Itemsframe.BackgroundColor3 = v74.theme.BackGround;
                                    v633.Itemsframe.Position = UDim2.fromOffset(0, v633.Main.Size.Y.Offset + 8);
                                    v633.Itemsframe.ScrollBarThickness = 2;
                                    v633.Itemsframe.ZIndex = 8;
                                    v633.Itemsframe.ScrollingDirection = "Y";
                                    v633.Itemsframe.Visible = false;
                                    v633.Itemsframe.CanvasSize = UDim2.fromOffset(v633.Main.AbsoluteSize.X, 0);
                                    v633.UIList = Instance.new('UIListLayout', v633.Itemsframe);
                                    v633.UIList.FillDirection = Enum.FillDirection.Vertical;
                                    v633.UIList.SortOrder = Enum.SortOrder.LayoutOrder;
                                    v633.IgnoreBackButtons = Instance.new('TextButton', v633.Main);
                                    v633.IgnoreBackButtons.BackgroundTransparency = 1;
                                    v633.IgnoreBackButtons.BorderSizePixel = 0;
                                    v633.IgnoreBackButtons.Position = UDim2.fromOffset(0, v633.Main.Size.Y.Offset + 5 + 3);
                                    v633.IgnoreBackButtons.Size = UDim2.new(0, 0, 0, 0);
                                    v633.IgnoreBackButtons.ZIndex = 7;
                                    v633.IgnoreBackButtons.Text = "";
                                    v633.IgnoreBackButtons.Visible = false;
                                    v633.IgnoreBackButtons.AutoButtonColor = false;
                                    if (v633.flag and (v633.flag ~= "")) then
                                        v74.flags[v633.flag] = (v633.multichoice and {
                                            v633.default or v633.defaultitems[1] or ""
                                        }) or v633.default or v633.defaultitems[1] or "" ;
                                    end
                                    v633.isSelected = function(v977, v978)
                                        local v979 = 0;
                                        local v980;
                                        while true do
                                            if (v979 == (0)) then
                                                v980 = 0;
                                                while true do
                                                    if (v980 == 0) then
                                                        for v1250, v1251 in pairs(v633.values) do
                                                            if (v1251 == v978) then
                                                                return true
                                                            end
                                                        end
                                                        return false
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end;
                                    v633.GetOptions = function(v981)
                                        return v633.values
                                    end;
                                    v633.updateText = function(v982, v983)
                                        local v984 = 0;
                                        while true do
                                            if (v984 == 0) then
                                                if (# v983 >= (27)) then
                                                    v983 = v983:sub(1, 25) .. '..' ;
                                                end
                                                v633.SelectedLable.Text = v983;
                                                break
                                            end
                                        end
                                    end;
                                    v633.Changed = Instance.new('BindableEvent');
                                    v633.Set = function(v985, v986)
                                        local v987 = 0;
                                        local v988;
                                        while true do
                                            if (v987 == (0)) then
                                                v988 = 0;
                                                while true do
                                                    if ((0) == v988) then
                                                        if (type(v986) == 'table') then
                                                            local v1280 = 0;
                                                            while true do
                                                                if (v1280 == 0) then
                                                                    v633.values = v986;
                                                                    v633:updateText(table.concat(v986, ', '));
                                                                    v1280 = 1;
                                                                end
                                                                if (v1280 == (1)) then
                                                                    pcall(v633.callback, v986);
                                                                    break
                                                                end
                                                            end
                                                        else
                                                            local v1281 = 0;
                                                            while true do
                                                                if (v1281 == 0) then
                                                                    v633:updateText(v986);
                                                                    v633.values = {
                                                                        v986
                                                                    };
                                                                    v1281 = 1;
                                                                end
                                                                if (v1281 == (1)) then
                                                                    pcall(v633.callback, v986);
                                                                    break
                                                                end
                                                            end
                                                        end
                                                        v633.Changed:Fire(v986);
                                                        v988 = 1;
                                                    end
                                                    if (v988 == (1)) then
                                                        if (v633.flag and (v633.flag ~= "")) then
                                                            v74.flags[v633.flag] = (v633.multichoice and v633.values) or v633.values[1] ;
                                                        end
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end;
                                    v633.Get = function(v989)
                                        return (v633.multichoice and v633.values) or v633.values[1]
                                    end;
                                    v633.items = {};
                                    v633.Add = function(v990, v991)
                                        local v992 = Instance.new('TextButton', v633.Itemsframe);
                                        v992.BackgroundColor3 = v74.theme.Toggle;
                                        v992.TextColor3 = v74.theme.TextColor;
                                        v992.BorderSizePixel = 0;
                                        v992.Position = UDim2.fromOffset(0, 0);
                                        v992.Size = UDim2.fromOffset(180, 20);
                                        v992.BackgroundTransparency = 0;
                                        v992.ZIndex = 9;
                                        v992.Text = v991;
                                        v992.Name = v991;
                                        v992.AutoButtonColor = false;
                                        v992.Font = v74.theme.Font;
                                        v992.TextSize = v74.theme.TextSize;
                                        v992.TextXAlignment = Enum.TextXAlignment.Left;
                                        v992.MouseButton1Down:Connect(function()
                                            local v1062 = 0;
                                            while true do
                                                if (v1062 == (0)) then
                                                    if v633.multichoice then
                                                        local v1234 = 0;
                                                        while true do
                                                            if (v1234 == (0)) then
                                                                if v633:isSelected(v991) then
                                                                    local v1360 = 0;
                                                                    while true do
                                                                        if (v1360 == 0) then
                                                                            for v1474, v1475 in pairs(v633.values) do
                                                                                if (v1475 == v991) then
                                                                                    table.remove(v633.values, v1474);
                                                                                end
                                                                            end
                                                                            v633:Set(v633.values);
                                                                            break
                                                                        end
                                                                    end
                                                                else
                                                                    local v1361 = 0;
                                                                    local v1362;
                                                                    while true do
                                                                        if (v1361 == 0) then
                                                                            v1362 = 0;
                                                                            while true do
                                                                                if (v1362 == (0)) then
                                                                                    table.insert(v633.values, v991);
                                                                                    v633:Set(v633.values);
                                                                                    break
                                                                                end
                                                                            end
                                                                            break
                                                                        end
                                                                    end
                                                                end
                                                                return
                                                            end
                                                        end
                                                    else
                                                        local v1235 = 0;
                                                        while true do
                                                            if ((1) == v1235) then
                                                                v633.IgnoreBackButtons.Visible = false;
                                                                v633.IgnoreBackButtons.Active = false;
                                                                break
                                                            end
                                                            if (v1235 == (0)) then
                                                                v633.Itemsframe.Visible = false;
                                                                v633.Itemsframe.Active = false;
                                                                v1235 = 1;
                                                            end
                                                        end
                                                    end
                                                    v633:Set(v991);
                                                    v1062 = 1;
                                                end
                                                if (v1062 == (1)) then
                                                    return
                                                end
                                            end
                                        end);
                                        game:GetService('RunService').RenderStepped:Connect(function()
                                            if ((v633.multichoice and v633:isSelected(v991)) or (v633.values[1] == v991)) then
                                                local v1179 = 0;
                                                local v1180;
                                                while true do
                                                    if (v1179 == (0)) then
                                                        v1180 = 0;
                                                        while true do
                                                            if (v1180 == (0)) then
                                                                v992.BackgroundColor3 = v74.theme.Selected;
                                                                v992.Text = v991;
                                                                break
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                            else
                                                v992.BackgroundColor3 = v74.theme.BackGround2;
                                                v992.Text = v991;
                                            end
                                        end);
                                        table.insert(v633.items, v991);
                                        v633.Itemsframe.Size = UDim2.fromOffset(v633.Main.Size.X.Offset, math.clamp(# v633.items * v992.AbsoluteSize.Y, 20, 156) + (4));
                                        v633.Itemsframe.CanvasSize = UDim2.fromOffset(v633.Itemsframe.AbsoluteSize.X, (# v633.items * v992.AbsoluteSize.Y) + (4));
                                        v633.IgnoreBackButtons.Size = v633.Itemsframe.Size;
                                    end;
                                    v633.Remove = function(v1014, v1015)
                                        local v1016 = 0;
                                        local v1017;
                                        while true do
                                            if (v1016 == (0)) then
                                                v1017 = v633.Itemsframe:FindFirstChild(v1015);
                                                if v1017 then
                                                    local v1209 = 0;
                                                    while true do
                                                        if (v1209 == (1)) then
                                                            v633.Itemsframe.CanvasSize = UDim2.fromOffset(v633.Itemsframe.AbsoluteSize.X, (# v633.items * v1017.AbsoluteSize.Y) + (4));
                                                            v633.IgnoreBackButtons.Size = v633.Itemsframe.Size;
                                                            v1209 = 2;
                                                        end
                                                        if (v1209 == (2)) then
                                                            v1017:Remove();
                                                            break
                                                        end
                                                        if (v1209 == (0)) then
                                                            for v1350, v1351 in pairs(v633.items) do
                                                                if (v1351 == v1015) then
                                                                    table.remove(v633.items, v1350);
                                                                end
                                                            end
                                                            v633.Itemsframe.Size = UDim2.fromOffset(v633.Main.Size.X.Offset, math.clamp(# v633.items * v1017.AbsoluteSize.Y, 20, 156) + (4));
                                                            v1209 = 1;
                                                        end
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end;
                                    for v1018, v1019 in pairs(v633.defaultitems) do
                                        v633:Add(v1019);
                                    end
                                    if v633.default then
                                        v633:Set(v633.default);
                                    end
                                    local v722 = function()
                                        if not v633.Itemsframe.Visible then
                                            if (v633.items and (# v633.items ~= 0)) then
                                                local v1199 = 0;
                                                while true do
                                                    if (v1199 == (0)) then
                                                        v633.Arrow.Rotation = 90;
                                                        v633.Itemsframe.ScrollingEnabled = true;
                                                        v1199 = 1;
                                                    end
                                                    if ((2) == v1199) then
                                                        v633.IgnoreBackButtons.Visible = true;
                                                        v633.IgnoreBackButtons.Active = true;
                                                        break
                                                    end
                                                    if (v1199 == 1) then
                                                        v633.Itemsframe.Visible = true;
                                                        v633.Itemsframe.Active = true;
                                                        v1199 = 2;
                                                    end
                                                end
                                            end
                                        else
                                            local v1088 = 0;
                                            while true do
                                                if (v1088 == 0) then
                                                    v633.Arrow.Rotation = - 90;
                                                    v633.Itemsframe.ScrollingEnabled = false;
                                                    v1088 = 1;
                                                end
                                                if (v1088 == (2)) then
                                                    v633.IgnoreBackButtons.Visible = false;
                                                    v633.IgnoreBackButtons.Active = false;
                                                    break
                                                end
                                                if (v1088 == (1)) then
                                                    v633.Itemsframe.Visible = false;
                                                    v633.Itemsframe.Active = false;
                                                    v1088 = 2;
                                                end
                                            end
                                        end
                                    end;
                                    v633.MainBack.MouseButton1Down:Connect(v722);
                                    v633.Main.MouseButton1Down:Connect(v722);
                                    v452:FixSize();
                                    table.insert(v74.items, v633);
                                    return v633
                                end;
                                v452.CreateColorPicker = function(v723, v724, v725, v726, v727)
                                    local v728 = {};
                                    v728.callback = v726 or function()
                                    end ;
                                    v728.default = v725 or Color3.fromRGB(255, 255, 255) ;
                                    v728.value = v728.default;
                                    v728.flag = v727 or v724 or "" ;
                                    v728.MainBack = Instance.new('TextButton', v452.Items);
                                    v728.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                    v728.MainBack.AutoButtonColor = false;
                                    v728.MainBack.Size = UDim2.fromOffset(240, 35);
                                    v728.MainBack.Text = "";
                                    v728.UiCorner = Instance.new('UICorner', v728.MainBack);
                                    v728.UiCorner.CornerRadius = UDim.new(0, 8);
                                    v728.Indicator = Instance.new('Frame', v728.MainBack);
                                    v728.Indicator.Position = UDim2.fromScale(0.875, 0.229);
                                    v728.Indicator.Size = UDim2.fromOffset(18, 18);
                                    v728.Indicator.BackgroundColor3 = v728.default;
                                    v728.Indicator.BorderSizePixel = 0;
                                    v728.TextLabel = Instance.new('TextLabel', v728.MainBack);
                                    v728.TextLabel.Text = v724;
                                    v728.TextLabel.BackgroundTransparency = 1;
                                    v728.TextLabel.TextColor3 = v74.theme.TextColor;
                                    v728.TextLabel.TextSize = v74.theme.TextSize;
                                    v728.TextLabel.Font = v74.theme.Font;
                                    v728.TextLabel.Size = UDim2.fromOffset(125, 35);
                                    v728.TextLabel.Position = UDim2.fromScale(4.600000000004911E-2, 0);
                                    v728.TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
                                    v728.MainPicker = Instance.new('TextButton', v728.MainBack);
                                    v728.MainPicker.Name = 'picker';
                                    v728.MainPicker.ZIndex = 100;
                                    v728.MainPicker.Visible = false;
                                    v728.MainPicker.AutoButtonColor = false;
                                    v728.MainPicker.Text = "";
                                    v728.MainPicker.Size = UDim2.fromOffset(180, 196);
                                    v728.MainPicker.BorderSizePixel = 0;
                                    v728.MainPicker.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
                                    v728.MainPicker.Rotation = 1E-15;
                                    v728.MainPicker.Position = UDim2.fromOffset(- v728.MainPicker.AbsoluteSize.X + v728.MainBack.AbsoluteSize.X, 17);
                                    v309.OpenedColorPickers[v728.MainPicker] = false;
                                    v728.hue = Instance.new('ImageLabel', v728.MainPicker);
                                    v728.hue.ZIndex = 101;
                                    v728.hue.Position = UDim2.new(0, 3, 0, 3);
                                    v728.hue.Size = UDim2.new(0, 172, 0, 172);
                                    v728.hue.Image = 'rbxassetid://4155801252';
                                    v728.hue.ScaleType = Enum.ScaleType.Stretch;
                                    v728.hue.BackgroundColor3 = Color3.new(1, 0, 0);
                                    v728.hue.BorderColor3 = v74.theme.Border;
                                    v728.hueselectorpointer = Instance.new('ImageLabel', v728.MainPicker);
                                    v728.hueselectorpointer.ZIndex = 101;
                                    v728.hueselectorpointer.BackgroundTransparency = 1;
                                    v728.hueselectorpointer.BorderSizePixel = 0;
                                    v728.hueselectorpointer.Position = UDim2.new(0, 0, 0, 0);
                                    v728.hueselectorpointer.Size = UDim2.new(0, 7, 0, 7);
                                    v728.hueselectorpointer.Image = 'rbxassetid://6885856475';
                                    v728.selector = Instance.new('TextLabel', v728.MainPicker);
                                    v728.selector.ZIndex = 100;
                                    v728.selector.Position = UDim2.new(0, 3, 0, 181);
                                    v728.selector.Size = UDim2.new(0, 173, 0, 10);
                                    v728.selector.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                                    v728.selector.BorderColor3 = v74.theme.Border;
                                    v728.selector.Text = "";
                                    v728.gradient = Instance.new('UIGradient', v728.selector);
                                    v728.gradient.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
                                        ColorSequenceKeypoint.new(0.17, Color3.new(1, 0, 1)),
                                        ColorSequenceKeypoint.new(0.3300000000000409, Color3.new(0, 0, 1)),
                                        ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 1)),
                                        ColorSequenceKeypoint.new(0.67, Color3.new(0, 1, 0)),
                                        ColorSequenceKeypoint.new(0.83, Color3.new(1, 1, 0)),
                                        ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0))
                                    });
                                    v728.pointer = Instance.new('Frame', v728.selector);
                                    v728.pointer.ZIndex = 101;
                                    v728.pointer.BackgroundColor3 = v74.theme.Border;
                                    v728.pointer.Position = UDim2.new(0, 0, 0, 0);
                                    v728.pointer.Size = UDim2.new(0, 2, 0, 10);
                                    v728.pointer.BorderColor3 = v74.theme.BackGround;
                                    if (v728.flag and (v728.flag ~= "")) then
                                        v74.flags[v728.flag] = v728.default;
                                    end
                                    v728.RefreshHue = function(v1020)
                                        local v1021 = 0;
                                        local v1022;
                                        local v1023;
                                        while true do
                                            if ((0) == v1021) then
                                                v1022 = (game.Players.LocalPlayer:GetMouse().X - v728.hue.AbsolutePosition.X) / v728.hue.AbsoluteSize.X ;
                                                v1023 = (game.Players.LocalPlayer:GetMouse().Y - v728.hue.AbsolutePosition.Y) / v728.hue.AbsoluteSize.Y ;
                                                v1021 = 1;
                                            end
                                            if (v1021 == (1)) then
                                                v728.hueselectorpointer:TweenPosition(UDim2.new(math.clamp(v1022 * v728.hue.AbsoluteSize.X, 0.5, (0.9519999999999982) * v728.hue.AbsoluteSize.X) / v728.hue.AbsoluteSize.X, 0, math.clamp(v1023 * v728.hue.AbsoluteSize.Y, 0.5, (0.885) * v728.hue.AbsoluteSize.Y) / v728.hue.AbsoluteSize.Y, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 5E-2);
                                                v728:Set(Color3.fromHSV(v728.color, math.clamp(v1022 * v728.hue.AbsoluteSize.X, 0.5, (1) * v728.hue.AbsoluteSize.X) / v728.hue.AbsoluteSize.X, (1) - (math.clamp(v1023 * v728.hue.AbsoluteSize.Y, 0.5, 1 * v728.hue.AbsoluteSize.Y) / v728.hue.AbsoluteSize.Y)));
                                                break
                                            end
                                        end
                                    end;
                                    v728.RefreshSelector = function(v1024)
                                        local v1025 = 0;
                                        local v1026;
                                        local v1027;
                                        local v1028;
                                        while true do
                                            if (v1025 == (0)) then
                                                v1026 = math.clamp((game.Players.LocalPlayer:GetMouse().X - v728.hue.AbsolutePosition.X) / v728.hue.AbsoluteSize.X, 0, 1);
                                                v728.color = (1) - v1026 ;
                                                v1025 = 1;
                                            end
                                            if (v1025 == (1)) then
                                                v728.pointer:TweenPosition(UDim2.new(v1026, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 5E-2);
                                                v728.hue.BackgroundColor3 = Color3.fromHSV(1 - v1026, 1, 1);
                                                v1025 = 2;
                                            end
                                            if (v1025 == (3)) then
                                                v728:Set(Color3.fromHSV(v728.color, math.clamp(v1027 * v728.hue.AbsoluteSize.X, 0.5, (1) * v728.hue.AbsoluteSize.X) / v728.hue.AbsoluteSize.X, 1 - (math.clamp(v1028 * v728.hue.AbsoluteSize.Y, 0.5, 1 * v728.hue.AbsoluteSize.Y) / v728.hue.AbsoluteSize.Y)));
                                                break
                                            end
                                            if (v1025 == (2)) then
                                                v1027 = (v728.hueselectorpointer.AbsolutePosition.X - v728.hue.AbsolutePosition.X) / v728.hue.AbsoluteSize.X ;
                                                v1028 = (v728.hueselectorpointer.AbsolutePosition.Y - v728.hue.AbsolutePosition.Y) / v728.hue.AbsoluteSize.Y ;
                                                v1025 = 3;
                                            end
                                        end
                                    end;
                                    v728.Set = function(v1029, v1030)
                                        local v1031 = Color3.new(math.clamp(v1030.r, 0, 1), math.clamp(v1030.g, 0, 1), math.clamp(v1030.b, 0, 1));
                                        v728.value = v1031;
                                        if (v728.flag and (v728.flag ~= "")) then
                                            v74.flags[v728.flag] = v1031;
                                        end
                                        local v1033 = Color3.new(math.clamp(v1031.R / (1.7), 0, 1), math.clamp(v1031.G / (1.7), 0, 1), math.clamp(v1031.B / 1.7, 0, 1));
                                        v728.Indicator.BackgroundColor3 = v1031;
                                        pcall(v728.callback, v1031);
                                    end;
                                    v728.Get = function(v1035, v1036)
                                        return v728.value
                                    end;
                                    v728:Set(v728.default);
                                    local v807 = false;
                                    local v808 = false;
                                    v728.selector.InputBegan:Connect(function(v1037)
                                        if (v1037.UserInputType == Enum.UserInputType.MouseButton1) then
                                            v807 = true;
                                            v728:RefreshSelector();
                                        end
                                    end);
                                    v728.selector.InputEnded:Connect(function(v1038)
                                        if (v1038.UserInputType == Enum.UserInputType.MouseButton1) then
                                            local v1090 = 0;
                                            while true do
                                                if (v1090 == 0) then
                                                    v807 = false;
                                                    v728:RefreshSelector();
                                                    break
                                                end
                                            end
                                        end
                                    end);
                                    v728.hue.InputBegan:Connect(function(v1039)
                                        if (v1039.UserInputType == Enum.UserInputType.MouseButton1) then
                                            local v1091 = 0;
                                            local v1092;
                                            while true do
                                                if (v1091 == (0)) then
                                                    v1092 = 0;
                                                    while true do
                                                        if (v1092 == (0)) then
                                                            v808 = true;
                                                            v728:RefreshHue();
                                                            break
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    end);
                                    v728.hue.InputEnded:Connect(function(v1040)
                                        if (v1040.UserInputType == Enum.UserInputType.MouseButton1) then
                                            local v1093 = 0;
                                            while true do
                                                if ((0) == v1093) then
                                                    v808 = false;
                                                    v728:RefreshHue();
                                                    break
                                                end
                                            end
                                        end
                                    end);
                                    game:GetService('UserInputService').InputChanged:Connect(function(v1041)
                                        local v1042 = 0;
                                        local v1043;
                                        while true do
                                            if (v1042 == (0)) then
                                                v1043 = 0;
                                                while true do
                                                    if (v1043 == 0) then
                                                        if (v807 and (v1041.UserInputType == Enum.UserInputType.MouseMovement)) then
                                                            v728:RefreshSelector();
                                                        end
                                                        if (v808 and (v1041.UserInputType == Enum.UserInputType.MouseMovement)) then
                                                            v728:RefreshHue();
                                                        end
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end);
                                    local v809 = function(v1044)
                                        if (v1044.UserInputType == Enum.UserInputType.MouseButton1) then
                                            local v1094 = 0;
                                            while true do
                                                if (v1094 == (1)) then
                                                    v309.OpenedColorPickers[v728.MainPicker] = v728.MainPicker.Visible;
                                                    break
                                                end
                                                if (v1094 == 0) then
                                                    for v1236, v1237 in pairs(v309.OpenedColorPickers) do
                                                        if (v1237 and (v1236 ~= v728.MainPicker)) then
                                                            local v1287 = 0;
                                                            while true do
                                                                if (v1287 == (0)) then
                                                                    v1236.Visible = false;
                                                                    v309.OpenedColorPickers[v1236] = false;
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                    v728.MainPicker.Visible = not v728.MainPicker.Visible;
                                                    v1094 = 1;
                                                end
                                            end
                                        end
                                    end;
                                    v728.MainBack.InputBegan:Connect(v809);
                                    v728.MainPicker.InputBegan:Connect(v809);
                                    v728.MainPicker.InputBegan:Connect(v809);
                                    v452:FixSize();
                                    table.insert(v74.items, v728);
                                    return v728
                                end;
                                v452.CreateKeyBind = function(v810, v811, v812, v813, v814)
                                    local v815 = {};
                                    v815.text = v811 or "" ;
                                    v815.default = v812 or 'None' ;
                                    v815.value = v815.default;
                                    v815.callback = v813 or function()
                                    end ;
                                    v815.flag = v814 or v811 or "" ;
                                    local v821 = {
                                        LeftShift = 'LSHIFT',
                                        RightShift = 'RSHIFT',
                                        LeftControl = 'LCTRL',
                                        RightControl = 'RCTRL',
                                        LeftAlt = 'LALT',
                                        RightAlt = 'RALT'
                                    };
                                    local v822 = ((v815.default == 'None') and 'None') or v821[v815.default.Name] or v815.default.Name ;
                                    v815.MainBack = Instance.new('TextButton', v452.Items);
                                    v815.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                    v815.MainBack.AutoButtonColor = false;
                                    v815.MainBack.Size = UDim2.fromOffset(240, 35);
                                    v815.MainBack.Text = "";
                                    v815.UICorner = Instance.new('UICorner', v815.MainBack);
                                    v815.UICorner.CornerRadius = UDim.new(0, 8);
                                    v815.TextLabel = Instance.new('TextLabel', v815.MainBack);
                                    v815.TextLabel.Text = v815.text;
                                    v815.TextLabel.BackgroundTransparency = 1;
                                    v815.TextLabel.TextColor3 = v74.theme.TextColor;
                                    v815.TextLabel.TextSize = v74.theme.TextSize;
                                    v815.TextLabel.Font = v74.theme.Font;
                                    v815.TextLabel.Size = UDim2.fromOffset(125, 35);
                                    v815.TextLabel.Position = UDim2.fromScale(4.600000000004911E-2, 0);
                                    v815.TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
                                    v815.Main = Instance.new('TextButton', v815.MainBack);
                                    v815.Main.BorderSizePixel = 0;
                                    v815.Main.BackgroundColor3 = v74.theme.Toggle;
                                    v815.Main.Size = UDim2.fromOffset(109, 18);
                                    v815.Main.Position = UDim2.fromScale(0.4960000000000946, 0.22900000000004184);
                                    v815.Main.Text = v822;
                                    v815.Main.Font = v74.theme.Font;
                                    v815.Main.TextColor3 = v74.theme.TextColor;
                                    v815.Main.TextSize = v74.theme.TextSize;
                                    v815.Main.TextXAlignment = Enum.TextXAlignment.Center;
                                    v815.Main.MouseButton1Down:Connect(function()
                                        v815.Main.Text = '...';
                                    end);
                                    if (v815.flag and (v815.flag ~= "")) then
                                        v74.flags[v815.flag] = v815.default;
                                    end
                                    v815.Set = function(v1046, v1047)
                                        local v1048 = 0;
                                        while true do
                                            if (v1048 == (1)) then
                                                v815.value = v1047;
                                                if (v815.flag and (v815.flag ~= "")) then
                                                    v74.flags[v815.flag] = v815.value;
                                                end
                                                break
                                            end
                                            if (v1048 == 0) then
                                                if (v1047 == 'None') then
                                                    local v1221 = 0;
                                                    local v1222;
                                                    while true do
                                                        if (v1221 == 0) then
                                                            v1222 = 0;
                                                            while true do
                                                                if (v1222 == (1)) then
                                                                    if (v815.flag and (v815.flag ~= "")) then
                                                                        v74.flags[v815.flag] = v1047;
                                                                    end
                                                                    break
                                                                end
                                                                if (v1222 == (0)) then
                                                                    v815.Main.Text = v1047;
                                                                    v815.value = v1047;
                                                                    v1222 = 1;
                                                                end
                                                            end
                                                            break
                                                        end
                                                    end
                                                end
                                                v815.Main.Text = v821[v1047.Name] or v1047.Name ;
                                                v1048 = 1;
                                            end
                                        end
                                    end;
                                    v815.Get = function(v1049)
                                        return v815.value
                                    end;
                                    game:GetService('UserInputService').InputBegan:Connect(function(v1050, v1051)
                                        if not v1051 then
                                            if (v815.Main.Text == '...') then
                                                if ((v1050.UserInputType == Enum.UserInputType.Keyboard) and (v1050.KeyCode ~= Enum.KeyCode.Backspace)) then
                                                    v815:Set(v1050.KeyCode);
                                                    pcall(v815.callback, v815.value);
                                                else
                                                    v815:Set('None');
                                                end
                                            end
                                        end
                                    end);
                                    v452:FixSize();
                                    table.insert(v74.items, v815);
                                    return v815
                                end;
                                v452.CreateCoppyText = function(v858, v859)
                                    local v860 = 0;
                                    local v861;
                                    while true do
                                        if (v860 == (3)) then
                                            v861.TextLabel.Text = v859;
                                            v861.TextLabel.ClearTextOnFocus = false;
                                            v861.TextLabel.Interactable = true;
                                            v860 = 4;
                                        end
                                        if (v860 == (7)) then
                                            v452:FixSize();
                                            table.insert(v74.items, v861);
                                            return v861
                                        end
                                        if (v860 == (0)) then
                                            v861 = {};
                                            v861.MainBack = Instance.new('TextButton', v452.Items);
                                            v861.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                            v860 = 1;
                                        end
                                        if (v860 == (1)) then
                                            v861.MainBack.AutoButtonColor = false;
                                            v861.MainBack.Size = UDim2.fromOffset(240, 35);
                                            v861.MainBack.Text = "";
                                            v860 = 2;
                                        end
                                        if (v860 == (4)) then
                                            v861.TextLabel.TextEditable = false;
                                            v861.TextLabel.Active = false;
                                            v861.TextLabel.BackgroundTransparency = 1;
                                            v860 = 5;
                                        end
                                        if (v860 == 5) then
                                            v861.TextLabel.TextColor3 = v74.theme.TextColor;
                                            v861.TextLabel.TextSize = v74.theme.TextSize;
                                            v861.TextLabel.Font = v74.theme.Font;
                                            v860 = 6;
                                        end
                                        if (v860 == 2) then
                                            v861.UICorner = Instance.new('UICorner', v861.MainBack);
                                            v861.UICorner.CornerRadius = UDim.new(0, 8);
                                            v861.TextLabel = Instance.new('TextBox', v861.MainBack);
                                            v860 = 3;
                                        end
                                        if ((6) == v860) then
                                            v861.TextLabel.Size = UDim2.fromOffset(240, 35);
                                            v861.TextLabel.Position = UDim2.fromScale(0, 0);
                                            v861.TextLabel.TextXAlignment = Enum.TextXAlignment.Center;
                                            v860 = 7;
                                        end
                                    end
                                end;
                                v452.CreateLable = function(v862, v863)
                                    local v864 = 0;
                                    local v865;
                                    while true do
                                        if (v864 == 2) then
                                            v865.UICorner = Instance.new('UICorner', v865.MainBack);
                                            v865.UICorner.CornerRadius = UDim.new(0, 8);
                                            v865.TextLabel = Instance.new('TextLabel', v865.MainBack);
                                            v864 = 3;
                                        end
                                        if (v864 == (0)) then
                                            v865 = {};
                                            v865.MainBack = Instance.new('TextButton', v452.Items);
                                            v865.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                            v864 = 1;
                                        end
                                        if ((1) == v864) then
                                            v865.MainBack.AutoButtonColor = false;
                                            v865.MainBack.Size = UDim2.fromOffset(240, 35);
                                            v865.MainBack.Text = "";
                                            v864 = 2;
                                        end
                                        if (v864 == (5)) then
                                            local v1129 = 0;
                                            while true do
                                                if (v1129 == 0) then
                                                    v865.TextLabel.Position = UDim2.fromScale(0.046, 0);
                                                    v865.TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
                                                    v1129 = 1;
                                                end
                                                if ((1) == v1129) then
                                                    v452:FixSize();
                                                    v864 = 6;
                                                    break
                                                end
                                            end
                                        end
                                        if ((6) == v864) then
                                            table.insert(v74.items, v865);
                                            return v865
                                        end
                                        if (3 == v864) then
                                            v865.TextLabel.Text = v865.text;
                                            v865.TextLabel.BackgroundTransparency = 1;
                                            v865.TextLabel.TextColor3 = v74.theme.TextColor;
                                            v864 = 4;
                                        end
                                        if (v864 == 4) then
                                            v865.TextLabel.TextSize = v74.theme.TextSize;
                                            v865.TextLabel.Font = v74.theme.Font;
                                            v865.TextLabel.Size = UDim2.fromOffset(125, 35);
                                            v864 = 5;
                                        end
                                    end
                                end;
                                v452.CreateTextBox = function(v866, v867, v868, v869, v870)
                                    local v871 = {};
                                    v871.text = v867 or "" ;
                                    v871.callback = v869 or function()
                                    end ;
                                    v871.default = v868;
                                    v871.value = "";
                                    v871.flag = v870 or v867 or "" ;
                                    v871.MainBack = Instance.new('TextButton', v452.Items);
                                    v871.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                    v871.MainBack.AutoButtonColor = false;
                                    v871.MainBack.Size = UDim2.fromOffset(240, 35);
                                    v871.MainBack.Text = "";
                                    v871.UICorner = Instance.new('UICorner', v871.MainBack);
                                    v871.UICorner.CornerRadius = UDim.new(0, 8);
                                    v871.TextLabel = Instance.new('TextLabel', v871.MainBack);
                                    v871.TextLabel.Text = v871.text;
                                    v871.TextLabel.BackgroundTransparency = 1;
                                    v871.TextLabel.TextColor3 = v74.theme.TextColor;
                                    v871.TextLabel.TextSize = v74.theme.TextSize;
                                    v871.TextLabel.Font = v74.theme.Font;
                                    v871.TextLabel.Size = UDim2.fromOffset(125, 35);
                                    v871.TextLabel.Position = UDim2.fromScale(4.600000000004911E-2, 0);
                                    v871.TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
                                    v871.Main = Instance.new('TextBox', v871.MainBack);
                                    v871.Main.Position = UDim2.fromScale(0.496, 0.229);
                                    v871.Main.Size = UDim2.fromOffset(109, 18);
                                    v871.Main.BackgroundColor3 = v74.theme.Toggle;
                                    v871.Main.BorderSizePixel = 0;
                                    v871.Main.Text = "";
                                    v871.Main.TextColor3 = v74.theme.TextColor;
                                    v871.Main.Font = v74.theme.Font;
                                    v871.Main.TextSize = v74.theme.TextSize;
                                    v871.Main.ClearTextOnFocus = false;
                                    if (v871.flag and (v871.flag ~= "")) then
                                        v74.flags[v871.flag] = v871.default or "" ;
                                    end
                                    v871.Set = function(v1052, v1053)
                                        v871.value = v1053;
                                        v871.Main.Text = v1053;
                                        if (v871.flag and (v871.flag ~= "")) then
                                            v74.flags[v871.flag] = v1053;
                                        end
                                        pcall(v871.callback, v1053);
                                    end;
                                    v871.Get = function(v1056)
                                        return v871.value
                                    end;
                                    if v871.default then
                                        v871:Set(v871.default);
                                    end
                                    v871.Main.FocusLost:Connect(function()
                                        v871:Set(v871.Main.Text);
                                    end);
                                    v452:FixSize();
                                    table.insert(v74.items, v871);
                                    return v871
                                end;
                                v452.CreateButton = function(v911, v912, v913)
                                    local v914 = {};
                                    v914.text = v912 or "" ;
                                    v914.callback = v913 or function()
                                    end ;
                                    v914.MainBack = Instance.new('TextButton', v452.Items);
                                    v914.MainBack.BackgroundColor3 = v74.theme.BackGround;
                                    v914.MainBack.AutoButtonColor = false;
                                    v914.MainBack.Size = UDim2.fromOffset(240, 35);
                                    v914.MainBack.Text = "";
                                    v914.MainBack.Text = v914.text;
                                    v914.MainBack.Font = v74.theme.Font;
                                    v914.MainBack.TextColor3 = v74.theme.TextColor;
                                    v914.MainBack.TextSize = v74.theme.TextSize;
                                    v914.MainBack.MouseButton1Click:Connect(v914.callback);
                                    v914.UICorner = Instance.new('UICorner', v914.MainBack);
                                    v914.UICorner.CornerRadius = UDim.new(0, 8);
                                    v452:FixSize();
                                    return v914
                                end;
                                return v452
                            end;
                            v391.CreateConfig = function(v502, v503)
                                local v504 = {};
                                v504.configFolder = v309.name;
                                pcall(function()
                                    if (isfolder and makefolder and listfiles and writefile and readfile and delfile) then
                                        if not isfolder(v504.configFolder) then
                                            makefolder(v504.configFolder);
                                        end
                                        v504.sector = v391:CreateSector('Configs', v503 or 'left');
                                        local v1069 = v504.sector:CreateTextBox('Config Name', "", ConfigName, function()
                                        end, "");
                                        local v1070 = tostring(listfiles(v504.configFolder)[1] or ""):gsub(v504.configFolder .. "\\", ""):gsub('.txt', "");
                                        local v1071 = v504.sector:CreateDropDown('Configs', {}, v1070, false, function()
                                        end, "");
                                        for v1141, v1142 in pairs(listfiles(v504.configFolder)) do
                                            if v1142:find('.txt') then
                                                v1071:Add(tostring(v1142):gsub(v504.configFolder .. "\\", ""):gsub('.txt', ""));
                                            end
                                        end
                                        v504.Create = v504.sector:CreateButton('Create', function()
                                            for v1188, v1189 in pairs(listfiles(v504.configFolder)) do
                                                v1071:Remove(tostring(v1189):gsub(v504.configFolder .. "\\", ""):gsub('.txt', ""));
                                            end
                                            if (v1069:Get() and (v1069:Get() ~= "")) then
                                                local v1200 = 0;
                                                local v1201;
                                                while true do
                                                    if (v1200 == 0) then
                                                        local v1258 = 0;
                                                        while true do
                                                            if (v1258 == (0)) then
                                                                v1201 = {};
                                                                for v1367, v1368 in pairs(v74.flags) do
                                                                    if ((v1368 ~= nil) and (v1368 ~= "")) then
                                                                        if (typeof(v1368) == 'Color3') then
                                                                            v1201[v1367] = {
                                                                                v1368.R,
                                                                                v1368.G,
                                                                                v1368.B
                                                                            };
                                                                        elseif (tostring(v1368):find('Enum.KeyCode')) then
                                                                            v1201[v1367] = v1368.Name;
                                                                        elseif (typeof(v1368) == 'table') then
                                                                            v1201[v1367] = {
                                                                                v1368
                                                                            };
                                                                        else
                                                                            v1201[v1367] = v1368;
                                                                        end
                                                                    end
                                                                end
                                                                v1258 = 1;
                                                            end
                                                            if (v1258 == (1)) then
                                                                v1200 = 1;
                                                                break
                                                            end
                                                        end
                                                    end
                                                    if (v1200 == (1)) then
                                                        writefile(v504.configFolder .. "/" .. v1069:Get() .. '.txt', v78:JSONEncode(v1201));
                                                        for v1288, v1289 in pairs(listfiles(v504.configFolder)) do
                                                            if v1289:find('.txt') then
                                                                v1071:Add(tostring(v1289):gsub(v504.configFolder .. "\\", ""):gsub('.txt', ""));
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                        end);
                                        v504.Save = v504.sector:CreateButton('Save', function()
                                            local v1143 = 0;
                                            local v1144;
                                            while true do
                                                if (v1143 == (0)) then
                                                    v1144 = {};
                                                    if (v1071:Get() and (v1071:Get() ~= "")) then
                                                        local v1259 = 0;
                                                        local v1260;
                                                        while true do
                                                            if (v1259 == (0)) then
                                                                v1260 = 0;
                                                                while true do
                                                                    if (v1260 == (0)) then
                                                                        for v1458, v1459 in pairs(v74.flags) do
                                                                            if ((v1459 ~= nil) and (v1459 ~= "")) then
                                                                                if (typeof(v1459) == 'Color3') then
                                                                                    v1144[v1458] = {
                                                                                        v1459.R,
                                                                                        v1459.G,
                                                                                        v1459.B
                                                                                    };
                                                                                elseif (tostring(v1459):find('Enum.KeyCode')) then
                                                                                    v1144[v1458] = 'Enum.KeyCode.' .. v1459.Name ;
                                                                                elseif (typeof(v1459) == 'table') then
                                                                                    v1144[v1458] = {
                                                                                        v1459
                                                                                    };
                                                                                else
                                                                                    v1144[v1458] = v1459;
                                                                                end
                                                                            end
                                                                        end
                                                                        writefile(v504.configFolder .. "/" .. v1069:Get() .. '.txt', v78:JSONEncode(v1144));
                                                                        break
                                                                    end
                                                                end
                                                                break
                                                            end
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end);
                                        v504.Load = v504.sector:CreateButton('Load', function()
                                            local v1145 = pcall(readfile, v504.configFolder .. "/" .. v1071:Get() .. '.txt');
                                            if v1145 then
                                                pcall(function()
                                                    local v1226 = v78:JSONDecode(readfile(v504.configFolder .. "/" .. v1071:Get() .. '.txt'));
                                                    local v1227 = {};
                                                    for v1238, v1239 in pairs(v1226) do
                                                        if (typeof(v1239) == 'table') then
                                                            if (typeof(v1239[1]) == 'number') then
                                                                v1227[v1238] = Color3.new(v1239[1], v1239[2], v1239[3]);
                                                            elseif (typeof(v1239[1]) == 'table') then
                                                                v1227[v1238] = v1239[1];
                                                            end
                                                        elseif (tostring(v1239):find('Enum.KeyCode.')) then
                                                            v1227[v1238] = Enum.KeyCode[tostring(v1239):gsub('Enum.KeyCode.', "")];
                                                        else
                                                            v1227[v1238] = v1239;
                                                        end
                                                    end
                                                    v74.flags = v1227;
                                                    for v1240, v1241 in pairs(v74.flags) do
                                                        for v1261, v1262 in pairs(v74.items) do
                                                            if ((v1240 ~= nil) and (v1240 ~= "") and (v1240 ~= 'Configs_Name') and (v1240 ~= 'Configs') and (v1262.flag ~= nil)) then
                                                                if (v1262.flag == v1240) then
                                                                    pcall(function()
                                                                        v1262:Set(v1241);
                                                                    end);
                                                                end
                                                            end
                                                        end
                                                    end
                                                end);
                                            end
                                        end);
                                        v504.Delete = v504.sector:CreateButton('Delete', function()
                                            local v1146 = 0;
                                            while true do
                                                if (v1146 == (1)) then
                                                    if not isfile(v504.configFolder .. "/" .. v1071:Get() .. '.txt') then
                                                        return
                                                    end
                                                    delfile(v504.configFolder .. "/" .. v1071:Get() .. '.txt');
                                                    v1146 = 2;
                                                end
                                                if (v1146 == (2)) then
                                                    for v1242, v1243 in pairs(listfiles(v504.configFolder)) do
                                                        if v1243:find('.txt') then
                                                            v1071:Add(tostring(v1243):gsub(v504.configFolder .. "\\", ""):gsub('.txt', ""));
                                                        end
                                                    end
                                                    break
                                                end
                                                if (v1146 == (0)) then
                                                    for v1244, v1245 in pairs(listfiles(v504.configFolder)) do
                                                        v1071:Remove(tostring(v1245):gsub(v504.configFolder .. "\\", ""):gsub('.txt', ""));
                                                    end
                                                    if (not v1071:Get() or (v1071:Get() == "")) then
                                                        return
                                                    end
                                                    v1146 = 1;
                                                end
                                            end
                                        end);
                                    else
                                        local v1076 = 0;
                                        while true do
                                            if (v1076 == (0)) then
                                                v504.sector = v391:CreateSector('Configs', v503 or 'left');
                                                v504.sector:CreateLable('Your Executor Is Not Supported');
                                                break
                                            end
                                        end
                                    end
                                end);
                                return v504
                            end;
                            table.insert(v309.Tabs, v391);
                            return v391
                        end;
                        return v309
                    end;
                    return v74
                end
                if (v73 == 1) then
                    v76 = game:FindFirstChild('CoreGui');
                    v77 = game:GetService('TextService');
                    v73 = 2;
                end
                break
            end
        end
    end
end
local v32 = false;
if (game.PlaceId == (286090429)) then
    v32 = true;
end
local v33 = library();
local v34 = v33:CreateWindow(v24.GUI.GUIToggleKey, 'Infernium Crim');
local v35 = v34:CreateToggleButton();
local v36 = v34:CreateTab('Aim Bot');
local v37 = v36:CreateSector('Main', 'Left');
v37:CreateToggle('Enable', v24.AimBot.Enabled, function(v79)
    v24.AimBot.Enabled = v79;
end);
v37:CreateToggle('Team Check', v24.AimBot.TeamCheck, function(v81)
    v24.AimBot.TeamCheck = v81;
end);
v37:CreateToggle('Wall Check', v24.AimBot.WallCheck, function(v83)
    v24.AimBot.WallCheck = v83;
end);
v37:CreateDropDown('Hit Scan', {
    'Head',
    'HumanoidRootPart'
}, v24.AimBot.AimPart, false, function(v85)
    v24.AimBot.AimPart = v85;
end);
local v38 = v36:CreateSector('FOV Circle', 'Left');
v38:CreateToggle('Show Fov', v24.AimBot.ShowFov, function(v87)
    v24.AimBot.ShowFov = v87;
end);
v38:CreateSlider('Circle Radius', 0, v24.AimBot.Fov, 1500, 1, function(v89)
    v24.AimBot.Fov = v89;
end);
local v39 = v36:CreateSector('Other', 'Right');
v39:CreateToggle('Prediction', v24.AimBot.Prediction, function(v91)
    v24.AimBot.Prediction = v91;
end);
v39:CreateSlider('Prediction Ammount', 100, v24.AimBot.PredictionAmmount * 100, 1000, 1, function(v93)
    v24.AimBot.PredictionAmmount = v93 / (100) ;
end);
v39:CreateToggle('Sticky Aim', v24.AimBot.StickyAim, function(v95)
    v24.AimBot.StickyAim = v95;
end);
v39:CreateSlider('Smoothing', 3, v24.AimBot.Smoothing * 100, 50, 1, function(v97)
    v24.AimBot.Smoothing = v97 / (100) ;
end);
v39:CreateKeyBind('Key Bind', v24.AimBot.Keybind, function(v99)
    v24.AimBot.Keybind = v99;
end);
v39:CreateToggle('Use Mouse', v24.AimBot.UseMouse, function(v101)
    v24.AimBot.UseMouse = v101;
end);
v39:CreateDropDown('Mouse Bind', {
    'MouseButton1',
    'MouseButton2'
}, v24.AimBot.MouseBind, false, function(v103)
    v24.AimBot.MouseBind = v103;
end);
local v40 = v34:CreateTab('ESP');
local v41 = v40:CreateSector('ESP', 'Left');
v41:CreateToggle('Enable', v24.esp.Enabled, function(v105)
    v24.esp.Enabled = v105;
end);
v41:CreateToggle('Team Check', v24.esp.Box.TeamCheck, function(v107)
    v24.esp.TeamCheck = v107;
end);
v41:CreateToggle('Box', v24.esp.Box.Box, function(v109)
    v24.esp.Box.Box = v109;
end);
v41:CreateToggle('Tracer', v24.esp.Tracer.Tracer, function(v111)
    v24.esp.Tracer.Tracer = v111;
end);
v41:CreateToggle('Health', v24.esp.Box.Health, function(v113)
    v24.esp.Box.Health = v113;
end);
v41:CreateToggle('Name', v24.esp.Box.Name, function(v115)
    v24.esp.Box.Name = v115;
end);
v41:CreateToggle('Distance', v24.esp.Box.Distance, function(v117)
    v24.esp.Box.Distance = v117;
end);
v41:CreateToggle('Health Bar', v24.esp.Box.HealthBar, function(v119)
    v24.esp.Box.HealthBar = v119;
end);
if not v32 then
    local v173 = 0;
    local v174;
    while true do
        if (v173 == 0) then
            v174 = 0;
            while true do
                if (v174 == (0)) then
                    v41:CreateToggle('Hilights', v24.esp.Hilights.Hilights, function(v435)
                        v24.esp.Hilights.Hilights = v435;
                    end);
                    v41:CreateToggle('Show Hilight Through Walls', v24.esp.Hilights.AllWaysVisible, function(v437)
                        v24.esp.Hilights.AllWaysVisible = v437;
                    end);
                    break
                end
            end
            break
        end
    end
end
local v42 = v40:CreateSector('Settings', 'Right');
v42:CreateSlider('Max Distance', 0, v24.esp.MaxDistance, 4E3, 1, function(v121)
    v24.esp.MaxDistance = v121;
end);
v42:CreateToggle('Outlines', v24.esp.Box.Outline, function(v123)
    v24.esp.Box.Outline = v123;
    v24.esp.Tracer.Outline = v123;
end);
v42:CreateColorPicker('Outline Color', v24.esp.Box.OutlineColor, function(v126)
    local v127 = 0;
    while true do
        if (v127 == (0)) then
            v24.esp.Box.OutlineColor = v126;
            v24.esp.Tracer.OutlineColor = v126;
            break
        end
    end
end);
v42:CreateColorPicker('ESP Color', v24.esp.Box.Color, function(v128)
    local v129 = 0;
    while true do
        if (v129 == (0)) then
            v24.esp.Box.Color = v128;
            v24.esp.Tracer.Color = v128;
            break
        end
    end
end);
if not v32 then
    local v175 = 0;
    while true do
        if (v175 == (0)) then
            v42:CreateColorPicker('Hilight Outline', v24.esp.Hilights.OutlineColor, function(v277)
                v24.esp.Hilights.OutlineColor = v277;
            end);
            v42:CreateColorPicker('Hilight Fill', v24.esp.Hilights.FillColor, function(v279)
                v24.esp.Hilights.FillColor = v279;
            end);
            v175 = 1;
        end
        if (v175 == (1)) then
            v42:CreateSlider('Hilight Outline', 0, v24.esp.Hilights.OutlineTransparency * (100), 100, 1, function(v281)
                v24.esp.Hilights.OutlineTransparency = v281 / (100) ;
            end);
            v42:CreateSlider('Hilight Fill', 0, v24.esp.Hilights.FillTransparency * 100, 100, 1, function(v283)
                v24.esp.Hilights.FillTransparency = v283 / (100) ;
            end);
            break
        end
    end
end
local v43 = v34:CreateTab('Settings');
local v44 = v43:CreateSector('Info', 'Left');
v44:CreateCoppyText('Made By Voltrivax and 1gods');
v44:CreateCoppyText('');
v43:CreateConfig('Right');
local v45 = v43:CreateSector('GUI Settigns', 'Left');
v45:CreateToggle('UI Toggle Button', v24.GUI.GUIButton, function(v130)
    local v131 = 0;
    while true do
        if (0 == v131) then
            v24.GUI.GUIButton = v130;
            v35:Update(v130);
            break
        end
    end
end);
v45:CreateKeyBind('UI Key Bind', v24.GUI.GUIToggleKey, function(v132)
    v24.GUI.GUIToggleKey = v132;
    v34:UpdateKeyBind(v132);
end);
local v46 = Instance.new('Folder', v31 or v26.PlayerGui);
local v47 = Instance.new('ScreenGui', v31 or v26.PlayerGui);
v47.Name = 'Fov';
v47.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v47.ResetOnSpawn = false;
local v52 = Instance.new('Frame');
v52.Parent = v47;
v52.Name = 'FOVFFrame';
v52.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v52.BorderColor3 = Color3.fromRGB(0, 0, 0);
v52.BorderSizePixel = 0;
v52.BackgroundTransparency = 1;
v52.AnchorPoint = Vector2.new(0.5, 0.5);
v52.Position = UDim2.new(0.5, 0, 0.5, 0);
v52.Size = UDim2.new(0, v24.AimBot.Fov, 0, v24.AimBot.Fov);
v52.BackgroundTransparency = 1;
local v62 = Instance.new('UICorner');
v62.CornerRadius = UDim.new(1, 0);
v62.Parent = v52;
local v65 = Instance.new('UIStroke');
v65.Color = Color3.fromRGB(100, 0, 100);
v65.Parent = v52;
v65.Thickness = 1;
v65.ApplyStrokeMode = 'Border';
game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = '',
    Text = ''
});
local function v70(v134)
    if (v134 and v134.Character and (v134.Character:FindFirstChild('HumanoidRootPart') ~= nil) and (v134.Character:FindFirstChild('Humanoid') ~= nil) and ((v32 and (v25[v134.Character.Name].NRPBS.Health.Value > (0))) or (not v32 and (v134.Character.Humanoid.Health > (0))))) then
        return true
    end
    return false
end
local function v71(v135)
    if not game.Players.LocalPlayer.Neutral then
        return game.Teams[v135.Team.Name]
    end
    return true
end
function isVisible(v136, ...)
    local v137 = 0;
    while true do
        if (v137 == (0)) then
            if not (v24.AimBot.WallCheck == true) then
                return true
            end
            return # v27:GetPartsObscuringTarget({
                v136
            }, {
                v27,
                v26.Character,
                ...
            }) == (0)
        end
    end
end
function CameraGetClosestToMouse()
    local v138 = v24.AimBot.Fov;
    local v139;
    for v176, v177 in pairs(game:GetService('Players'):GetPlayers()) do
        if (v177 ~= v26) then
            if ((v24.AimBot.TeamCheck ~= true) or (v71(v177) ~= v71(v26))) then
                if v70(v177) then
                    local v371, v372 = v27:WorldToViewportPoint(v177.Character[v24.AimBot.AimPart].Position);
                    local v373 = Vector2.new(v371.X, v371.Y);
                    local v374 = (v373 - v30(v29)).Magnitude;
                    if (v372 and (v374 < v138) and isVisible(v177.Character[v24.AimBot.AimPart].Position, v177.Character.Head.Parent)) then
                        local v507 = 0;
                        while true do
                            if (v507 == 0) then
                                v138 = v374;
                                v139 = v177;
                                break
                            end
                        end
                    end
                end
            end
        end
    end
    return v139
end
local function v72(v140)
    local v141 = 0;
    local v142;
    local v143;
    local v144;
    local v145;
    local v146;
    local v147;
    local v148;
    local v149;
    local v150;
    local v151;
    local v152;
    local v153;
    local v154;
    local v155;
    local v156;
    local v157;
    local v158;
    local v159;
    local v160;
    local v161;
    local v162;
    while true do
        if ((8) == v141) then
            v154.TextColor3 = Color3.fromRGB(255, 255, 255);
            v154.TextStrokeTransparency = 0;
            v155 = Instance.new('TextLabel', v143);
            v155.BackgroundTransparency = 1;
            if v70(v140) then
                v155.Text = math.floor((0.5) + (v27.CFrame.Position - v140.Character.HumanoidRootPart.Position).magnitude);
            end
            v155.Visible = false;
            v141 = 9;
        end
        if (v141 == 11) then
            v157.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
            v158 = Instance.new('TextLabel', v143);
            v158.BackgroundTransparency = 1;
            if v70(v140) then
                v158.Text = (v32 and v25[v140.Character.Name].NRPBS.Health.Value) or v140.Character.Humanoid.Health ;
            end
            v158.Visible = false;
            v158.AnchorPoint = Vector2.new(0.5, 0.5);
            v141 = 12;
        end
        if (v141 == (6)) then
            v152.BorderSizePixel = 0;
            v153 = Instance.new('Frame', v143);
            v153.BackgroundColor3 = v24.esp.Box.Color;
            v153.Visible = false;
            v153.BorderSizePixel = 0;
            v154 = Instance.new('TextLabel', v143);
            v141 = 7;
        end
        if (v141 == (9)) then
            v155.AnchorPoint = Vector2.new(0.5, 0.5);
            v155.TextSize = 12;
            v155.Font = 2;
            v155.TextColor3 = Color3.fromRGB(255, 255, 255);
            v155.TextStrokeTransparency = 0;
            v156 = Instance.new('Frame', v143);
            v141 = 10;
        end
        if (v141 == (2)) then
            v146.BorderSizePixel = 1;
            v147 = Instance.new('Frame', v143);
            v147.BackgroundColor3 = v24.esp.Box.OutlineColor;
            v147.Visible = false;
            v147.BorderSizePixel = 1;
            v148 = Instance.new('Frame', v143);
            v141 = 3;
        end
        if (v141 == (10)) then
            v156.Visible = false;
            v156.BorderSizePixel = 1;
            v156.BorderColor3 = v24.esp.Box.OutlineColor;
            v157 = Instance.new('Frame', v143);
            v157.Visible = false;
            v157.BorderSizePixel = 0;
            v141 = 11;
        end
        if (v141 == (0)) then
            v142 = Instance.new('Folder', v46);
            v142.Name = v140.Name .. 'ESP' ;
            v143 = Instance.new('ScreenGui', v142);
            v143.Name = 'Box';
            v143.DisplayOrder = 2;
            v144 = Instance.new('ScreenGui', v142);
            v141 = 1;
        end
        if (v141 == (13)) then
            v159.Visible = false;
            v159.BorderSizePixel = 1;
            v159.AnchorPoint = Vector2.new(0.5, 0.5);
            v160 = Instance.new('Frame', v144);
            v160.BackgroundColor3 = v24.esp.Tracer.Color;
            v160.Visible = false;
            v141 = 14;
        end
        if (v141 == (4)) then
            v149.BorderSizePixel = 1;
            v150 = Instance.new('Frame', v143);
            v150.BackgroundColor3 = v24.esp.Box.Color;
            v150.Visible = false;
            v150.BorderSizePixel = 0;
            v151 = Instance.new('Frame', v143);
            v141 = 5;
        end
        if (v141 == 12) then
            v158.TextSize = 12;
            v158.Font = 2;
            v158.TextColor3 = Color3.fromRGB(255, 255, 255);
            v158.TextStrokeTransparency = 0;
            v159 = Instance.new('Frame', v144);
            v159.BackgroundColor3 = v24.esp.Tracer.OutlineColor;
            v141 = 13;
        end
        if ((5) == v141) then
            v151.BackgroundColor3 = v24.esp.Box.Color;
            v151.Visible = false;
            v151.BorderSizePixel = 0;
            v152 = Instance.new('Frame', v143);
            v152.BackgroundColor3 = v24.esp.Box.Color;
            v152.Visible = false;
            v141 = 6;
        end
        if (v141 == 14) then
            v160.BorderSizePixel = 0;
            v160.AnchorPoint = Vector2.new(0.5, 0.5);
            v161 = Instance.new('Highlight', v145);
            v161.Enabled = false;
            v162 = coroutine.create(function()
                local v273 = 0;
                while true do
                    if (0 == v273) then
                        game:GetService('RunService').RenderStepped:Connect(function()
                            if (v70(v140) and (v24.esp.Box.Box or v24.esp.Box.HealthBar or v24.esp.Box.Name or v24.esp.Box.Health or v24.esp.Tracer.Tracer or v24.esp.Hilights.Hilights)) then
                                local v931 = 0;
                                local v932;
                                local v933;
                                local v934;
                                local v935;
                                local v936;
                                while true do
                                    if ((1) == v931) then
                                        v935 = (v27.ViewportSize.Y / v934) * v24.esp.CharacterSize ;
                                        v936 = Vector2.new(v932.X, v932.Y) - ((v935 / 2) - (Vector2.new(0, v935.Y) / (20))) ;
                                        v931 = 2;
                                    end
                                    if (v931 == (2)) then
                                        if (v933 and ((v24.esp.TeamCheck ~= true) or (v71(v140) ~= v71(v26))) and v24.esp.Enabled) then
                                            local v1203 = math.floor(0.5 + (v27.CFrame.Position - v140.Character.HumanoidRootPart.Position).magnitude);
                                            if (v24.esp.MaxDistance > v1203) then
                                                if v24.esp.Box.Box then
                                                    local v1290 = 0;
                                                    while true do
                                                        if (v1290 == 0) then
                                                            v146.Visible = v24.esp.Box.Box and v24.esp.Box.Outline ;
                                                            v147.Visible = v24.esp.Box.Box and v24.esp.Box.Outline ;
                                                            v148.Visible = v24.esp.Box.Box and v24.esp.Box.Outline ;
                                                            v149.Visible = v24.esp.Box.Box and v24.esp.Box.Outline ;
                                                            v150.Position = UDim2.fromOffset(v936.X, v936.Y);
                                                            v1290 = 1;
                                                        end
                                                        if (v1290 == (2)) then
                                                            v148.Position = v152.Position;
                                                            v149.Position = v153.Position;
                                                            v150.Visible = v24.esp.Box.Box;
                                                            v151.Visible = v24.esp.Box.Box;
                                                            v152.Visible = v24.esp.Box.Box;
                                                            v1290 = 3;
                                                        end
                                                        if (3 == v1290) then
                                                            v153.Visible = v24.esp.Box.Box;
                                                            v150.Size = UDim2.fromOffset(v935.X, 1);
                                                            v151.Size = UDim2.fromOffset(v935.X, 1);
                                                            v152.Size = UDim2.fromOffset(1, v935.Y);
                                                            v153.Size = UDim2.fromOffset(1, v935.Y);
                                                            v1290 = 4;
                                                        end
                                                        if (v1290 == (7)) then
                                                            v149.BackgroundColor3 = v24.esp.Box.Color;
                                                            break
                                                        end
                                                        if (v1290 == 5) then
                                                            v147.BorderColor3 = v24.esp.Box.OutlineColor;
                                                            v148.BorderColor3 = v24.esp.Box.OutlineColor;
                                                            v149.BorderColor3 = v24.esp.Box.OutlineColor;
                                                            v150.BackgroundColor3 = v24.esp.Box.Color;
                                                            v151.BackgroundColor3 = v24.esp.Box.Color;
                                                            v1290 = 6;
                                                        end
                                                        if (v1290 == (4)) then
                                                            v146.Size = v150.Size;
                                                            v147.Size = v151.Size;
                                                            v148.Size = v152.Size;
                                                            v149.Size = v153.Size;
                                                            v146.BorderColor3 = v24.esp.Box.OutlineColor;
                                                            v1290 = 5;
                                                        end
                                                        if (v1290 == 1) then
                                                            local v1407 = 0;
                                                            while true do
                                                                if (v1407 == (0)) then
                                                                    v151.Position = UDim2.fromOffset(v936.X, (v936.Y + v935.Y) - 1);
                                                                    v152.Position = UDim2.fromOffset(v936.X, v936.Y);
                                                                    v1407 = 1;
                                                                end
                                                                if (v1407 == (2)) then
                                                                    v147.Position = v151.Position;
                                                                    v1290 = 2;
                                                                    break
                                                                end
                                                                if (v1407 == (1)) then
                                                                    v153.Position = UDim2.fromOffset((v936.X + v935.X) - 1, v936.Y);
                                                                    v146.Position = v150.Position;
                                                                    v1407 = 2;
                                                                end
                                                            end
                                                        end
                                                        if (v1290 == (6)) then
                                                            v152.BackgroundColor3 = v24.esp.Box.Color;
                                                            v153.BackgroundColor3 = v24.esp.Box.Color;
                                                            v146.BackgroundColor3 = v24.esp.Box.Color;
                                                            v147.BackgroundColor3 = v24.esp.Box.Color;
                                                            v148.BackgroundColor3 = v24.esp.Box.Color;
                                                            v1290 = 7;
                                                        end
                                                    end
                                                else
                                                    local v1291 = 0;
                                                    while true do
                                                        if (v1291 == (1)) then
                                                            v148.Visible = false;
                                                            v149.Visible = false;
                                                            v1291 = 2;
                                                        end
                                                        if (v1291 == (2)) then
                                                            v150.Visible = false;
                                                            v151.Visible = false;
                                                            v1291 = 3;
                                                        end
                                                        if (v1291 == 0) then
                                                            v146.Visible = false;
                                                            v147.Visible = false;
                                                            v1291 = 1;
                                                        end
                                                        if ((3) == v1291) then
                                                            v152.Visible = false;
                                                            v153.Visible = false;
                                                            break
                                                        end
                                                    end
                                                end
                                                if v24.esp.Box.HealthBar then
                                                    local v1292 = (v32 and v25[v140.Character.Name].NRPBS.Health.Value) or v140.Character.Humanoid.Health ;
                                                    local v1293 = (v32 and (v1292 / v25[v140.Character.Name].NRPBS.MaxHealth.Value)) or (v1292 / v140.Character.Humanoid.MaxHealth) ;
                                                    local v1294 = v935.Y * v1293 ;
                                                    v156.Visible = v24.esp.Box.HealthBar;
                                                    v157.Visible = v24.esp.Box.HealthBar;
                                                    v156.Size = UDim2.fromOffset(4, v935.Y);
                                                    v157.Size = UDim2.fromOffset(2, - v1294);
                                                    v156.Position = UDim2.fromOffset(v936.X - (8), v936.Y);
                                                    v157.Position = UDim2.fromOffset(v936.x - 7, v936.y + v935.Y);
                                                    v156.BackgroundColor3 = v24.esp.Box.OutlineColor;
                                                    v156.BorderColor3 = v24.esp.Box.OutlineColor;
                                                else
                                                    local v1305 = 0;
                                                    local v1306;
                                                    while true do
                                                        if (v1305 == 0) then
                                                            v1306 = 0;
                                                            while true do
                                                                if (v1306 == 0) then
                                                                    v156.Visible = false;
                                                                    v157.Visible = false;
                                                                    break
                                                                end
                                                            end
                                                            break
                                                        end
                                                    end
                                                end
                                                if v24.esp.Box.Health then
                                                    local v1307 = (v32 and v25[v140.Character.Name].NRPBS.Health.Value) or v140.Character.Humanoid.Health ;
                                                    local v1308 = (v32 and (v1307 / v25[v140.Character.Name].NRPBS.MaxHealth.Value)) or (v1307 / v140.Character.Humanoid.MaxHealth) ;
                                                    local v1309 = v935.Y * v1308 ;
                                                    v158.Visible = v24.esp.Box.Health;
                                                    v158.Position = (v24.esp.Box.HealthBar and UDim2.fromOffset(v936.X - 25, v936.y + v935.Y + - v1309)) or UDim2.fromOffset(v936.X - (25), v936.Y + v935.Y) ;
                                                    v158.Text = (v32 and math.floor(v25[v140.Character.Name].NRPBS.Health.Value)) or math.floor(v140.Character.Humanoid.Health) ;
                                                else
                                                    v158.Visible = false;
                                                end
                                                if (v24.esp.Box.Distance or v24.esp.Box.Name) then
                                                    v154.Visible = v24.esp.Box.Name;
                                                    v155.Visible = v24.esp.Box.Distance and not v24.esp.Box.Name ;
                                                    v154.Position = UDim2.fromOffset(v932.X, v932.Y - ((v935.Y + v154.TextBounds.Y + 7 + 7) / (2)));
                                                    v155.Position = UDim2.fromOffset(v932.X, v932.Y - ((v935.Y + v154.TextBounds.Y + 14) / (2)));
                                                    v155.Text = math.floor((0.5) + (v27.CFrame.Position - v140.Character.HumanoidRootPart.Position).magnitude);
                                                    v154.Text = (v24.esp.Box.Name and v24.esp.Box.Distance and (v140.Name .. ' [' .. math.floor((0.5) + ((v27.CFrame.Position - v140.Character.HumanoidRootPart.Position).magnitude / (3.5714285714000003))) .. "]")) or v140.Name ;
                                                else
                                                    local v1322 = 0;
                                                    local v1323;
                                                    while true do
                                                        if (v1322 == (0)) then
                                                            v1323 = 0;
                                                            while true do
                                                                if (v1323 == (0)) then
                                                                    v154.Visible = false;
                                                                    v155.Visible = false;
                                                                    break
                                                                end
                                                            end
                                                            break
                                                        end
                                                    end
                                                end
                                                if v24.esp.Tracer.Tracer then
                                                    local v1324 = 0;
                                                    local v1325;
                                                    local v1326;
                                                    local v1327;
                                                    while true do
                                                        if (v1324 == (1)) then
                                                            v160.Visible = v24.esp.Tracer.Tracer;
                                                            v160.Rotation = math.deg(math.atan2(v1325.Y - v1326.Y, v1325.X - v1326.X));
                                                            v160.Position = UDim2.new(0, v1327.X, 0, v1327.Y);
                                                            v160.Size = UDim2.fromOffset((v1326 - v1325).Magnitude, 1);
                                                            v1324 = 2;
                                                        end
                                                        if (v1324 == (3)) then
                                                            v160.BackgroundColor3 = v24.esp.Tracer.Color;
                                                            break
                                                        end
                                                        if (v1324 == (2)) then
                                                            v159.Rotation = v160.Rotation;
                                                            v159.Position = v160.Position;
                                                            v159.Size = v160.Size;
                                                            v159.BorderColor3 = v24.esp.Tracer.OutlineColor;
                                                            v1324 = 3;
                                                        end
                                                        if (v1324 == (0)) then
                                                            local v1437 = 0;
                                                            while true do
                                                                if (v1437 == (1)) then
                                                                    v1327 = (v1326 + v1325) / 2 ;
                                                                    v159.Visible = v24.esp.Tracer.Outline and v24.esp.Tracer.Tracer ;
                                                                    v1437 = 2;
                                                                end
                                                                if (v1437 == (0)) then
                                                                    v1325 = Vector2.new(v932.X, v932.Y + (v935.Y / (2)) + (v935.Y / 20));
                                                                    v1326 = Vector2.new(v27.ViewportSize.X / 2, v27.ViewportSize.Y - (1));
                                                                    v1437 = 1;
                                                                end
                                                                if ((2) == v1437) then
                                                                    v1324 = 1;
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                else
                                                    v159.Visible = false;
                                                    v160.Visible = false;
                                                end
                                                if v24.esp.Hilights.Hilights then
                                                    v161.Enabled = v24.esp.Hilights.Hilights;
                                                    if not v32 then
                                                        v161.Adornee = v140.Character;
                                                    end
                                                    v161.OutlineColor = v24.esp.Hilights.OutlineColor;
                                                    v161.FillColor = v24.esp.Hilights.FillColor;
                                                    v161.FillTransparency = v24.esp.Hilights.FillTransparency;
                                                    v161.OutlineTransparency = v24.esp.Hilights.OutlineTransparency;
                                                    v161.DepthMode = (v24.esp.Hilights.AllWaysVisible and 'AlwaysOnTop') or (not v24.esp.Hilights.AllWaysVisible and 'Occluded') ;
                                                else
                                                    local v1341 = 0;
                                                    local v1342;
                                                    while true do
                                                        if (v1341 == (0)) then
                                                            v1342 = 0;
                                                            while true do
                                                                if ((0) == v1342) then
                                                                    v161.Enabled = false;
                                                                    v161.Adornee = nil;
                                                                    break
                                                                end
                                                            end
                                                            break
                                                        end
                                                    end
                                                end
                                            else
                                                local v1246 = 0;
                                                local v1247;
                                                while true do
                                                    if (v1246 == (0)) then
                                                        v1247 = 0;
                                                        while true do
                                                            if (v1247 == (1)) then
                                                                v150.Visible = false;
                                                                v151.Visible = false;
                                                                v152.Visible = false;
                                                                v153.Visible = false;
                                                                v1247 = 2;
                                                            end
                                                            if (v1247 == 0) then
                                                                v146.Visible = false;
                                                                v147.Visible = false;
                                                                v148.Visible = false;
                                                                v149.Visible = false;
                                                                v1247 = 1;
                                                            end
                                                            if (v1247 == (3)) then
                                                                v156.Visible = false;
                                                                v157.Visible = false;
                                                                v158.Visible = false;
                                                                v161.Enabled = false;
                                                                v1247 = 4;
                                                            end
                                                            if (v1247 == 2) then
                                                                v159.Visible = false;
                                                                v160.Visible = false;
                                                                v154.Visible = false;
                                                                v155.Visible = false;
                                                                v1247 = 3;
                                                            end
                                                            if (v1247 == (4)) then
                                                                v161.Adornee = nil;
                                                                break
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                        else
                                            local v1204 = 0;
                                            while true do
                                                if (v1204 == (0)) then
                                                    v146.Visible = false;
                                                    v147.Visible = false;
                                                    v148.Visible = false;
                                                    v1204 = 1;
                                                end
                                                if (v1204 == (2)) then
                                                    v152.Visible = false;
                                                    v153.Visible = false;
                                                    v159.Visible = false;
                                                    v1204 = 3;
                                                end
                                                if (v1204 == (1)) then
                                                    v149.Visible = false;
                                                    v150.Visible = false;
                                                    v151.Visible = false;
                                                    v1204 = 2;
                                                end
                                                if (v1204 == (4)) then
                                                    v156.Visible = false;
                                                    v157.Visible = false;
                                                    v158.Visible = false;
                                                    v1204 = 5;
                                                end
                                                if (v1204 == (3)) then
                                                    v160.Visible = false;
                                                    v154.Visible = false;
                                                    v155.Visible = false;
                                                    v1204 = 4;
                                                end
                                                if (v1204 == 5) then
                                                    v161.Enabled = false;
                                                    v161.Adornee = nil;
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                    if (v931 == (0)) then
                                        v932, v933 = v27:WorldToScreenPoint(v140.Character.HumanoidRootPart.Position);
                                        v934 = math.tan(math.rad(v27.FieldOfView * 0.5)) * (2) * v932.Z ;
                                        v931 = 1;
                                    end
                                end
                            else
                                v146.Visible = false;
                                v147.Visible = false;
                                v148.Visible = false;
                                v149.Visible = false;
                                v150.Visible = false;
                                v151.Visible = false;
                                v152.Visible = false;
                                v153.Visible = false;
                                v159.Visible = false;
                                v160.Visible = false;
                                v154.Visible = false;
                                v155.Visible = false;
                                v156.Visible = false;
                                v157.Visible = false;
                                v158.Visible = false;
                                v161.Enabled = false;
                                v161.Adornee = nil;
                            end
                        end);
                        if not v25:FindFirstChild(v140.Name) then
                            local v508 = 0;
                            local v509;
                            while true do
                                if (v508 == 0) then
                                    v509 = 0;
                                    while true do
                                        if (v509 == 0) then
                                            v142:Destroy();
                                            coroutine.yield();
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end);
            coroutine.resume(v162);
            break
        end
        if (v141 == (7)) then
            v154.BackgroundTransparency = 1;
            v154.Text = v140.Name;
            v154.Visible = false;
            v154.AnchorPoint = Vector2.new(0.5, 0.5);
            v154.TextSize = 12;
            v154.Font = 2;
            v141 = 8;
        end
        if (v141 == (1)) then
            v144.Name = 'Tracer';
            v145 = Instance.new('Folder', v142);
            v145.Name = 'Hilight';
            v146 = Instance.new('Frame', v143);
            v146.BackgroundColor3 = v24.esp.Box.OutlineColor;
            v146.Visible = false;
            v141 = 2;
        end
        if (v141 == (3)) then
            v148.BackgroundColor3 = v24.esp.Box.OutlineColor;
            v148.Visible = false;
            v148.BorderSizePixel = 1;
            v149 = Instance.new('Frame', v143);
            v149.BackgroundColor3 = v24.esp.Box.OutlineColor;
            v149.Visible = false;
            v141 = 4;
        end
    end
end
for v163, v164 in pairs(v25:GetChildren()) do
    if (v164 ~= v26) then
        v72(v164);
    end
end
v25.PlayerAdded:Connect(function(v165)
    if (v165 ~= v26) then
        v72(v165);
    end
end);
v29.InputBegan:Connect(function(v166)
    if ((v166.KeyCode == v24.AimBot.Keybind) and not v24.AimBot.UseMouse) then
        v24.AimBot.Target = CameraGetClosestToMouse();
        v24.AimBot.IsAimKeyDown = true;
    end
end);
v29.InputEnded:Connect(function(v167)
    if ((v167.KeyCode == v24.AimBot.Keybind) and not v24.AimBot.UseMouse) then
        v24.AimBot.Target = CameraGetClosestToMouse();
        v24.AimBot.IsAimKeyDown = false;
        if (v24.AimBot.CameraTween ~= nil) then
            v24.AimBot.CameraTween:Cancel();
        end
    end
end);
v26:GetMouse().Button1Down:Connect(function(v168)
    if ((v24.AimBot.MouseBind == 'MouseButton1') and v24.AimBot.UseMouse) then
        if v24.AimBot.IsAimKeyDown then
            v24.AimBot.Target = CameraGetClosestToMouse();
            v24.AimBot.IsAimKeyDown = false;
            if (v24.AimBot.CameraTween ~= nil) then
                v24.AimBot.CameraTween:Cancel();
            end
        else
            local v276 = 0;
            while true do
                if (v276 == 0) then
                    v24.AimBot.Target = CameraGetClosestToMouse();
                    v24.AimBot.IsAimKeyDown = true;
                    break
                end
            end
        end
    end
end);
v26:GetMouse().Button1Up:Connect(function(v169)
    if ((v24.AimBot.MouseBind == 'MouseButton1') and v24.AimBot.UseMouse) then
        local v182 = 0;
        while true do
            if (v182 == 1) then
                if (v24.AimBot.CameraTween ~= nil) then
                    v24.AimBot.CameraTween:Cancel();
                end
                break
            end
            if (v182 == (0)) then
                v24.AimBot.Target = CameraGetClosestToMouse();
                v24.AimBot.IsAimKeyDown = false;
                v182 = 1;
            end
        end
    end
end);
v26:GetMouse().Button2Down:Connect(function(v170)
    if ((v24.AimBot.MouseBind == 'MouseButton2') and v24.AimBot.UseMouse) then
        local v183 = 0;
        local v184;
        while true do
            if (v183 == 0) then
                v184 = 0;
                while true do
                    if (v184 == (0)) then
                        v24.AimBot.Target = CameraGetClosestToMouse();
                        v24.AimBot.IsAimKeyDown = true;
                        break
                    end
                end
                break
            end
        end
    end
end);
v26:GetMouse().Button2Up:Connect(function(v171)
    if ((v24.AimBot.MouseBind == 'MouseButton2') and v24.AimBot.UseMouse) then
        local v185 = 0;
        while true do
            if (v185 == (0)) then
                v24.AimBot.Target = CameraGetClosestToMouse();
                v24.AimBot.IsAimKeyDown = false;
                v185 = 1;
            end
            if ((1) == v185) then
                if (v24.AimBot.CameraTween ~= nil) then
                    v24.AimBot.CameraTween:Cancel();
                end
                break
            end
        end
    end
end);
game:GetService('RunService').Heartbeat:Connect(function()
    if (v24.AimBot.Enabled and v24.AimBot.ShowFov) then
        local v186 = 0;
        local v187;
        while true do
            if (v186 == 2) then
                v52.Size = UDim2.fromOffset(v24.AimBot.Fov * (1.5), v24.AimBot.Fov * (1.5));
                break
            end
            if (v186 == (1)) then
                local v292 = 0;
                while true do
                    if (v292 == 1) then
                        v186 = 2;
                        break
                    end
                    if ((0) == v292) then
                        v187 = v29:GetMouseLocation();
                        v52.Position = UDim2.new(0, v187.X, 0, v187.Y - 36);
                        v292 = 1;
                    end
                end
            end
            if (v186 == 0) then
                v65.Enabled = true;
                v65.Color = v24.AimBot.FovColor;
                v186 = 1;
            end
        end
    else
        v65.Enabled = false;
    end
    if v24.AimBot.Enabled then
        if v24.AimBot.IsAimKeyDown then
            if v24.AimBot.StickyAim then
                if (v24.AimBot.Target ~= nil) then
                    if not v70(v24.AimBot.Target) then
                        local v954 = 0;
                        local v955;
                        while true do
                            if (v954 == (0)) then
                                v955 = CameraGetClosestToMouse();
                                v24.AimBot.Target = v955;
                                v954 = 1;
                            end
                            if (1 == v954) then
                                v24.AimBot.CameraTween = v28:Create(v27, TweenInfo.new(v24.AimBot.Smoothing, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                    CFrame = CFrame.new(v27.CFrame.Position, v955.Character[v24.AimBot.AimPart].Position + ((v24.AimBot.Prediction and (v24.AimBot.target.Character[v24.AimBot.AimPart].Velocity * v26:GetNetworkPing() * v24.AimBot.PredictionAmmount)) or Vector3.new()))
                                });
                                v24.AimBot.CameraTween:Play();
                                break
                            end
                        end
                    end
                    v24.AimBot.CameraTween = v28:Create(v27, TweenInfo.new(v24.AimBot.Smoothing, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        CFrame = CFrame.new(v27.CFrame.Position, v24.AimBot.Target.Character[v24.AimBot.AimPart].Position + ((v24.AimBot.Prediction and (v24.AimBot.Target.Character[v24.AimBot.AimPart].Velocity * v26:GetNetworkPing() * v24.AimBot.PredictionAmmount)) or Vector3.new()))
                    });
                    v24.AimBot.CameraTween:Play();
                end
            else
                local v300 = 0;
                local v301;
                while true do
                    if (v300 == (0)) then
                        v301 = CameraGetClosestToMouse();
                        if (v301 ~= nil) then
                            v24.AimBot.CameraTween = v28:Create(v27, TweenInfo.new(v24.AimBot.Smoothing, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                CFrame = CFrame.new(v27.CFrame.Position, v301.Character[v24.AimBot.AimPart].Position + ((v24.AimBot.Prediction and (v301.Character[v24.AimBot.AimPart].Velocity * v26:GetNetworkPing() * v24.AimBot.PredictionAmmount)) or Vector3.new()))
                            });
                            v24.AimBot.CameraTween:Play();
                        elseif (v24.AimBot.CameraTween ~= nil) then
                            v24.AimBot.CameraTween:Cancel();
                        end
                        break
                    end
                end
            end
        end
    end
end);
game.StarterGui:SetCore('SendNotification', {
    Title = 'Infernium Criminality',
    Text = 'Infernium Script loaded, ' .. game.Players.LocalPlayer.DisplayName .. ".",
    Duration = 4
});
print('AutoLockpick............ loaded');
function checkLockpick(...)
    local v17 = 0;
    local v18;
    while true do
        if (v17 == 0) then
            v18 = {
                ...
            };
            for v189, v190 in pairs(v18) do
                local v191 = 0;
                while true do
                    if (v191 == (0)) then
                        v190.Parent.UIScale.Scale = 10;
                        if ((v190.AbsolutePosition.Y >= 450) and (v190.AbsolutePosition.Y <= (550))) then
                            local v377 = 0;
                            local v378;
                            while true do
                                if (0 == v377) then
                                    v378 = 0;
                                    while true do
                                        if (v378 == (0)) then
                                            mouse1click();
                                            task.wait(9.999999999990905E-2);
                                            v378 = 1;
                                        end
                                        if ((1) == v378) then
                                            mouse1release();
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
            break
        end
    end
end
while true do
    local v19 = 0;
    local v20;
    local v21;
    local v22;
    while true do
        if (v19 == 0) then
            v20 = 0;
            v21 = nil;
            v19 = 1;
        end
        if (v19 == (1)) then
            v22 = nil;
            while true do
                if (0 == v20) then
                    task.wait();
                    v21 = game.Players.LocalPlayer:WaitForChild('PlayerGui');
                    v20 = 1;
                end
                if (v20 == (1)) then
                    v22 = v21:FindFirstChild('LockpickGUI');
                    if v22 then
                        local v302 = 0;
                        local v303;
                        local v304;
                        local v305;
                        while true do
                            if (v302 == (0)) then
                                local v510 = 0;
                                while true do
                                    if (v510 == (0)) then
                                        v303 = v22.MF.LP_Frame.Frames.B1.Bar.Selection;
                                        v304 = v22.MF.LP_Frame.Frames.B2.Bar.Selection;
                                        v510 = 1;
                                    end
                                    if (1 == v510) then
                                        v302 = 1;
                                        break
                                    end
                                end
                            end
                            if (v302 == 1) then
                                v305 = v22.MF.LP_Frame.Frames.B3.Bar.Selection;
                                checkLockpick(v303, v304, v305);
                                break
                            end
                        end
                    end
                    break
                end
            end
            break
        end
    end
end
