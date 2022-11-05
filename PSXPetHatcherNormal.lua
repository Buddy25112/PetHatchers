-- Local Stuff
local Workspace = game.Workspace
local Player = game.Players.LocalPlayer

-- Variables
_G.SettingsTable = {
    Webhook = "";
    Legendaryping = "";
    Mythicalping = "";
    Exclusiveping = "";
    HatchType = "eggs";
    EggType = 'Cracked Egg';
    EnchantList = false;
    DiscordNotification = true;
    GiftReward = false;
    BuyEgg = false;
    SkipAnimation = false;
    MultiHatch = false;
    OctupleHatch = false;
    AutoRankRewards = false;
    AutoCollectLootBags = false;
    AutoCollectOrbs = false;
}

_G.TrackList = {
    ['Basic'] = false;
    ['Rare'] = false;
    ['Epic'] = false;
    ['Legendary'] = false;
    ['Mythical'] = false;
    ['Exclusive'] = false;
}

local SettingsTableName = "PSX Pet Hatcher Settings.txt"
local TrackListName = "PSX Pet Hatcher Rarities Settings.txt"

function SaveSettingsTableSettings()
    local json
    local HttpService = game:GetService("HttpService")
    if (writefile) then
        json = HttpService:JSONEncode(_G.SettingsTable)
        writefile(SettingsTableName, json)
        game.StarterGui:SetCore(
               	"SendNotification",
            {
                Title = "SUCCESS!",
                Text = "Settings Have Been Saved",
                Duration = 5
            }
        )
    end
end

function SaveTracklistSettings()
    local json
    local HttpService = game:GetService("HttpService")
    if (writefile) then
        json = HttpService:JSONEncode(_G.TrackList)
        writefile(TrackListName, json)
    else
        game.StarterGui:SetCore(
               	"SendNotification",
            {
                Title = "ERROR",
                Text = "Could Not Save Settings. Executor Not Supported",
                Duration = 5
            }
        )
    end
end

function LoadSettingsTableSettings()
    local HttpService = game:GetService("HttpService")
    if (readfile and isfile and isfile(SettingsTableName)) then
        _G.SettingsTable = HttpService:JSONDecode(readfile(SettingsTableName))
        game.StarterGui:SetCore(
               	"SendNotification",
            {
                Title = "SUCCESS!",
                Text = "Settings Have Been Loaded",
                Duration = 5
            }
        )
    end
end

function LoadSettingsTracklistSettings()
    local HttpService = game:GetService("HttpService")
    if (readfile and isfile and isfile(TrackListName)) then
        _G.TrackList = HttpService:JSONDecode(readfile(TrackListName))
    else
        game.StarterGui:SetCore(
                "SendNotification",
            {
                Title = "ERROR",
                Text = "Could Not Save Settings. Executor Not Supported",
                Duration = 5
            }
        )
    end
end

function HatchEgg()
    spawn(function()
        while wait() do 
            if not _G.SettingsTable.BuyEgg then break end
            local args = {
                [1] = {
                    [1] = _G.SettingsTable.EggType,
                    [2] = _G.SettingsTable.MultiHatch,
                    [3] = _G.SettingsTable.OctupleHatch
                }
            }
            workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
        end
    end)
end

function SkipAnimation1()
    spawn(function()
        for i,v in pairs(getgc(true)) do
            if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
                func = v.OpenEgg
                v.OpenEgg = function()
                    return true
                end
            end
        end
    end)
end

function SkipAnimation2()
    spawn(function()
        for i,v in pairs(getgc(true)) do
            if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
                v.OpenEgg = func
                 func = nil
            end
         end
    end)
end

function ClaimGiftRewards()
    spawn(function()
        local GiftNumber = 1
        while wait(5) do
            if not _G.SettingsTable.GiftReward then break end
            local args = {
                [1] = {
                    [1] = GiftNumber
                }
            }
            workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(args))
            GiftNumber = GiftNumber + 1
            if GiftNumber == 13 then
                GiftNumber = 1
            else
                GiftNumber = GiftNumber
            end
        end
    end)
end

function ClaimRankRewards()
    spawn(function()
        while wait(5) do
            if not _G.SettingsTable.AutoRankRewards then break end
            local args = {
                [1] = {}
            }
            
            workspace.__THINGS.__REMOTES:FindFirstChild("redeem rank rewards"):InvokeServer(unpack(args))
        end
    end)
end

