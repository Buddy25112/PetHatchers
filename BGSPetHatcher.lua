local function rgbToHex(rgb)
local hexadecimal = '0X'
for key, value in pairs(rgb) do
   local hex = ''
   while(value > 0)do
local index = math.fmod(value, 16) + 1
value = math.floor(value / 16)
hex = string.sub('0123456789ABCDEF', index, index) .. hex
end
if(string.len(hex) == 0)then
hex = '00'
elseif(string.len(hex) == 1)then
hex = '0' .. hex
end
hexadecimal = hexadecimal .. hex
end
return hexadecimal
end

local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId
local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png"

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
	
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

Chat.ChildAdded:Connect(function(instance)
    if string.find(instance.TextLabel.Text,"[Server]") then
        local plr = game.Players.LocalPlayer
        local OnlyCount = {plr.Name}
        local count = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount) do
                if string.find(v.Name, b) then
                    count = v.leaderstats["Eggs Opened"].Value    
                end
            end
        end
        local OSTime = os.time()
        local Time = os.date('!*t', OSTime)
        local TextColor3 = instance.TextLabel.TextColor3
        local RGB = {TextColor3.R*255,TextColor3.G*255,TextColor3.B*255}
        local Hex = tonumber(rgbToHex({RGB[1],RGB[2],RGB[3]}))
        local Hatchping 
        if string.find(instance.TextLabel.Text,"King Doggy") or string.find(instance.TextLabel.Text,"Earth Champion") or string.find(instance.TextLabel.Text,"Sky Champion") or string.find(instance.TextLabel.Text,"Fire Champion") or string.find(instance.TextLabel.Text,"Dark Champion") or string.find(instance.TextLabel.Text,"Frost Shard") or string.find(instance.TextLabel.Text,"Frosted Dreamer") or string.find(instance.TextLabel.Text,"Frosted Duality") or string.find(instance.TextLabel.Text,"Peppermint Heart") or string.find(instance.TextLabel.Text,"Santa Hat") or string.find(instance.TextLabel.Text,"ACE") or string.find(instance.TextLabel.Text,"Demonic Golf Ball") or string.find(instance.TextLabel.Text,"Angelic Golf Ball") or string.find(instance.TextLabel.Text,"The Overlord") or string.find(instance.TextLabel.Text,"The OwOlord") or string.find(instance.TextLabel.Text,"Dogcat") or string.find(instance.TextLabel.Text,"Sea Star") or string.find(instance.TextLabel.Text,"Giant Pearl") or string.find(instance.TextLabel.Text,"Gryphon") or string.find(instance.TextLabel.Text,"Rainbow Dogcat") or string.find(instance.TextLabel.Text,"Rainbow Gryphon") or string.find(instance.TextLabel.Text,"Fallen Angel") or string.find(instance.TextLabel.Text,"King Mush") or string.find(instance.TextLabel.Text,"Eternal Star") or string.find(instance.TextLabel.Text,"Crystal Teddy") then
            Hatchping = _G.hatchping
        else
            Hatchping = ""
        end
        local Info = {
            ["content"] = Hatchping,
            ["embeds"] = {
            {
                    ["title"] = instance.TextLabel.Text,
            ["author"] = {
                    ["name"] = username,
                    ["url"] = "https://www.roblox.com/users/".. userid .."/profile",
                    ["icon_url"] = icon,
            },
            ["thumbnail"] = {
                ["url"] = ""
            },
            ["footer"] = {
                ["text"] = username .. "'s Egg Count: " .. abb(count),
            },
            ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
            ["color"] = Hex,
            ["fields"] = {}},}}
        local Info = game:GetService("HttpService"):JSONEncode(Info)
        local HttpRequest = http_request;
        if syn then HttpRequest = syn.request else HttpRequest = http_request end
            HttpRequest({Url=Webhook, Body=Info, Method="POST", Headers=Headers})
    end
end)
