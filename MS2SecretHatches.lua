_G.HatchAmount = {
    SecretCount = 116;
}

--Load Settings
local TrackListName = "AJ's_Hatch_Amount_Count.txt"

function SaveHatchAmountSettings()
    local json
    local HttpService = game:GetService("HttpService")
    if (writefile) then
        json = HttpService:JSONEncode(_G.HatchAmount)
        writefile(TrackListName, json)
    end
end

function LoadHatchAmountSettings()
    local HttpService = game:GetService("HttpService")
    if (readfile and isfile and isfile(TrackListName)) then
        _G.HatchAmount = HttpService:JSONDecode(readfile(TrackListName))
    end
end

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
 
                        if OnlyCount1 == "buddy25112" or OnlyCount1 == "buddy25113" or OnlyCount1 == "BuddyHatchAlt4" or OnlyCount1 == "BuddyHatchAlt5" or OnlyCount1 == "BuddyHatchAlt6" or OnlyCount1 == "BuddyHatchAlt7" or OnlyCount1 == "BuddyHatchAlt1" or OnlyCount1 == "AJ_GamingYYTT" then
                            LoadHatchAmountSettings()

                            -- Get Pet Info
                            local PetChance
                            local PetImage
                            local petname
                            if string.find(instance.TextLabel.Text, "Colossal Tart") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Colossal Tart"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Colossal Tart"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Pastry Shard") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/400M"
                                    petname = "Shiny Pastry Shard"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                else
                                    PetChance = "1/4.00M"
                                    petname = "Pastry Shard"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Angelic Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Angelic Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                else
                                    PetChance = "1/100M"
                                    petname = "Angelic Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Evil Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Evil Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
                                else
                                    PetChance = "1/100M"
                                    petname = "Evil Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
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
                            
                            elseif string.find(instance.TextLabel.Text, "Bubblegum Pegasus") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Bubblegum Pegasus"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Bubblegum Pegasus"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Sky Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Sky Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Sky Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                end
                                
                            elseif string.find(instance.TextLabel.Text, "Fire Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Fire Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Fire Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Earth Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Earth Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Earth Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Dark Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Dark Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Dark Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "OwOlord") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/8.00B"
                                    petname = "Shiny OwOlord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                else
                                    PetChance = "1/80.0M"
                                    petname = "OwOlord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                end

                            elseif string.find(instance.TextLabel.Text, "Gumdrop King") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/400M"
                                    petname = "Shiny Gumdrop King"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                else
                                    PetChance = "1/4.00M"
                                    petname = "Gumdrop King"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                end

                            elseif string.find(instance.TextLabel.Text, "Gummy Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Gummy Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Gummy Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                end

                            elseif string.find(instance.TextLabel.Text, "Giant Chocolate Chicken") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/5.00B"
                                    petname = "Shiny Giant Chocolate Chicken"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                else
                                    PetChance = "1/50.0M"
                                    petname = "Giant Chocolate Chicken"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                end
                            end
                            
                            -- Other Features
                            local OSTime = os.time()
                            local Webhook = _G.Webhooksss
                            local Time = os.date('!*t', OSTime)
                            
                            -- Shiny/Normal Secret Info
                            local SecretHatchCounter
                            local NewColor
                            local SecretPing
                            local TitleFinder
                            local FooterFinder
                            if string.find(instance.TextLabel.Text,"Secret Shiny") then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny** **Secret** has been hatched!"
                                TitleFinder = "A Shiny Secret was just hatched!"
                                FooterFinder = "Shiny Secret"
                                NewColor = "F7FF00"
                                SecretHatchCounter = _G.HatchAmount.SecretCount + 1
                                _G.HatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            elseif string.find(instance.TextLabel.Text,"Secret") then
                                SecretPing = "<@&803012562878726174>, a **Secret** has been hatched!"
                                TitleFinder = "A Secret was just hatched!"
                                FooterFinder = "Secret"
                                NewColor = "FF00E6"
                                SecretHatchCounter = _G.HatchAmount.SecretCount + 1
                                _G.HatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            elseif string.find(instance.TextLabel.Text,"ANCIENT Shiny") then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny** **Ancient** has been hatched!"
                                TitleFinder = "A Shiny Ancient was just hatched!"
                                FooterFinder = "Shiny Ancient"
                                NewColor = "F7FF00"
                                SecretHatchCounter = _G.HatchAmount.SecretCount + 1
                                _G.HatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            elseif string.find(instance.TextLabel.Text,"ANCIENT") then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, an **Ancient** has been hatched!"
                                TitleFinder = "An Ancient was just hatched!"
                                FooterFinder = "Ancient"
                                NewColor = "00ff00"
                                SecretHatchCounter = _G.HatchAmount.SecretCount + 1
                                _G.HatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
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
                                        ["name"] = "Secrets Hatched:",
                                        ["value"] = SecretHatchCounter,
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
            end
end)