function AutoCollectLootBags()
    spawn(function()
        while wait() do
            if not _G.SettingsTable.AutoCollectLootBags then break end
            local LootBagScript = getsenv(Player.PlayerScripts.Scripts.Game.Lootbags)
            for i,v in pairs(Workspace["__THINGS"].Lootbags:GetChildren()) do
                if v:GetAttribute("ReadyForCollection") == true then
                    if v:GetAttribute("Collected") == false then
                        LootBagScript.Collect(v)
                    end
                end
            end
        end
    end)
end

function AutoCollectOrbs()
    spawn(function()
        while wait() do
            if not _G.SettingsTable.AutoCollectOrbs then break end
            local ohTable1 = {[1] = {}}
            for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
                ohTable1[1][i] = v.Name
            end
            game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
        end
    end)
end

function CheckSettings()
    spawn(function()
        if _G.SettingsTable.GiftReward then
            ClaimGiftRewards()
        end
        if _G.SettingsTable.BuyEgg then
            HatchEgg()
        end
    end)
end

-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hatchers Hub | Pet Simulator X | Version 3.0.2", "Midnight")

-- CreditsUI
local CreditsTab = Window:NewTab("Credits")
local CreditsSection = CreditsTab:NewSection("--------------------- Hatchers Hub PSX ---------------------")
local CreditsSection1 = CreditsTab:NewSection("Creator/Dev: PetSimulatorXPlayer#5011")
local CreditsSection2 = CreditsTab:NewSection("Bot Owner: aqucuisghsicuk#6971")
local CreditsSection3 = CreditsTab:NewSection("Helper: Cor#0002")
local CreditsSection4 = CreditsTab:NewSection("Helper: wYn#0001 (Youtube Guides)")
local CreditsSection5 = CreditsTab:NewSection("-------------------------------------------------------------------")
local CreditsSection6 = CreditsTab:NewSection("Last Updated: 2022-11-05")
local CreditsSection7 = CreditsTab:NewSection("Last Update: Triple Hatch Fixed + Octuple Hatch Added")
local CreditsSection8 = CreditsTab:NewSection("Upcoming Update: More New Features")
local CreditsSection9 = CreditsTab:NewSection("Discord Link: https://discord.gg/83aFw8rGM8")
local CreditsSection10 = CreditsTab:NewSection("-------------------------------------------------------------------")

-- PetHatcherUI
local PetHatcherTab = Window:NewTab("Pet Hatcher")
local WebhookHatchPingSection = PetHatcherTab:NewSection("Webhook/HatchPing")
local RaritiesSection = PetHatcherTab:NewSection("Rarities To Track")
local OtherSettingsSection = PetHatcherTab:NewSection("Other Settings")
local EnableHatcherSection = PetHatcherTab:NewSection("Enable Pet Hatcher")

-- AutofarmUI
local AutoFarmTab = Window:NewTab("AutoFarm")
local AutoFarmSelection = AutoFarmTab:NewSection("Auto Farm Things")
local FarmCoinsSection = AutoFarmTab:NewSection("More Coming Soon!")

-- EggFarmingUI
local EggFarmingTab = Window:NewTab("Egg Farming")
local AutoHatchEggSection = EggFarmingTab:NewSection("Auto Hatch Egg")
local EggsLabel = AutoHatchEggSection:NewLabel("Eggs Hatched:")

-- MiscUI
local MiscTab = Window:NewTab("Miscellaneous")
local MiscFeaturesSelection = MiscTab:NewSection("Miscellaneous Features")

-- Other GUI's
local OtherUITab = Window:NewTab("Other GUI's")
local NotMyGUISection = OtherUITab:NewSection("I do NOT OWN these GUIS! Credits to the devs")
local PetsiXSection = OtherUITab:NewSection("Petsi X")
local KocmocSection = OtherUITab:NewSection("Kocmoc (Broken ATM)")

-- SettingsUI
local SettingsTab = Window:NewTab("Settings")
local SettingsSection = SettingsTab:NewSection("Setting Options")

-- HelpGUI
local HelpTab = Window:NewTab("Help")
local DiscordlinkSection = HelpTab:NewSection("Need help with the GUI? Join the Discord for help!")
local SaveSettingsSection = HelpTab:NewSection("Settings that are saveable")
local NoSaveSettingsSection = HelpTab:NewSection("Settings that are not saveable")
local TextBoxHelpSection = HelpTab:NewSection("Press the ENTER key after typing in the textboxes")

