-- Feel free to edit this on ur own! this is a basic hatcher with no images. Can work as a server hatcher!
-- btw put this --> _G.Webhooksss = "" before the loadstring for it to work (ur webhook URL)

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

-- Functions
function FormatMessage(FM)
    local CC = FM:gsub("hatched a", "just hatched a"):gsub("WOW! ", ""):gsub("OMG! ", ""):gsub("%(", "(**"):gsub("%)", "**)")
    return CC
end

function ShinyLegendary(SL)
    local CC = SL:gsub("SHINY Legendary", "**Shiny Legendary"):gsub(" pet!", "**!")
    return CC
end

function Godly(G)
    local CC = G:gsub("GODLY", "**Godly"):gsub(" pet!", "**!")
    return CC
end

function ShinyGodly(SG)
    local CC = SG:gsub("SHINY GODLY", "**Shiny Godly"):gsub(" pet!", "**!")
    return CC
end

function Secret(S)
    local CC = S:gsub("SECRET", "**Secret"):gsub(" pet!", "**!")
    return CC
end

function ShinySecret(SS)
    local CC = SS:gsub("SHINY SECRET", "**Shiny Secret"):gsub(" pet!", "**!")
    return CC
end

-- Connecting to chat
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

-- The Main Function
local ChatMessage
local FinalMessage
local EmbedColor
local SecretPing
Chat.ChildAdded:Connect(function(instance)
    if string.find(instance.TextLabel.Text,"hatched") then
        if string.find(instance.TextLabel.Text,"a") then
            ChatMessage = (FormatMessage(instance.TextLabel.Text))
            if string.find(instance.TextLabel.Text,"Legendary") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    FinalMessage = ShinyLegendary(ChatMessage)
                    EmbedColor = "9d00ff"
                    SecretPing = ""
                else
                    FinalMessage = ChatMessage
                    EmbedColor = "00eeff"
                    SecretPing = ""
                end
            elseif string.find(instance.TextLabel.Text,"GODLY") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    FinalMessage = ShinyGodly(ChatMessage)
                    EmbedColor = "0080ff"
                    SecretPing = ""
                else
                    FinalMessage = Godly(ChatMessage)
                    EmbedColor = "00ff11"
                    SecretPing = ""
                end
            elseif string.find(instance.TextLabel.Text,"SECRET") then
                if string.find(instance.TextLabel.Text,"SHINY") then
                    FinalMessage = ShinySecret(ChatMessage)
                    EmbedColor = "ffff00"
                    SecretPing = "<@721205421355958272>, You hatched a SHINY SECRET Pet! Congrats!"
                else
                    FinalMessage = Secret(ChatMessage)
                    EmbedColor = "ff0062"
                    SecretPing = "<@721205421355958272>, You hatched a SECRET Pet! Congrats!"
                end
            end

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
                        ["url"] = ""
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
        end
end)
