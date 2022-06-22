-- Get Text Color
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

-- Getting some info needed for webhook
local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId
local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png"

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

-- Some Random Notification stuff
if _G.SendNotifications == true then
    	game.StarterGui:SetCore(
               	"SendNotification",
                {
			Title = "MS2 Pet Hatcher",
			Text = "Version 1.0.3, Updated and Maintained by PetSimulatorXPlayer#5011",
			Duration = 5
		}
	)
        
        game.StarterGui:SetCore(
		"SendNotification",
                {
                    	Title = "MS2 Pet Hatcher",
                   	Text = "If you run into any bugs, please let me know! Contact me via discord",
                    	Duration = 5
               	}
        )
elseif _G.SendNotifications == false then
        end

-- Connecting to chat
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

-- The Main Function
Chat.ChildAdded:Connect(function(instance)
    if string.find(instance.TextLabel.Text,"Server") then
        if string.find(instance.TextLabel.Text,_G.Username) then
            if string.find(instance.TextLabel.Text,"just") then
                if string.find(instance.TextLabel.Text,"hatched") then
                    if string.find(instance.TextLabel.Text,"a") then
                        
                        -- Get Counts
                        local plr = game.Players.LocalPlayer
                        local OnlyCount = {plr.Name}
                        local count = 0
                        for i,v in pairs(game:GetService("Players"):GetChildren()) do
                            for n,b in pairs(OnlyCount) do
                                if string.find(v.Name, b) then
                        	        count = v.leaderstats["Eggs"].Value    
                                end
                            end
                        end
                        local count2 = 0
                        for i,v in pairs(game:GetService("Players"):GetChildren()) do
                            for n,b in pairs(OnlyCount) do
                                if string.find(v.Name, b) then
                        	        count2 = v.leaderstats["Rebirths"].Value    
                                end
                            end
                        end
                        
                        -- Other Features
                        local OSTime = os.time()
                        local Webhook = _G.Webhooksss
                        local Time = os.date('!*t', OSTime)
                        local TextColor3 = instance.TextLabel.TextColor3
                        local RGB = {TextColor3.R*255,TextColor3.G*255,TextColor3.B*255}
                        local Hex = tonumber(rgbToHex({RGB[1],RGB[2],RGB[3]}))
                        
                        -- Get Pets and the Text/Image (Legendarys Only)
                        local Dontsend
                        local HatchText
                        local PetImage
                        if string.find(instance.TextLabel.Text,"Mimic") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Mimic**! (**0.001%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986805339783589979/Screenshot_2022-06-15_192913-removebg-preview.png"
                                if _G.SkipT1Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Mimic**! (**0.1%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986805339783589979/Screenshot_2022-06-15_192913-removebg-preview.png"
                                if _G.SkipT1Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Hydra") then
                            if string.find(instance.TextLabel.Text,"King") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **King Hydra**! (**0.00005%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986813526616203284/Screenshot_2022-06-15_194340-removebg-preview.png"
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **King Hydra**! (**0.005%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986813526616203284/Screenshot_2022-06-15_194340-removebg-preview.png"
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            else
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Hydra**! (**0.0001%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986815357421506612/Screenshot_2022-06-15_201040-removebg-preview.png"
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Hydra**! (**0.01%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986815357421506612/Screenshot_2022-06-15_201040-removebg-preview.png"
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Omega One") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Omega One**! (**1e-06%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986803438295867454/Screenshot_2022-06-15_192212-removebg-preview.png"
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Omega One**! (**0.0001%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986803438295867454/Screenshot_2022-06-15_192212-removebg-preview.png"
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Unicorn") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Unicorn**! (**0.001%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986818456286556250/Screenshot_2022-06-15_202316-removebg-preview.png"
                                if _G.SkipT1Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Unicorn**! (**0.1%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986818456286556250/Screenshot_2022-06-15_202316-removebg-preview.png"
                                if _G.SkipT1Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Crystal Cuboid") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Crystal Cuboid**! (**0.0001%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986819684072583228/Screenshot_2022-06-15_202743-removebg-preview.png"
                                if _G.SkipT2Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Crystal Cuboid**! (**0.01%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986819684072583228/Screenshot_2022-06-15_202743-removebg-preview.png"
                                if _G.SkipT2Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Luminous") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Luminous**! (**0.00005%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986821334401167410/Screenshot_2022-06-15_203341-removebg-preview.png"
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Luminous**! (**0.005%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986821334401167410/Screenshot_2022-06-15_203341-removebg-preview.png"
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Brilliant Gem") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Brilliant Gem**! (**3e-07%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986793132186275850/Screenshot_2022-06-15_183731-removebg-preview_1.png"
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Brilliant Gem**! (**3e-05%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986793132186275850/Screenshot_2022-06-15_183731-removebg-preview_1.png"
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Glitch") then
                            if string.find(instance.TextLabel.Text,"Cube") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Glitched Cube**! (**0.0001%**)"
                                    PetImage = ""
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Glitched Cube**! (**0.01%**)"
                                    PetImage = ""
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            else
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Glitch**! (**0.001%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986823770624888862/Screenshot_2022-06-15_204214-removebg-preview.png"
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Glitch**! (**0.1%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986823770624888862/Screenshot_2022-06-15_204214-removebg-preview.png"
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            end
                            
                        elseif string.find(instance.TextLabel.Text,"Cyber Comet") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Cyber Comet**! (**0.0001%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986825135317205022/Screenshot_2022-06-15_204841-removebg-preview.png"
                                if _G.SkipT2Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Cyber Comet**! (**0.01%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986825135317205022/Screenshot_2022-06-15_204841-removebg-preview.png"
                                if _G.SkipT2Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Tetra Cube") then
                            if string.find(instance.TextLabel.Text,"Virus") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Virus Cube**! (**0.001%**)"
                                    PetImage = ""
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Virus Cube**! (**0.1%**)"
                                    PetImage = ""
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            else
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Tetra Cube**! (**0.00005%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986826694847524884/Screenshot_2022-06-15_205533-removebg-preview.png"
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Tetra Cube**! (**0.005%**)"
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/986826694847524884/Screenshot_2022-06-15_205533-removebg-preview.png"
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Giant Robot") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Giant Robot**! (**4e-07%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986800845951737887/Screenshot_2022-06-15_185831-removebg-preview.png"
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Giant Robot**! (**4e-05%**)"
                                PetImage = "https://media.discordapp.net/attachments/750156768834879488/986800845951737887/Screenshot_2022-06-15_185831-removebg-preview.png"
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"CORE") then
                            if string.find(instance.TextLabel.Text,"Virus") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Secret** **Virus CORE**! (**4e-07%**)"
                                    PetImage = ""
                                    Dontsend = false
                                else
                                    HatchText =  username .. " just hatched a **Secret** **Virus CORE**! (**4e-05%**)"
                                    PetImage = ""
                                    Dontsend = false
                                end
                            else
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **CORE**! (**0.00005%**)"
                                    PetImage = ""
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **CORE**! (**0.005%**)"
                                    PetImage = ""
                                    if _G.SkipT3Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            end
                            
                        elseif string.find(instance.TextLabel.Text,"Holo Butterfly") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Holo Butterfly**! (**0.0002%**)"
                                    PetImage = ""
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Holo Butterfly**! (**0.02%**)"
                                    PetImage = ""
                                    if _G.SkipT1Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                            end
							
			elseif string.find(instance.TextLabel.Text,"Holocorn") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    HatchText =  username .. " just hatched a **Shiny Legendary** **Holocorn**! (**0.00005%**)"
                                    PetImage = ""
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                else
                                    HatchText = username .. " just hatched a **Legendary** **Holocorn**! (**0.005%**)"
                                    PetImage = ""
                                    if _G.SkipT2Hatches == true then
                                        Dontsend = true
                                    else
                                        Dontsend = false
                                    end
                                end
                        
                        elseif string.find(instance.TextLabel.Text,"Rainbow Shock") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **Rainbow Shock**! (**0.000001%**)"
                                PetImage = ""
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **Rainbow Shock**! (**0.0001%**)"
                                PetImage = ""
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Prisma") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Prisma**! (**3e-07%**)"
                                PetImage = ""
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Prisma**! (**3e-05%**)"
                                PetImage = ""
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Robotic Leviathan") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Robotic Leviathan**! (**8e-08%**)"
                                PetImage = ""
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Robotic Leviathan**! (**8e-06%**)"
                                PetImage = ""
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"The Overseer") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Legendary** **The Overseer**! (**0.00000125%**)"
                                PetImage = ""
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            else
                                HatchText = username .. " just hatched a **Legendary** **The Overseer**! (**0.000125%**)"
                                PetImage = ""
                                if _G.SkipT3Hatches == true then
                                    Dontsend = true
                                else
                                    Dontsend = false
                                end
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Queen Kitty") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Queen Kitty**! (**3.5e-07%**)"
                                PetImage = ""
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Queen Kitty**! (**3.5e-05%**)"
                                PetImage = ""
                                Dontsend = false
                            end
                        
                        elseif string.find(instance.TextLabel.Text,"Frost Defender") then
                            if string.find(instance.TextLabel.Text,"Shiny") then
                                HatchText =  username .. " just hatched a **Shiny Secret** **Frost Defender**! (**1e-07%**)"
                                PetImage = ""
                                Dontsend = false
                            else
                                HatchText =  username .. " just hatched a **Secret** **Frost Defender**! (**1e-05%**)"
                                PetImage = ""
                                Dontsend = false
                            end
                        -- End of this function
                        end
                        
                        -- Hatch Ping Info
                        local SecretPing
                        if string.find(instance.TextLabel.Text,"Secret") then
                            SecretPing = _G.Hatchping
                        else
                            SecretPing = ""
                        end
                        
                        -- The Webhook
                        if Dontsend == false then
                            local Info = {
                                ["content"] = SecretPing,
                                ["embeds"] = {
                                {
                                        ["description"] = HatchText,
                                ["author"] = {
                                        ["name"] = username,
                                        ["url"] = "https://www.roblox.com/users/".. userid .."/profile",
                                        ["icon_url"] = icon,
                                },
                                ["thumbnail"] = {
                                    ["url"] = PetImage
                                },
                                ["footer"] = {
                                    ["text"] = "Egg #" .. abb(count) .. " | " .. abb(count2) .. " Rebirths",
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
                end
            end
        end
    end
end)
print('MS2 Pet Hatcher V1.0.3, Maintained and Updated by PetSimulatorXPlayer#5011')