-- TogglesUI
local TogglesTab = Window:NewTab("Toggles")
local ToggleUISection = TogglesTab:NewSection("Toggle UI")


-- PetHatcher
WebhookHatchPingSection:NewTextBox("Webhook", "Paste Your Webhook here", function(Webhooktxt)
	_G.SettingsTable.Webhook = Webhooktxt
end)
WebhookHatchPingSection:NewTextBox("Legend Hatch Ping", "Ping For Legendary Hatches (Leave Blank For Nothing)", function(Legandarytxt)
	_G.SettingsTable.Legendaryping = Legandarytxt
end)
WebhookHatchPingSection:NewTextBox("Mythical Hatch Ping", "Ping For Mythical Hatches (Leave Blank For Nothing)", function(Mythicaltxt)
	_G.SettingsTable.Mythicalping = Mythicaltxt
end)
WebhookHatchPingSection:NewTextBox("Exclusive Hatch Ping", "Ping For Exclusive Hatches (Leave Blank For Nothing)", function(Exclusivetxt)
	_G.SettingsTable.Exclusiveping = Exclusivetxt
end)
RaritiesSection:NewToggle("Track Common Hatches", "Tracks Common Hatches", function(bool)
    _G.TrackList['Basic'] = bool
end)
RaritiesSection:NewToggle("Track Rare Hatches", "Tracks Rare Hatches", function(bool)
    _G.TrackList['Rare'] = bool
end)
RaritiesSection:NewToggle("Track Epic Hatches", "Tracks Epic Hatches", function(bool)
    _G.TrackList['Epic'] = bool
end)
RaritiesSection:NewToggle("Track Legendary Hatches", "Tracks Legendary Hatches", function(bool)
    _G.TrackList['Legendary'] = bool
end)
RaritiesSection:NewToggle("Track Mythical Hatches", "Tracks Mythical Hatches", function(bool)
    _G.TrackList['Mythical'] = bool
end)
RaritiesSection:NewToggle("Track Exclusive Hatches", "Tracks Exclusive Hatches", function(bool)
    _G.TrackList['Exclusive'] = bool
end)
OtherSettingsSection:NewDropdown("Footer Text", "eggs = Egg Count, Hatch = Hatch Amount, PSX = Pet Simulator X", {"eggs", "hatch", "PSX"}, function(FooterTextOption)
    _G.SettingsTable.HatchType = FooterTextOption
end)
OtherSettingsSection:NewToggle("List Pet Enchants", "Lists Pet Enchants (Legendary+)", function(bool)
    _G.SettingsTable.EnchantList = bool
end)
EnableHatcherSection:NewButton("Start The Hatcher", "Starts The Hatcher", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Buddy25112/PetHatchers/main/PSXPetHatcherNormalNew.lua"))()
end)


-- AutoFarm
AutoFarmSelection:NewToggle("Auto Collect Gifts", "Auto Collects Gifts", function(bool)
    _G.SettingsTable.GiftReward = bool
    if bool then
        ClaimGiftRewards()
    end
end)
AutoFarmSelection:NewToggle("Auto Collect Rank Rewards", "Auto Collects Rank Rewards", function(bool)
    _G.SettingsTable.AutoRankRewards = bool
    if bool then
        ClaimRankRewards()
    end
end)
AutoFarmSelection:NewToggle("Auto Collect Lootbags", "Auto Collects loot bags", function(bool)
    _G.SettingsTable.AutoCollectLootBags = bool
    if bool then
        AutoCollectLootBags()
    end
end)
AutoFarmSelection:NewToggle("Auto Collect Orbs", "Auto Collects Orbs", function(bool)
    _G.SettingsTable.AutoCollectOrbs = bool
    if bool then
        AutoCollectOrbs()
    end
end)


--EggFarming
AutoHatchEggSection:NewTextBox("Choose Egg: ", "Choose what egg you want to hatch (Case Sensitive!)", function(EggTypetxt)
	_G.SettingsTable.EggType = EggTypetxt
end)
AutoHatchEggSection:NewToggle("Multi Hatch", "Multi Hatches Eggs", function(bool)
    _G.SettingsTable.MultiHatch = bool
end)
AutoHatchEggSection:NewToggle("Octuple Hatch", "Octuple Hatches Eggs", function(bool)
    _G.SettingsTable.OctupleHatch = bool
end)
AutoHatchEggSection:NewToggle("Start Hatching Egg", "Starts Hatching The Egg", function(bool)
    _G.SettingsTable.BuyEgg = bool
    if bool then
        HatchEgg()
    end
end)
AutoHatchEggSection:NewToggle("Skip Animation", "Skips The Hatching Animation", function(bool)
    _G.SettingsTable.SkipAnimation = bool
    if _G.SettingsTable.SkipAnimation then
        SkipAnimation1()
    else
        SkipAnimation2()
    end
end)


