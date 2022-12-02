_G.HatchAmount = {
    SecretCount = 264;
    colossaltart = 27;
    pastryshard = 7;
    evilgummybear = 0;
    angelicgummybear = 0;
    bubblegumpegasus = 62;
    earthchampion = 6;
    skychampion = 3;
    firechampion = 0;
    darkchampion = 4;
    owolord = 0;
    gummydogcat = 9;
    kinggumdrop = 4;
    giantchocolatechicken = 0;
    royaldoggy = 16;
    dementor = 3;
    gryphon = 0;
    giantpearl = 1;
    atlantictitan = 0;
    koi = 0;
    giantrobot = 0;
    viruscore = 0;
    princepumpkin = 0;
    lucidleaf = 0;
    spiritofthefox = 0;
    skullemoji = 0;
    wolfskull = 0;
    sinisterskull = 0;
    heavenlyskull = 0;
    kingskull = 0;
    guardianskull = 0;
    theultimatelord = 0;
    MechanicalObliterator = 0;
    Frankenbot = 0;
    VengefulSpirit = 0;
    GhostSpirit = 0;
    VenomGem = 0;
    Pandemonium = 0;
    Luminescent = 0;
    AllSeeingShard = 0;
    bunnyplushie = 0;
    dragonplushie = 0;
    kittyplushie = 0;
    doggyplushie = 0;
    unicornplushie = 0;
    giantplushbot = 0;
    pixeldogcat = 0;
    spectrum = 0;
    pixeltrophy = 0;
    doggygiftbox = 0;
    kittygiftbox = 0;
    luminousgiftbox = 0;
    frostdefendergiftbox = 0;
    loyalguardgiftbox = 0;
    eternalsnowflake = 0;
    velvetwolflord = 0;
    santasgiftbag = 0;
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
                        local username
                        local count
                        if string.find(instance.TextLabel.Text, "buddy25112") then
                                count = game:GetService("Players").buddy25112.leaderstats.Eggs.Value
                                username = game:GetService("Players").buddy25112.Name
                                
                            elseif string.find(instance.TextLabel.Text, "buddy25113") then
                                count = game:GetService("Players").buddy25113.leaderstats.Eggs.Value
                                username = game:GetService("Players").buddy25113.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt4") then
                                count = game:GetService("Players").BuddyHatchAlt4.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt4.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt1") then
                                if string.find(instance.TextLabel.Text, "BuddyHatchAlt11") then
                                    count = game:GetService("Players").BuddyHatchAlt11.leaderstats.Eggs.Value
                                    username = game:GetService("Players").BuddyHatchAlt11.Name
                                elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt10") then
                                    count = game:GetService("Players").BuddyHatchAlt10.leaderstats.Eggs.Value
                                    username = game:GetService("Players").BuddyHatchAlt10.Name
                                else
                                    count = game:GetService("Players").BuddyHatchAlt1.leaderstats.Eggs.Value
                                    username = game:GetService("Players").BuddyHatchAlt1.Name
                                end
                                
                            elseif string.find(instance.TextLabel.Text, "AJ_GamingYYTT") then
                                count = game:GetService("Players").AJ_GamingYYTT.leaderstats.Eggs.Value
                                username = game:GetService("Players").AJ_GamingYYTT.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt5") then
                                count = game:GetService("Players").BuddyHatchAlt5.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt5.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt6") then
                                count = game:GetService("Players").BuddyHatchAlt6.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt6.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt7") then
                                count = game:GetService("Players").BuddyHatchAlt7.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt7.Name

                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt8") then
                                count = game:GetService("Players").BuddyHatchAlt8.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt8.Name
                                
                            elseif string.find(instance.TextLabel.Text, "BuddyHatchAlt9") then
                                count = game:GetService("Players").BuddyHatchAlt9.leaderstats.Eggs.Value
                                username = game:GetService("Players").BuddyHatchAlt9.Name
                            end
                        
                        if username == "buddy25112" or username == "buddy25113" or username == "BuddyHatchAlt4" or username == "BuddyHatchAlt5" or username == "BuddyHatchAlt6" or username == "BuddyHatchAlt7" or username == "BuddyHatchAlt1" or username == "AJ_GamingYYTT" or username == "BuddyHatchAlt8" or username == "BuddyHatchAlt9" or username == "BuddyHatchAlt10" or username == "BuddyHatchAlt11" then
                            LoadHatchAmountSettings()

                            -- Get Pet Info
                            local PetChance
                            local PetImage
                            local petname
                            local hatchamountcounter
                            if string.find(instance.TextLabel.Text, "Colossal Tart") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Colossal Tart"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                    hatchamountcounter = _G.HatchAmount.colossaltart + 1
                                    _G.HatchAmount.colossaltart = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Colossal Tart"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                    hatchamountcounter = _G.HatchAmount.colossaltart + 1
                                    _G.HatchAmount.colossaltart = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Pastry Shard") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/400M"
                                    petname = "Shiny Pastry Shard"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.pastryshard + 1
                                    _G.HatchAmount.pastryshard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/4.00M"
                                    petname = "Pastry Shard"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.pastryshard + 1
                                    _G.HatchAmount.pastryshard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Angelic Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Angelic Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.angelicgummybear + 1
                                    _G.HatchAmount.angelicgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/100M"
                                    petname = "Angelic Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.angelicgummybear + 1
                                    _G.HatchAmount.angelicgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Evil Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Evil Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.evilgummybear + 1
                                    _G.HatchAmount.evilgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/100M"
                                    petname = "Evil Gummy Bear"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.evilgummybear + 1
                                    _G.HatchAmount.evilgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Royal Doggy") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Royal Doggy"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                                    hatchamountcounter = _G.HatchAmount.royaldoggy + 1
                                    _G.HatchAmount.royaldoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Royal Doggy"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                                    hatchamountcounter = _G.HatchAmount.royaldoggy + 1
                                    _G.HatchAmount.royaldoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Dementor") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/500M"
                                    petname = "Shiny Dementor"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                                    hatchamountcounter = _G.HatchAmount.dementor + 1
                                    _G.HatchAmount.dementor = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/5.00M"
                                    petname = "Dementor"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                                    hatchamountcounter = _G.HatchAmount.dementor + 1
                                    _G.HatchAmount.dementor = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Gryphon") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Gryphon"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                                    hatchamountcounter = _G.HatchAmount.gryphon + 1
                                    _G.HatchAmount.gryphon = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/100M"
                                    petname = "Gryphon"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                                    hatchamountcounter = _G.HatchAmount.gryphon + 1
                                    _G.HatchAmount.gryphon = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Giant Pearl") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/200M"
                                    petname = "Shiny Giant Pearl"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                                    hatchamountcounter = _G.HatchAmount.giantpearl + 1
                                    _G.HatchAmount.giantpearl = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/2.00M"
                                    petname = "Giant Pearl"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                                    hatchamountcounter = _G.HatchAmount.giantpearl + 1
                                    _G.HatchAmount.giantpearl = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Atlantic Titan") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/666M"
                                    petname = "Shiny Atlantic Titan"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                                    hatchamountcounter = _G.HatchAmount.atlantictitan + 1
                                    _G.HatchAmount.atlantictitan = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/6.66M"
                                    petname = "Atlantic Titan"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                                    hatchamountcounter = _G.HatchAmount.atlantictitan + 1
                                    _G.HatchAmount.atlantictitan = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Koi") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Koi"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                                    hatchamountcounter = _G.HatchAmount.koi + 1
                                    _G.HatchAmount.koi = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/100M"
                                    petname = "Koi"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                                    hatchamountcounter = _G.HatchAmount.koi + 1
                                    _G.HatchAmount.koi = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Giant Robot") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/250M"
                                    petname = "Shiny Giant Robot"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                                    hatchamountcounter = _G.HatchAmount.giantrobot + 1
                                    _G.HatchAmount.giantrobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/2.50M"
                                    petname = "Giant Robot"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                                    hatchamountcounter = _G.HatchAmount.giantrobot + 1
                                    _G.HatchAmount.giantrobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Virus CORE") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/250M"
                                    petname = "Shiny Virus CORE"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                                    hatchamountcounter = _G.HatchAmount.viruscore + 1
                                    _G.HatchAmount.viruscore = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/2.50M"
                                    petname = "Virus CORE"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                                    hatchamountcounter = _G.HatchAmount.viruscore + 1
                                    _G.HatchAmount.viruscore = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Bubblegum Pegasus") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Bubblegum Pegasus"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                    hatchamountcounter = _G.HatchAmount.bubblegumpegasus + 1
                                    _G.HatchAmount.bubblegumpegasus = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Bubblegum Pegasus"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                    hatchamountcounter = _G.HatchAmount.bubblegumpegasus + 1
                                    _G.HatchAmount.bubblegumpegasus = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Sky Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Sky Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.skychampion + 1
                                    _G.HatchAmount.skychampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Sky Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.skychampion + 1
                                    _G.HatchAmount.skychampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                                
                            elseif string.find(instance.TextLabel.Text, "Fire Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Fire Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.firechampion + 1
                                    _G.HatchAmount.firechampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Fire Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.firechampion + 1
                                    _G.HatchAmount.firechampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Earth Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Earth Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.earthchampion + 1
                                    _G.HatchAmount.earthchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Earth Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.earthchampion + 1
                                    _G.HatchAmount.earthchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Dark Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/2.00B"
                                    petname = "Shiny Dark Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.darkchampion + 1
                                    _G.HatchAmount.darkchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/20.0M"
                                    petname = "Dark Champion"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.darkchampion + 1
                                    _G.HatchAmount.darkchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "OwOlord") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/8.00B"
                                    petname = "Shiny OwOlord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                    hatchamountcounter = _G.HatchAmount.owolord + 1
                                    _G.HatchAmount.owolord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/80.0M"
                                    petname = "OwOlord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                    hatchamountcounter = _G.HatchAmount.owolord + 1
                                    _G.HatchAmount.owolord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Gumdrop King") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/400M"
                                    petname = "Shiny Gumdrop King"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                    hatchamountcounter = _G.HatchAmount.kinggumdrop + 1
                                    _G.HatchAmount.kinggumdrop = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/4.00M"
                                    petname = "Gumdrop King"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                    hatchamountcounter = _G.HatchAmount.kinggumdrop + 1
                                    _G.HatchAmount.kinggumdrop = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Gummy Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Gummy Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.gummydogcat + 1
                                    _G.HatchAmount.gummydogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Gummy Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.gummydogcat + 1
                                    _G.HatchAmount.gummydogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Giant Chocolate Chicken") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/5.00B"
                                    petname = "Shiny Giant Chocolate Chicken"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                    hatchamountcounter = _G.HatchAmount.giantchocolatechicken + 1
                                    _G.HatchAmount.giantchocolatechicken = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/50.0M"
                                    petname = "Giant Chocolate Chicken"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                    hatchamountcounter = _G.HatchAmount.giantchocolatechicken + 1
                                    _G.HatchAmount.giantchocolatechicken = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Doggy Giftbox") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/4.00B"
                                    petname = "Shiny Doggy Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343879319036015/Doggy_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.doggygiftbox + 1
                                    _G.HatchAmount.doggygiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/40.0M"
                                    petname = "Doggy Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343879319036015/Doggy_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.doggygiftbox + 1
                                    _G.HatchAmount.doggygiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Kitty Giftbox") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/4.00B"
                                    petname = "Shiny Kitty Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343879667175504/Kitty_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.kittygiftbox + 1
                                    _G.HatchAmount.kittygiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/40.0M"
                                    petname = "Kitty Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343879667175504/Kitty_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.kittygiftbox + 1
                                    _G.HatchAmount.kittygiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Luminous Giftbox") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/4.00B"
                                    petname = "Shiny Luminous Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880044642344/Luminous_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.luminousgiftbox + 1
                                    _G.HatchAmount.luminousgiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/40.0M"
                                    petname = "Luminous Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880044642344/Luminous_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.luminousgiftbox + 1
                                    _G.HatchAmount.luminousgiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Frost Defender Giftbox") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/4.00B"
                                    petname = "Shiny Frost Defender Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880459886652/Frost_Defender_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.frostdefendergiftbox + 1
                                    _G.HatchAmount.frostdefendergiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/40.0M"
                                    petname = "Frost Defender Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880459886652/Frost_Defender_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.frostdefendergiftbox + 1
                                    _G.HatchAmount.frostdefendergiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Loyal Guard Giftbox") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/4.00B"
                                    petname = "Shiny Loyal Guard Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880803831968/Loyal_Guard_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.loyalguardgiftbox + 1
                                    _G.HatchAmount.loyalguardgiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/40.0M"
                                    petname = "Loyal Guard Giftbox"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343880803831968/Loyal_Guard_Giftbox.png"
                                    hatchamountcounter = _G.HatchAmount.loyalguardgiftbox + 1
                                    _G.HatchAmount.loyalguardgiftbox = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Eternal Snowflake") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/10.0B"
                                    petname = "Shiny Eternal Snowflake"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343953096855644/Eternal_Snowflake.png"
                                    hatchamountcounter = _G.HatchAmount.eternalsnowflake + 1
                                    _G.HatchAmount.eternalsnowflake = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/100M"
                                    petname = "Eternal Snowflake"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343953096855644/Eternal_Snowflake.png"
                                    hatchamountcounter = _G.HatchAmount.eternalsnowflake + 1
                                    _G.HatchAmount.eternalsnowflake = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            
                            elseif string.find(instance.TextLabel.Text, "Pixel Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Pixel Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321191454220298/Pixel_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.pixeldogcat + 1
                                    _G.HatchAmount.pixeldogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Pixel Dogcat"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321191454220298/Pixel_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.pixeldogcat + 1
                                    _G.HatchAmount.pixeldogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Spectrum") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/666M"
                                    petname = "Shiny Spectrum"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321192582500352/Spectrum.png"
                                    hatchamountcounter = _G.HatchAmount.spectrum + 1
                                    _G.HatchAmount.spectrum = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/6.66M"
                                    petname = "Spectrum"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321192582500352/Spectrum.png"
                                    hatchamountcounter = _G.HatchAmount.spectrum + 1
                                    _G.HatchAmount.spectrum = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Pixel Trophy") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/8.00B"
                                    petname = "Shiny Pixel Trophy"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321191831720007/Pixel_Trophy.png"
                                    hatchamountcounter = _G.HatchAmount.pixeltrophy + 1
                                    _G.HatchAmount.pixeltrophy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/80.0M"
                                    petname = "Pixel Trophy"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1043321191831720007/Pixel_Trophy.png"
                                    hatchamountcounter = _G.HatchAmount.pixeltrophy + 1
                                    _G.HatchAmount.pixeltrophy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    
                            elseif string.find(instance.TextLabel.Text, "Velvet Wolflord") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/444M"
                                    petname = "Shiny Velvet Wolflord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343892967305286/Velvet_Wolflord.png"
                                    hatchamountcounter = _G.HatchAmount.velvetwolflord + 1
                                    _G.HatchAmount.velvetwolflord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/4.44M"
                                    petname = "Velvet Wolflord"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343892967305286/Velvet_Wolflord.png"
                                    hatchamountcounter = _G.HatchAmount.velvetwolflord + 1
                                    _G.HatchAmount.velvetwolflord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                
                            elseif string.find(instance.TextLabel.Text, "Santa's Giftbag") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetChance = "1/100M"
                                    petname = "Shiny Santa's Giftbag"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343890803044363/Santas_Giftbag.png"
                                    hatchamountcounter = _G.HatchAmount.santasgiftbag + 1
                                    _G.HatchAmount.santasgiftbag = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetChance = "1/1.00M"
                                    petname = "Santa's Giftbag"
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1048343890803044363/Santas_Giftbag.png"
                                    hatchamountcounter = _G.HatchAmount.santasgiftbag + 1
                                    _G.HatchAmount.santasgiftbag = hatchamountcounter
                                    SaveHatchAmountSettings()
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
                                NewColor = "ffa600"
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
                                    {
                                        ["name"] = "Hatch Amount:",
                                        ["value"] = hatchamountcounter,
                                        ["inline"] = true
                                    }
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
