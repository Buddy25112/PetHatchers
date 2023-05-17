-- Lucky hatchers updated
_G.HatchAmount = {
    SecretCount = 0;
    colossaltart = 0;
    pastryshard = 0;
    evilgummybear = 0;
    angelicgummybear = 0;
    bubblegumpegasus = 0;
    earthchampion = 0;
    skychampion = 0;
    firechampion = 0;
    darkchampion = 0;
    owolord = 0;
    gummydogcat = 0;
    kinggumdrop = 0;
    giantchocolatechicken = 0;
    royaldoggy = 0;
    dementor = 0;
    gryphon = 0;
    giantpearl = 0;
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
    morningstar = 0;
    krampus = 0;
    OdeToJoy = 0;
    SantaHat = 0;
    PeppermintShock = 0;
    DogFestival = 0;
    SilentNight = 0;
    KingBell = 0;
    FlamingFirecracker = 0;
    NewYearGem = 0;
    NewYearChampion = 0;
    PrismaticGuardian = 0;
    PastelBunny = 0;
    KingMush = 0;
    Aquatica = 0;
    VerdantWyvern = 0;
    Blastferno = 0;
    CyberVandal = 0;
    CyborgDogcat = 0;
    OmegaPrototype = 0;
    ValentinesSoul = 0;
    LoveLetter = 0;
    SoulKeeper = 0;
    RainbowDogcat = 0;
    Wishkeeper = 0;
    ChromaShard = 0;
    OmegaShock = 0;
    Prismidium = 0;
    LuckyMedallion = 0;
    PotODoggy = 0;
    DominoMagician = 0;
    EnchantedBeast = 0;
    MythicalClover = 0;
    PotOGold = 0;
    Jackpot = 0;
    DogLucky = 0;
    Serendipity = 0;
    Robot20 = 0;
    DreamCatcher = 0;
    LavenderRaven = 0;
    LuckyPyramidium = 0;
    EternalCarrot = 0;
    HolyEgg = 0;
    EasterBasket = 0;
    GodlyGem = 0;
    DemonicStickbug = 0;
    BlossomDogcat = 0;
    SpringShard = 0;
    IllustriousDefender = 0;
    EternalCucumber = 0;
    Resurrection = 0;
    VoidChampion = 0;
    AquaChampion = 0;
    FlameChampion = 0;
    WindChampion = 0;
    LightChampion = 0;
    KingDoggy = 0;
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
                    if string.find(instance.TextLabel.Text,"Secret") or string.find(instance.TextLabel.Text,"ANCIENT") then
                        
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



                        -- Get Pet Name & Pet Chance
                        local message = instance.TextLabel.Text

                        function FormatForPetName(FFPN)
                            local C = FFPN:gsub("%[Server]: ", ""):gsub(username, ""):gsub(" just hatched a ", ""):gsub(" just hatched an ", ""):gsub("Legendary ", ""):gsub("Secret ", ""):gsub("ANCIENT ", ""):gsub(" %(1 / ", ""):gsub("K%)!", ""):gsub("M%)!", ""):gsub("B%)!", ""):gsub("%.", "")
                                return C
                            
                        end
                        function GetRidOfNumbers(GRON)
                            local C1 = GRON:gsub("%d+", "")
                            return C1
                        end
                            
                        local FormatPetName = FormatForPetName(message)
                        local petname = GetRidOfNumbers(FormatPetName)
                            
                        function FormatForPetChance(FFPC)
                            local C = FFPC:gsub("%[Server]: ", ""):gsub(username, ""):gsub(" just hatched a ", ""):gsub(" just hatched an ", ""):gsub("Legendary ", ""):gsub("Secret ", ""):gsub("ANCIENT ", ""):gsub(petname, ""):gsub(" %(", ""):gsub("%)!", ""):gsub(" ", "")
                            return C
                        end
                        local PetChance = FormatForPetChance(message)

                        if username == "buddy25112" or username == "buddy25113" or username == "BuddyHatchAlt4" or username == "BuddyHatchAlt5" or username == "BuddyHatchAlt6" or username == "BuddyHatchAlt7" or username == "BuddyHatchAlt1" or username == "AJ_GamingYYTT" or username == "BuddyHatchAlt8" or username == "BuddyHatchAlt9" or username == "BuddyHatchAlt10" or username == "BuddyHatchAlt11" then
                            LoadHatchAmountSettings()
                            
                            -- Get Pet Info
                            local PetImage
                            local hatchamountcounter
                            if string.find(instance.TextLabel.Text, "Colossal Tart") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                    hatchamountcounter = _G.HatchAmount.colossaltart + 1
                                    _G.HatchAmount.colossaltart = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005423164473344/Colossal_Tart.png"
                                    hatchamountcounter = _G.HatchAmount.colossaltart + 1
                                    _G.HatchAmount.colossaltart = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Pastry Shard") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.pastryshard + 1
                                    _G.HatchAmount.pastryshard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023007930099957790/Pastry_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.pastryshard + 1
                                    _G.HatchAmount.pastryshard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Angelic Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.angelicgummybear + 1
                                    _G.HatchAmount.angelicgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422283661422/Angelic_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.angelicgummybear + 1
                                    _G.HatchAmount.angelicgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Evil Gummy Bear") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.evilgummybear + 1
                                    _G.HatchAmount.evilgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1023005422778593301/Evil_Gummy_Bear.png"
                                    hatchamountcounter = _G.HatchAmount.evilgummybear + 1
                                    _G.HatchAmount.evilgummybear = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Royal Doggy") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                                    hatchamountcounter = _G.HatchAmount.royaldoggy + 1
                                    _G.HatchAmount.royaldoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783535005925426/Royal_Doggy.png"
                                    hatchamountcounter = _G.HatchAmount.royaldoggy + 1
                                    _G.HatchAmount.royaldoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Dementor") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                                    hatchamountcounter = _G.HatchAmount.dementor + 1
                                    _G.HatchAmount.dementor = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534469070868/Dementor.png"
                                    hatchamountcounter = _G.HatchAmount.dementor + 1
                                    _G.HatchAmount.dementor = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Gryphon") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                                    hatchamountcounter = _G.HatchAmount.gryphon + 1
                                    _G.HatchAmount.gryphon = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1007783534104150126/Gryphon.png"
                                    hatchamountcounter = _G.HatchAmount.gryphon + 1
                                    _G.HatchAmount.gryphon = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Giant Pearl") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                                    hatchamountcounter = _G.HatchAmount.giantpearl + 1
                                    _G.HatchAmount.giantpearl = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310660246212618/Giant_Pearl.png"
                                    hatchamountcounter = _G.HatchAmount.giantpearl + 1
                                    _G.HatchAmount.giantpearl = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Atlantic Titan") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                                    hatchamountcounter = _G.HatchAmount.atlantictitan + 1
                                    _G.HatchAmount.atlantictitan = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659554160721/Atlantic_Titan.png"
                                    hatchamountcounter = _G.HatchAmount.atlantictitan + 1
                                    _G.HatchAmount.atlantictitan = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Koi") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                                    hatchamountcounter = _G.HatchAmount.koi + 1
                                    _G.HatchAmount.koi = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1010310659919061122/Koi.png"
                                    hatchamountcounter = _G.HatchAmount.koi + 1
                                    _G.HatchAmount.koi = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Giant Robot") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                                    hatchamountcounter = _G.HatchAmount.giantrobot + 1
                                    _G.HatchAmount.giantrobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/984971628679135302/Giant_Robot.png"
                                    hatchamountcounter = _G.HatchAmount.giantrobot + 1
                                    _G.HatchAmount.giantrobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Virus CORE") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                                    hatchamountcounter = _G.HatchAmount.viruscore + 1
                                    _G.HatchAmount.viruscore = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/987505297251782696/Virus_CORE.png"
                                    hatchamountcounter = _G.HatchAmount.viruscore + 1
                                    _G.HatchAmount.viruscore = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Bubblegum Pegasus") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                    hatchamountcounter = _G.HatchAmount.bubblegumpegasus + 1
                                    _G.HatchAmount.bubblegumpegasus = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963017244722/Bubblegum_Pegasus.png"
                                    hatchamountcounter = _G.HatchAmount.bubblegumpegasus + 1
                                    _G.HatchAmount.bubblegumpegasus = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Sky Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.skychampion + 1
                                    _G.HatchAmount.skychampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959208816660/Sky_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.skychampion + 1
                                    _G.HatchAmount.skychampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                                
                            elseif string.find(instance.TextLabel.Text, "Fire Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.firechampion + 1
                                    _G.HatchAmount.firechampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322958709706792/Fire_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.firechampion + 1
                                    _G.HatchAmount.firechampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Earth Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.earthchampion + 1
                                    _G.HatchAmount.earthchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963663179858/Earth_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.earthchampion + 1
                                    _G.HatchAmount.earthchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Dark Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.darkchampion + 1
                                    _G.HatchAmount.darkchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322963365367888/Dark_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.darkchampion + 1
                                    _G.HatchAmount.darkchampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "OwOlord") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                    hatchamountcounter = _G.HatchAmount.owolord + 1
                                    _G.HatchAmount.owolord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1018322959892492298/OwOlord.png"
                                    hatchamountcounter = _G.HatchAmount.owolord + 1
                                    _G.HatchAmount.owolord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Gumdrop King") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                    hatchamountcounter = _G.HatchAmount.kinggumdrop + 1
                                    _G.HatchAmount.kinggumdrop = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824668539723796/Gumdrop_King.png"
                                    hatchamountcounter = _G.HatchAmount.kinggumdrop + 1
                                    _G.HatchAmount.kinggumdrop = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Gummy Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.gummydogcat + 1
                                    _G.HatchAmount.gummydogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824659236749382/Gummy_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.gummydogcat + 1
                                    _G.HatchAmount.gummydogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Giant Chocolate Chicken") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                    hatchamountcounter = _G.HatchAmount.giantchocolatechicken + 1
                                    _G.HatchAmount.giantchocolatechicken = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1020824634049970257/Giant_Chocolate_Chicken.png"
                                    hatchamountcounter = _G.HatchAmount.giantchocolatechicken + 1
                                    _G.HatchAmount.giantchocolatechicken = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end                      
                            elseif string.find(instance.TextLabel.Text, "Aquatica") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066260787976478760/Screenshot_20230121_124638.png"
                                    hatchamountcounter = _G.HatchAmount.Aquatica + 1
                                    _G.HatchAmount.Aquatica = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066255182775726150/Screenshot_20230121_124533-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.Aquatica + 1
                                    _G.HatchAmount.Aquatica = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Verdant Wyvern") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066268795829751858/Screenshot_20230121_124820.png"
                                    hatchamountcounter = _G.HatchAmount.VerdantWyvern + 1
                                    _G.HatchAmount.VerdantWyvern = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066264981936537610/Screenshot_20230121_124737.png"
                                    hatchamountcounter = _G.HatchAmount.VerdantWyvern + 1
                                    _G.HatchAmount.VerdantWyvern = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Blastferno") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066280567466905660/Screenshot_20230121_125002.png"
                                    hatchamountcounter = _G.HatchAmount.Blastferno + 1
                                    _G.HatchAmount.Blastferno = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1066275566833115136/Screenshot_20230121_124914.png"
                                    hatchamountcounter = _G.HatchAmount.Blastferno + 1
                                    _G.HatchAmount.Blastferno = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Rainbow Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078909373952303125/Rainbow_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.RainbowDogcat + 1
                                    _G.HatchAmount.RainbowDogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078909373952303125/Rainbow_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.RainbowDogcat + 1
                                    _G.HatchAmount.RainbowDogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Wishkeeper") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078780839124541450/Shiny_Wishkeeper.png"
                                    hatchamountcounter = _G.HatchAmount.Wishkeeper + 1
                                    _G.HatchAmount.Wishkeeper = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078780839355220088/Wishkeeper.png"
                                    hatchamountcounter = _G.HatchAmount.Wishkeeper + 1
                                    _G.HatchAmount.Wishkeeper = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Chroma Shard") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078780838646382613/Shiny_Chroma_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.ChromaShard + 1
                                    _G.HatchAmount.ChromaShard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1078780838864498808/Chroma_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.ChromaShard + 1
                                    _G.HatchAmount.ChromaShard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Omega Shock") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822806384050313/1081307720747061348/Shiny_Omega_Rainbow_Shock.png"
                                    hatchamountcounter = _G.HatchAmount.OmegaShock + 1
                                    _G.HatchAmount.OmegaShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822806384050313/1081307721015509002/Omega_Rainbow_Shock.png"
                                    hatchamountcounter = _G.HatchAmount.OmegaShock + 1
                                    _G.HatchAmount.OmegaShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            
                            elseif string.find(instance.TextLabel.Text, "Prismidium") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822806384050313/1081307720294088905/Shiny_Prismidium.png"
                                    hatchamountcounter = _G.HatchAmount.Prismidium + 1
                                    _G.HatchAmount.Prismidium = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822806384050313/1081307720533160057/Prismidium.png"
                                    hatchamountcounter = _G.HatchAmount.Prismidium + 1
                                    _G.HatchAmount.Prismidium = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Eternal Carrot") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609824826990612/Shiny_Easter_Carrot.png"
                                    hatchamountcounter = _G.HatchAmount.EternalCarrot + 1
                                    _G.HatchAmount.EternalCarrot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609824390774904/Easter_Carrot.png"
                                    hatchamountcounter = _G.HatchAmount.EternalCarrot + 1
                                    _G.HatchAmount.EternalCarrot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Holy Egg") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609880888066130/Shiny_Holy_Egg.png"
                                    hatchamountcounter = _G.HatchAmount.HolyEgg + 1
                                    _G.HatchAmount.HolyEgg = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609824608890881/Holy_Egg.png"
                                    hatchamountcounter = _G.HatchAmount.HolyEgg + 1
                                    _G.HatchAmount.HolyEgg = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Easter Basket") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609880334418020/Shiny_Easter_Basket.png"
                                    hatchamountcounter = _G.HatchAmount.EasterBasket + 1
                                    _G.HatchAmount.EasterBasket = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609880632205332/Easter_Basket_MS2.png"
                                    hatchamountcounter = _G.HatchAmount.EasterBasket + 1
                                    _G.HatchAmount.EasterBasket = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end

                            elseif string.find(instance.TextLabel.Text, "Godly Gem") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609879793336390/Shiny_Godly_Gem.png"
                                    hatchamountcounter = _G.HatchAmount.GodlyGem + 1
                                    _G.HatchAmount.GodlyGem = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1096609880049197096/Godly_Gem.png"
                                    hatchamountcounter = _G.HatchAmount.GodlyGem + 1
                                    _G.HatchAmount.GodlyGem = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Demonic Stickbug") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099097742938222683/Shiny_Demonic_Stickbug.png"
                                    hatchamountcounter = _G.HatchAmount.DemonicStickbug + 1
                                    _G.HatchAmount.DemonicStickbug = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096772976050216/Demonic_Stickbug.png"
                                    hatchamountcounter = _G.HatchAmount.DemonicStickbug + 1
                                    _G.HatchAmount.DemonicStickbug = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Blossom Dogcat") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096778013421789/Shiny_Blossom_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.BlossomDogcat + 1
                                    _G.HatchAmount.BlossomDogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096771835215943/Blossom_Dogcat.png"
                                    hatchamountcounter = _G.HatchAmount.BlossomDogcat + 1
                                    _G.HatchAmount.BlossomDogcat = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Spring Shard") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096773613584384/Shiny_Spring_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.SpringShard + 1
                                    _G.HatchAmount.SpringShard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096773261279322/Spring_Shard.png"
                                    hatchamountcounter = _G.HatchAmount.SpringShard + 1
                                    _G.HatchAmount.SpringShard = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Illustrious Defender") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096778650959892/Shiny_Illustrious_Defender.png"
                                    hatchamountcounter = _G.HatchAmount.IllustriousDefender + 1
                                    _G.HatchAmount.IllustriousDefender = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1099096778302824499/Illustrious_Defender.png"
                                    hatchamountcounter = _G.HatchAmount.IllustriousDefender + 1
                                    _G.HatchAmount.IllustriousDefender = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Eternal Cucumber") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1101586130341736559/Shiny_Eternal_Cucumber.png"
                                    hatchamountcounter = _G.HatchAmount.EternalCucumber + 1
                                    _G.HatchAmount.EternalCucumber = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/749822808288395354/1101586130085871616/Eternal_Cucumber.png"
                                    hatchamountcounter = _G.HatchAmount.EternalCucumber + 1
                                    _G.HatchAmount.EternalCucumber = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Void Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1105707665449037855/Void_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.VoidChampion + 1
                                    _G.HatchAmount.VoidChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1105707665449037855/Void_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.VoidChampion + 1
                                    _G.HatchAmount.VoidChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Light Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1105707586831003658/Light_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.LightChampion + 1
                                    _G.HatchAmount.LightChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1105707586831003658/Light_Champion.png"
                                    hatchamountcounter = _G.HatchAmount.LightChampion + 1
                                    _G.HatchAmount.LightChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Aqua Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.AquaChampion + 1
                                    _G.HatchAmount.AquaChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.AquaChampion + 1
                                    _G.HatchAmount.AquaChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Flame Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.FlameChampion + 1
                                    _G.HatchAmount.FlameChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.FlameChampion + 1
                                    _G.HatchAmount.FlameChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "Wind Champion") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.WindChampion + 1
                                    _G.HatchAmount.WindChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.WindChampion + 1
                                    _G.HatchAmount.WindChampion = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            elseif string.find(instance.TextLabel.Text, "King Doggy") then
                                if string.find(instance.TextLabel.Text, "Shiny") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684569973870682/No_Pet_Image_Uploaded_ancient-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.KingDoggy + 1
                                    _G.HatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                else
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684569973870682/No_Pet_Image_Uploaded_ancient-removebg-preview.png"
                                    hatchamountcounter = _G.HatchAmount.KingDoggy + 1
                                    _G.HatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                end
                            else
                                hatchamountcounter = "N/A"
                                if string.find(instance.TextLabel.Text,"Secret") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684570330378341/No_Pet_Image_Uploaded_Secret-removebg-preview.png"
                                elseif string.find(instance.TextLabel.Text,"ANCIENT") then
                                    PetImage = "https://media.discordapp.net/attachments/750156768834879488/1089684569973870682/No_Pet_Image_Uploaded_ancient-removebg-preview.png"
                                else
                                    PetImage = ""
                                end
                            end

                            if string.find(instance.TextLabel.Text,"Robot 2.0") then
                                if string.find(instance.TextLabel.Text,"Shiny") then
                                    petname = "Shiny Robot 2.0"
                                    PetChance = "1/8.00B"
                                else
                                    petname = "Robot 2.0"
                                    PetChance = "1/80.0M"
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
                            else
                                SecretPing = "An **UNKNOWN PET** has been hatched!"
                                TitleFinder = "An UNKNOWN PET was just hatched!"
                                FooterFinder = "UNKNOWN PET"
                                NewColor = "000000"
                                SecretHatchCounter = "N/A"
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
                                request = http_request or request or HttpPost or syn.request
                                request({Url = _G.Webhooksss, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(Info)})
                                end
                            end
                        end
            end
        end
    end
end)
