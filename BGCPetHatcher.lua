-- Feel free to edit this on ur own! this is a basic hatcher with no images. Can work as a server hatcher!
-- btw put this --> _G.Webhooksss = "" before the loadstring for it to work (ur webhook URL)
-- BIG Thanks to Tense_Master (Cor#0002) for helping me with the pet images!

-- Getting some info needed for webhook
local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId

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

-- Get Images
function GetThumbnail(petnumber)
    local eeee = require(game:GetService("ReplicatedStorage")["Game Objects"].Pets[petnumber]["Pet Module"])
    local eeee1 = eeee.thumbnail
    local eeee2 = eeee1:gsub("rbxassetid%:%/%/", "")
    local httpService = game:GetService("HttpService")
    local eeee3 = httpService:JSONDecode(game:HttpGet(("https://thumbnails.roblox.com/v1/assets?assetIds="..eeee2.."&size=250x250&format=Png&isCircular=false"))).data[1].imageUrl
    return eeee3
end 

-- GSubs
function FormatMessage(FM)
    local CC = FM:gsub("hatched a", "just hatched a"):gsub("WOW! ", ""):gsub("OMG! ", ""):gsub("%(", "(**"):gsub("%)", "**)")
    return CC
end

function Thing(L)
    local CC = L:gsub("a Legendary ", "a **Legendary "):gsub("a SHINY SECRET ", "a **Shiny Secret "):gsub("a SHINY Legendary ", "a **Shiny Legendary "):gsub(" pet!", "**!"):gsub("a GODLY ", "a **Godly "):gsub("a SECRET ", "a **Secret "):gsub("a SHINY GODLY ", "a **Shiny Godly ")
    return CC
end

-- Connecting to chat
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

-- The Main Function
local EmbedColor
Chat.ChildAdded:Connect(function(instance)
    if string.find(instance.TextLabel.Text,"hatched") and string.find(instance.TextLabel.Text,"a") then
            local ChatMessage = FormatMessage(instance.TextLabel.Text)
            local SecretPing = ""
            local FinalMessage = Thing(ChatMessage)
            -- Formatting With GSubs
            if string.find(instance.TextLabel.Text,"Legendary") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    EmbedColor = "9d00ff"
                else
                    EmbedColor = "00eeff"
                end
            elseif string.find(instance.TextLabel.Text,"GODLY") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    EmbedColor = "0080ff"
                else
                    EmbedColor = "00ff11"
                end
            elseif string.find(instance.TextLabel.Text,"SECRET") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    EmbedColor = "ffff00"
                    SecretPing = "<@721205421355958272>, You hatched a SHINY SECRET Pet! Congrats!"
                else
                    EmbedColor = "ff0062"
                    SecretPing = "<@721205421355958272>, You hatched a SECRET Pet! Congrats!"
                end
            end

            -- Get IDs for Images
            local ID = 0
            for i,v in pairs(game:GetService("ReplicatedStorage")["Game Objects"]:GetChildren()) do
                local module = require(v["Pet Module"])
                if string.find(module.name, instance.TextLabel.Text) then
                    ID = v.Name
                end
            end
            local Image = GetThumbnail(ID)


            -- Other Features
            local OSTime = os.time()
            local Webhook = _G.Webhooksss
            local Time = os.date('!*t', OSTime)
            local count = game:GetService("Players")[username].leaderstats.Eggs.Value
            
                -- The Webhook
                local Info = {
                    ["content"] = SecretPing,
                    ["embeds"] = {
                    {
                            ["description"] = FinalMessage,
                    ["author"] = {
                            ["name"] = username,
                            ["url"] = "https://www.roblox.com/users/".. userid .."/profile",
                            ["icon_url"] = "https://tr.rbxcdn.com/607344341a6f3034b930771626659ce3/150/150/AvatarHeadshot/Png",
                    },
                    ["thumbnail"] = {
                        ["url"] = Image
                    },
                    ["footer"] = {
                        ["text"] = "Egg #" .. abb(count) .. " | Bubble Gum Clicker",
                    },
                    ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                    ["color"] = tonumber(tostring("0x" .. EmbedColor)),
                    ["fields"] = {}},}}
                local Info = game:GetService("HttpService"):JSONEncode(Info)
                local HttpRequest = http_request;
                if syn then HttpRequest = syn.request else HttpRequest = http_request end
                    HttpRequest({Url=Webhook, Body=Info, Method="POST", Headers=Headers})
                end
end)
