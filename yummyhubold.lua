-- yummy hub
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")

local LocalPlayer = Players.LocalPlayer

local AdminCheck_Enabled = true
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
    ["b3THyb1T3z"] = true, ["Idont_HavePizza"] = true,
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
