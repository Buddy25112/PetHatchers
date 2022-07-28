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
                        if string.find(instance.TextLabel.Text, "Chocolate Sundae") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/800M"
                                petname = "Shiny Chocolate Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681479175897098/Chocolate_Sundae.png"
                            else
                                PetChance = "1/8.00M"
                                petname = "Chocolate Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681479175897098/Chocolate_Sundae.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Vanilla Sundae") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/800M"
                                petname = "Shiny Vanilla Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681477942784080/Vanilla_Sundae.png"
                            else
                                PetChance = "1/8.00M"
                                petname = "Vanilla Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681477942784080/Vanilla_Sundae.png"
                            end
                                
                        elseif string.find(instance.TextLabel.Text, "Strawberry Sundae") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/800M"
                                petname = "Shiny Strawberry Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681478299295754/Strawberry_Sundae.png"
                            else
                                PetChance = "1/8.00M"
                                petname = "Strawberry Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681478299295754/Strawberry_Sundae.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Mint Sundae") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/800M"
                                petname = "Shiny Mint Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681478639038514/Mint_Sundae.png"
                            else
                                PetChance = "1/8.00M"
                                petname = "Mint Sundae"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681478639038514/Mint_Sundae.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Tidal God") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/186M"
                                petname = "Shiny Tidal God"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198715667165204/Tidal_God.png"
                            else
                                PetChance = "1/1.86M"
                                petname = "Tidal God"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198715667165204/Tidal_God.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Fracture") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/200M"
                                petname = "Shiny Fracture"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198849050214410/Fracture.png"
                            else
                                PetChance = "1/2.00M"
                                petname = "Fracture"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198849050214410/Fracture.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Dark Defender") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/2.00B"
                                petname = "Shiny Dark Defender"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198736382832640/Dark_Defender.png"
                            else
                                PetChance = "1/20.0M"
                                petname = "Dark Defender"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/995198736382832640/Dark_Defender.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Captain's Curse") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/400M"
                                petname = "Shiny Captain's Curse"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681480560025630/Captains_Curse.png"
                            else
                                PetChance = "1/4.00M"
                                petname = "Captain's Curse"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681480560025630/Captains_Curse.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Kraken") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/5.00B"
                                petname = "Shiny Kraken"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681480199307404/Kraken.png"
                            else
                                PetChance = "1/50.0M"
                                petname = "Kraken"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681480199307404/Kraken.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Melaken") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/20.0B"
                                petname = "Shiny Melaken"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681534247125053/Melaken.png"
                            else
                                PetChance = "1/200M"
                                petname = "Melaken"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/997681534247125053/Melaken.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "100M Trophy") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/100M"
                                petname = "Shiny 100M Trophy"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100377418530936/100M_Trophy.png"
                            else
                                PetChance = "1/1.00M"
                                petname = "100M Trophy"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100377418530936/100M_Trophy.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Infinity Wisp") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/1.00B"
                                petname = "Shiny Infinity Wisp"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100378752331897/Infinity_Wisp.png"
                            else
                                PetChance = "1/10.0M"
                                petname = "Infinity Wisp"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100378752331897/Infinity_Wisp.png"
                            end
                        
                        elseif string.find(instance.TextLabel.Text, "Loyal Guard") then
                            if string.find(instance.TextLabel.Text, "Shiny") then
                                PetChance = "1/10.0B"
                                petname = "Shiny Loyal Guard"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100377741500476/Loyal_Guard.png"
                            else
                                PetChance = "1/100M"
                                petname = "Loyal Guard"
                                PetImage = "https://media.discordapp.net/attachments/749822808288395354/1000100377741500476/Loyal_Guard.png"
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