-- Misc 
MiscFeaturesSelection:NewButton("Anti AFK", "Allows you to AFK Forever", function()
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()bb:ClickButton2(Vector2.new())
    end)
end)
MiscFeaturesSelection:NewButton("Stats Tracker", "Tracks ur coins per minute", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/dPXXyp4A'))()
end)


-- Other GUI's
PetsiXSection:NewDropdown("Petsi X Features:", "Most Of Petsi X's Features", {"Autofarm", "Egg Hatching", "Auto Collect Ores", "Auto Collect Lootbags", "AntiAFK", "Auto Convert (Gold, Rainbow, Dark Matter)", "Auto Collect Rank Rewards", "Walk Speed and Jump Power Settings", "More!"}, function()
end)
PetsiXSection:NewButton("Activate Script", "Executes the Script", function()
    loadstring(game:GetObjects("rbxassetid://8194485654")[1].Source)("Petsi X")
end)
KocmocSection:NewDropdown("Kocmoc Features:", "Most Of Kocmoc's Features", {"Unknown Right Now, GUI Broken"}, function()
end)
KocmocSection:NewButton("Activate Script", "Executes the Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/kocmoc/main/kocmoc-remastered.lua"))()
end)


--Settings
SettingsSection:NewButton("See Settings", "Shows Your Current Settings (Type /console in chat)", function()
    print("---CURRENT SETTINGS---")
    for i,v in pairs(_G.SettingsTable) do
        print(i,v)
    end
    for i,v in pairs(_G.TrackList) do
        print(i,v)
    end
    print("----------------------")
end)
SettingsSection:NewButton("Save Settings", "Saves your current Settings", function()
    SaveSettingsTableSettings()
    SaveTracklistSettings()
end)
SettingsSection:NewButton("Load Settings", "Loads your saved Settings", function()
    LoadSettingsTableSettings()
    LoadSettingsTracklistSettings()
    CheckSettings()
end)
SettingsSection:NewToggle("Discord Notification", "Sends an Invite to the discord server", function(bool)
    _G.SettingsTable.DiscordNotification = bool
end)


-- Help
DiscordlinkSection:NewButton("Discord Invite", "Click to recieve an invite to the discord server", function()
    (syn and syn.request or http_request or request)({ Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",Headers = {["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"},
                    Body = game:GetService("HttpService"):JSONEncode({cmd = "INVITE_BROWSER",
                        args = {code = "83aFw8rGM8"},
                            nonce = game:GetService("HttpService"):GenerateGUID(false)})})
end)
SaveSettingsSection:NewDropdown("Settings:", "Settings that will be saved", {"Webhook", "Legend Hatch Ping", "Mythical hatch Ping", "Exclusive Hatch Ping", "Track Common Pets", "Track Rare Pets", "Track Epic Pets", "Track Legendary Pets", "Track Mythical Pets", "Track Exclusive Pets", "Footer Text", "List Pet Enchants", "Auto Collect Gifts", "Auto Collect Rank Rewards", "Auto Collect Orbs", "Auto Collect Loot Bags", "Choose Egg:", "Multi Hatch", "Start Hatching Egg", "Discord Notification"}, function()
end)
NoSaveSettingsSection:NewDropdown("Settings:", "Settings that will not be saved", {"Start The Hatcher", "Skip Animation", "Anti AFK", "Stats Tracker", "All Other GUI's"}, function()
end)

-- Toggles
ToggleUISection:NewKeybind("Toggle The UI", "Toggles The UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)


-- Formatting Counts
function abb(Value)
    local Number
    local Formatted = Value
    while true do
        Formatted, Number = string.gsub(Formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (Number == 0) then
            break
        end
    end
    return Formatted
end


-- Egg Count in UI
while wait() do
    local Lib = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
    local EggsHatched1 = 0
            
    for i,v in pairs(Lib.Save.Get().EggsOpened) do
        EggsHatched1 = EggsHatched1 + v
    end
    EggsLabel:UpdateLabel("Eggs Hatched: " .. abb(EggsHatched1))
end

