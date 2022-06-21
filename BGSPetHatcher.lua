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
        if string.find(instance.TextLabel.Text,"Legendary") then
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
            local Webhook = _G.Webhook
            local Time = os.date('!*t', OSTime)
            local TextColor3 = instance.TextLabel.TextColor3
            local RGB = {TextColor3.R*255,TextColor3.G*255,TextColor3.B*255}
            local Hex = tonumber(rgbToHex({RGB[1],RGB[2],RGB[3]}))
            local Hatchping
            local WebhookImage
            if string.find(instance.TextLabel.Text,"King Doggy") then
                WebhookImage = "https://media.discordapp.net/attachments/721115513907839128/986102355860803615/unknown.png"
            elseif string.find(instance.TextLabel.Text,"The Overlord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986105916418060338/The_Overlord.png"
            elseif string.find(instance.TextLabel.Text,"Green Hydra") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988647639090356285/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Demonic Hydra") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988647660082827284/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Wraith") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106382723997737/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Prisma") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106318467244112/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Earth Champion") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106461434290176/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Dark Champion") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106420317532180/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Sky Champion") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106441767206912/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Fire Champion") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986106402927964200/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Golf Orb") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986108047443243019/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Golflord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986108080548872212/unknown.png"
            elseif string.find(instance.TextLabel.Text,"ACE") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986108095711313981/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Demonic Golf Ball") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986108124660396032/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Angelic Golf Ball") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/986108110114525204/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Jelly Dualcorn") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648210446831686/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Jelly Overlord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648222803243058/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Dogcat") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648236669632522/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Frost Dominus") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648770994597898/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Dominus Hydra") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648789046882344/unknown.png"
            elseif string.find(instance.TextLabel.Text,"The OwOlord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988648802988740658/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Angler Fish") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988649651534196746/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Jelly Fish") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988649664993701918/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Sea Star") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988649678268661800/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Blue Circlet") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988650273138413578/unknown.png"
            elseif string.find(instance.TextLabel.Text,"sircfenner") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988650289794015262/unknown.png"
            elseif string.find(instance.TextLabel.Text,"ObscureEntity") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988650304071421952/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Sea Cube") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988652253302907000/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Sea Phoenix") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988652266338803744/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Giant Pearl") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988652281912229918/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Ancient Hydra") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988653337589203014/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Ancient Elemental") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988653517386436658/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Cerberus") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988653355058491443/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Gryphon") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988653369382027264/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Rainbow Serpent") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654011651600385/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Pixie") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654024427470878/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Rainbow Dogcat") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654039745069056/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Fancy Serpent") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654258176004106/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Fancy Winged Hydra") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654271249666048/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Rainbow Gryphon") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988654284981813258/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Crystal Hippogriff") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656071776276521/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Fire King") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656085344862318/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Demilord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656735482957844/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Demon Snake") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656747885522964/unknown.png"
            elseif string.find(instance.TextLabel.Text,"King Mush") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656762271973386/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Eternal Star") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656777061085194/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Abyss") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656948373225472/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Pastel Hexarium") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656965452435487/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Crystal Teddy") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656978589007892/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Candy Cane Split") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794369922875422/47bb8ad8779da333ef0fe8d0fd45a50a.png"
            elseif string.find(instance.TextLabel.Text,"Candy Cane Owl") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794450239615056/503cf234ef7c6485176177cfa5f6960f.png"
            elseif string.find(instance.TextLabel.Text,"Peppermint Heart") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793498497490954/Png.png"
            elseif string.find(instance.TextLabel.Text,"Santa Hat") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793521574563911/Png.png"
            elseif string.find(instance.TextLabel.Text,"Frosted Dreamer") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793550594961448/0b8c1d92b8d5e083361a3622f8ded6f2.png"
            elseif string.find(instance.TextLabel.Text,"Frost Shard") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793573546180628/93509deb110c1982a76700491f4c5ccb.png"
            elseif string.find(instance.TextLabel.Text,"Frosted Duality") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793597617274900/b83cd1f7da2990b80038b629f2bf4f0a.png"
            elseif string.find(instance.TextLabel.Text,"Fallen Angel") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988656099106361404/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Abyss") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988657168515469392/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Pastel Hexarium") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988657272400011394/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Crystal Teddy") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988657405736939591/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Candy Cane Split") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923795160163315732/Png.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Candy Cane Owl") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923795218485088307/d475f417847660e6e843379fea05d3b9.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Frosted Dreamer") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794664719528026/84e8d69235776893ec855df29fc07439.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Frost Shard") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988658999517929502/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Frosted Duality") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988659144947032074/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Angelic Golf Ball") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988659315361603584/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Demonic Golf Ball") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988659339936006194/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic ACE") then
                WebhookImage = "https://cdn.discordapp.com/attachments/917912824427200542/988659267622027274/unknown.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Ice Lord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794831266951168/77bff27a7df590eae22297fcfc734960.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Frosted Guardian") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794759653404722/Png.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Golf Orb") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/853039762334941224/310.png"
            elseif string.find(instance.TextLabel.Text,"Mythic Golflord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/853039797526593536/310.png"
            elseif string.find(instance.TextLabel.Text,"Ice Lord") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923793346122629150/121209a458cf5592ed058bd07f9708ec.png"
            elseif string.find(instance.TextLabel.Text,"Frosted Guardian") then
                WebhookImage = "https://cdn.discordapp.com/attachments/749822808288395354/923794073062617109/Png.png"
            -- Other pet images you want to add will go here, make sure its indented like the two above (Its case sensitive)
            end     
            if string.find(instance.TextLabel.Text,"King Doggy") or string.find(instance.TextLabel.Text,"Earth Champion") or string.find(instance.TextLabel.Text,"Sky Champion") or string.find(instance.TextLabel.Text,"Fire Champion") or string.find(instance.TextLabel.Text,"Dark Champion") or string.find(instance.TextLabel.Text,"Frost Shard") or string.find(instance.TextLabel.Text,"Frosted Dreamer") or string.find(instance.TextLabel.Text,"Frosted Duality") or string.find(instance.TextLabel.Text,"Peppermint Heart") or string.find(instance.TextLabel.Text,"Santa Hat") or string.find(instance.TextLabel.Text,"ACE") or string.find(instance.TextLabel.Text,"Demonic Golf Ball") or string.find(instance.TextLabel.Text,"Angelic Golf Ball") or string.find(instance.TextLabel.Text,"The Overlord") or string.find(instance.TextLabel.Text,"The OwOlord") or string.find(instance.TextLabel.Text,"Dogcat") or string.find(instance.TextLabel.Text,"Sea Star") or string.find(instance.TextLabel.Text,"Giant Pearl") or string.find(instance.TextLabel.Text,"Gryphon") or string.find(instance.TextLabel.Text,"Rainbow Dogcat") or string.find(instance.TextLabel.Text,"Rainbow Gryphon") or string.find(instance.TextLabel.Text,"Fallen Angel") or string.find(instance.TextLabel.Text,"King Mush") or string.find(instance.TextLabel.Text,"Eternal Star") or string.find(instance.TextLabel.Text,"Crystal Teddy") or string.find(instance.TextLabel.Text,"ObscureEntity")then
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
                    ["url"] = WebhookImage
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
        end
    end)
