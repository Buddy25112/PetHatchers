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

-- Connecting to chat
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

-- The Main Function
Chat.ChildAdded:Connect(function(instance)
    if string.find(instance.TextLabel.Text,"Server") then
            if string.find(instance.TextLabel.Text,"just") then
                if string.find(instance.TextLabel.Text,"hatched") then
                    if string.find(instance.TextLabel.Text,"a") then
                        
                        -- Get Hatcher Info
                        local OnlyCount1
                        local username
                        if string.find(instance.TextLabel.Text, "buddy25112") then
                                OnlyCount1 = "buddy25112"
                                username = game:GetService("Players").buddy25112.Name
                                
                            elseif string.find(instance.TextLabel.Text, "buddy25113") then
                                OnlyCount1 = "buddy25113"
                                username = game:GetService("Players").buddy25113.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt4") then
                                OnlyCount1 = "BuddyHatchAlt4"
                                username = game:GetService("Players").BuddyHatchAlt4.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt1") then
                                OnlyCount1 = "BuddyHatchAlt1"
                                username = game:GetService("Players").BuddyHatchAlt1.Name
                                
                            elseif string.find(instance.TextLabel.Text, "AJ_GamingYYTT") then
                                OnlyCount1 = "AJ_GamingYYTT"
                                username = game:GetService("Players").AJ_GamingYYTT.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt5") then
                                OnlyCount1 = "BuddyHatchAlt5"
                                username = game:GetService("Players").BuddyHatchAlt5.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt6") then
                                OnlyCount1 = "BuddyHatchAlt6"
                                username = game:GetService("Players").BuddyHatchAlt6.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt7") then
                                OnlyCount1 = "BuddyHatchAlt7"
                                username = game:GetService("Players").BuddyHatchAlt7.Name

                            end
                            
                        local OnlyCount = {OnlyCount1}
                        
                        -- Get Counts
                        local count = 0
                        for i,v in pairs(game:GetService("Players"):GetChildren()) do
                            for n,b in pairs(OnlyCount) do
                                if string.find(v.Name, b) then
                        	        count = v.leaderstats["Eggs"].Value    
                                end
                            end
                        end
                        
                        -- Get Pet Info
                        local PetChance
                        local PetImage
                        local petname
                        if string.find(instance.TextLabel.Text, "Cyan Sea Dragon") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/2.00B"
                                petname = "Shiny Cyan Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341464403902544/Cyan_Sea_Dragon.png"
                            else
                                PetChance = "1/20.0M"
                                petname = "Cyan Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341464403902544/Cyan_Sea_Dragon.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Lunar Sea Dragon") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/2.00B"
                                petname = "Shiny Lunar Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341458242473984/Lunar_Sea_Dragon.png"
                            else
                                PetChance = "1/20.0M"
                                petname = "Lunar Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341458242473984/Lunar_Sea_Dragon.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Magenta Sea Dragon") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/2.00B"
                                petname = "Shiny Magenta Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341457739165707/Magenta_Sea_Dragon.png"
                            else
                                PetChance = "1/20.0M"
                                petname = "Magenta Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341457739165707/Magenta_Sea_Dragon.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Sand Sea Dragon") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/2.00B"
                                petname = "Shiny Sand Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341481374076968/Sand_Sea_Dragon.png"
                            else
                                PetChance = "1/20.0M"
                                petname = "Sand Sea Dragon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341481374076968/Sand_Sea_Dragon.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "King Pufferfish") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/8.00B"
                                petname = "Shiny King Pufferfish"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341456808022056/King_Pufferfish.png"
                            else
                                PetChance = "1/80.0M"
                                petname = "King Pufferfish"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1005341456808022056/King_Pufferfish.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Royal Doggy") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/100M"
                                petname = "Shiny Royal Doggy"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                            else
                                PetChance = "1/1.00M"
                                petname = "Royal Doggy"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Dementor") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/500M"
                                petname = "Shiny Dementor"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                            else
                                PetChance = "1/5.00M"
                                petname = "Dementor"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Gryphon") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/10.0B"
                                petname = "Shiny Gryphon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                            else
                                PetChance = "1/100M"
                                petname = "Gryphon"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Giant Pearl") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/200M"
                                petname = "Shiny Giant Pearl"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                            else
                                PetChance = "1/2.00M"
                                petname = "Giant Pearl"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Atlantic Titan") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/666M"
                                petname = "Shiny Atlantic Titan"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                            else
                                PetChance = "1/6.66M"
                                petname = "Atlantic Titan"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Koi") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/10.0B"
                                petname = "Shiny Koi"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                            else
                                PetChance = "1/100M"
                                petname = "Koi"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Giant Robot") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/250M"
                                petname = "Shiny Giant Robot"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                            else
                                PetChance = "1/2.50M"
                                petname = "Giant Robot"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Virus CORE") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/250M"
                                petname = "Shiny Virus CORE"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                            else
                                PetChance = "1/2.50M"
                                petname = "Virus CORE"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                            end

                        elseif string.find(instance.TextLabel.Text, "Royal Paladin") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/200M"
                                petname = "Shiny Royal Paladin"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012940786310062171/Royal_Paladin.png"
                            else
                                PetChance = "1/2.00M"
                                petname = "Royal Paladin"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012940786310062171/Royal_Paladin.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Plasma Wolflord") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/1.00B"
                                petname = "Shiny Plasma Wolflord"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012809956304617492/Plasma_Wolflord.png"
                            else
                                PetChance = "1/10.0M"
                                petname = "Plasma Wolflord"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012809956304617492/Plasma_Wolflord.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Pyramidium") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/13.3B"
                                petname = "Shiny Pyramidium"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012809955851645019/Pyramidium.png"
                            else
                                PetChance = "1/133M"
                                petname = "Pyramidium"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1012809955851645019/Pyramidium.png"
                            end
                        end
                        
                        -- Other Features
                        local OSTime = os.time()
                        local Webhook = _G.Webhooksss
                        local Time = os.date('!*t', OSTime)
                        
                        -- Shiny/Normal Secret Info
                        local NewColor
                        local SecretPing
                        local TitleFinder
                        local FooterFinder
                        if string.find(instance.TextLabel.Text,"Secret Shiny") then
                            SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny** **Secret** has been hatched!"
                            TitleFinder = "A Shiny Secret was just hatched!"
                            FooterFinder = "Shiny Secret"
                            NewColor = "F7FF00"
                        elseif string.find(instance.TextLabel.Text,"Secret") then
                            SecretPing = "<@&803012562878726174>, a **Secret** has been hatched!"
                            TitleFinder = "A Secret was just hatched!"
                            FooterFinder = "Secret"
                            NewColor = "FF00E6"
                        elseif string.find(instance.TextLabel.Text,"ANCIENT Shiny") then
                            SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny** **Ancient** has been hatched!"
                            TitleFinder = "A Shiny Ancient was just hatched!"
                            FooterFinder = "Shiny Ancient"
                            NewColor = "F7FF00"
                        elseif string.find(instance.TextLabel.Text,"ANCIENT") then
                            SecretPing = "<@&928384646595641404> <@&803012562878726174>, an **Ancient** has been hatched!"
                            TitleFinder = "An Ancient was just hatched!"
                            FooterFinder = "Ancient"
                            NewColor = "00ff00"
                        end
                        
                        -- The Webhook
                            local Info = {
                                ["content"] = SecretPing,
                                ["embeds"] = {
                                {
                                ["description"] = username .. " just hatched a **" .. petname .. "**!",
                                ["author"] = {},
                                ["thumbnail"] = {
                                    ["url"] = PetImage
                                },
                                ["footer"] = {
                                    ["text"] = "Egg #" .. abb(count) .. " | " .. FooterFinder,
                                },
                                ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
                                ["title"] = TitleFinder,
                                ["color"] = tonumber(tostring("0x" .. NewColor)), --decimal FF00E6
                                ["fields"] = {
						        {
							        ["name"] = "Chance:",
							        ["value"] = PetChance,
							        ["inline"] = true
						        },
						        {
							        ["name"] = "Hatcher:",
							        ["value"] = username,
							        ["inline"] = true
						        },
					        },}}}
                            local Info = game:GetService("HttpService"):JSONEncode(Info)
                            local HttpRequest = http_request;
                            if syn then HttpRequest = syn.request else HttpRequest = http_request end
                                HttpRequest({Url=Webhook, Body=Info, Method="POST", Headers=Headers})
                        end
                    end
                end
            end
end)
