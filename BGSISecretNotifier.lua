-- Lucky hatchers updated
_G.SecretHatchAmount = {
    SecretCount = 0;
    Overlord = 0;
    KingDoggy = 0;
    Wolflord = 0;
    MechRobot = 0;
    LordShock = 0;
    QueenKitty = 0;
    TheProphet = 0;
    D0GGY1337 = 0;
    HyperwaveKitty = 0;
    RoyalGuardian = 0;
    
}

--Load Settings
local TrackListName = "AJ's_Hatch_Amount_Count.txt"

function SaveHatchAmountSettings()
    local json
    local HttpService = game:GetService("HttpService")
    if (writefile) then
        json = HttpService:JSONEncode(_G.SecretHatchAmount)
        writefile(TrackListName, json)
    end
end

function LoadHatchAmountSettings()
    local HttpService = game:GetService("HttpService")
    if (readfile and isfile and isfile(TrackListName)) then
        _G.SecretHatchAmount = HttpService:JSONDecode(readfile(TrackListName))
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

local SystemMessageRemote = game.ReplicatedStorage.Shared.Framework.Utilities.SendSystemMessage.RemoteEvent
local Pets = require(game.ReplicatedStorage.Shared.Data.Pets)
SystemMessageRemote.OnClientEvent:Connect(function(Message, Which)
        if Which ~= "GlobalHatch" then
            local results = {}
            for match in Message:gmatch(">([^<>]+)<") do
                table.insert(results, match)
            end
            
            local username = results[1]
            local pet = results[3]
            local petName = pet:match("^(.-)%s*%(")
            local IsShiny = false
            local IsMythic = false
            if petName:find("Shiny ") then
                IsShiny = true
                petName = petName:gsub("Shiny ", "")
            end
            if petName:find("Mythic ") then
                IsMythic = true
                petName = petName:gsub("Mythic ", "")
            end
            local Rarity = Pets[petName].Rarity
            local PetData = {
                Name = petName,
                Shiny = IsShiny,
                Mythic = IsMythic,
            }
            if PetData.Name == "The Overlord" or PetData.Name == "King Doggy" or PetData.Name == "Mech Robot" or PetData.Name == "Lord Shock" or PetData.Name == "The Prophet" or PetData.Name == "Queen Kitty" or PetData.Name == "D0GGY1337" or PetData.Name == "Hyperwave Kitty" or PetData.Name == "Royal Guardian" then
                        -- Get Hatcher Info
                        local count
                        if username == "buddy25112" then
                                count = game:GetService("Players").buddy25112.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "buddy25113" then
                                count = game:GetService("Players").buddy25113.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt4" then
                                count = game:GetService("Players").BuddyHatchAlt4.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt1" then
                                count = game:GetService("Players").BuddyHatchAlt1.leaderstats["\240\159\165\154 Hatches"].Value
                     
                            elseif username == "AJ_GamingYYTT" then
                                count = game:GetService("Players").AJ_GamingYYTT.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt5" then
                                count = game:GetService("Players").BuddyHatchAlt5.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt6" then
                                count = game:GetService("Players").BuddyHatchAlt6.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt7" then
                                count = game:GetService("Players").BuddyHatchAlt7.leaderstats["\240\159\165\154 Hatches"].Value

                            elseif username == "BuddyHatchAlt8" then
                                count = game:GetService("Players").BuddyHatchAlt8.leaderstats["\240\159\165\154 Hatches"].Value
                                
                            elseif username == "BuddyHatchAlt9" then
                                count = game:GetService("Players").BuddyHatchAlt9.leaderstats["\240\159\165\154 Hatches"].Value
                            end
                        
                        if username == "buddy25112" or username == "buddy25113" or username == "BuddyHatchAlt4" or username == "BuddyHatchAlt5" or username == "BuddyHatchAlt6" or username == "BuddyHatchAlt7" or username == "BuddyHatchAlt1" or username == "AJ_GamingYYTT" or username == "BuddyHatchAlt8" or username == "BuddyHatchAlt9" or username == "BuddyHatchAlt10" or username == "BuddyHatchAlt11" then
                            LoadHatchAmountSettings()  
                            -- Get Pet Info
                            local petname
                            if PetData.Shiny == true and PetData.Mythic == false then
                                petname = "Shiny " .. PetData.Name
                            elseif PetData.Shiny == false and PetData.Mythic == true then
                                petname = "Mythic " .. PetData.Name
                            elseif PetData.Shiny == true and PetData.Mythic == true then
                                petname = "Shiny Mythic " .. PetData.Name
                            else 
                                petname = PetData.Name
                            end

                            local PetImage
                            local ManualPetChance
                            local hatchamountcounter
                            if PetData.Name == "The Overlord" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373147619412545647/latest.png?ex=68295ae0&is=68280960&hm=e2c23a708d80a8edb99d2030291bf986cb388c54bb9376ff15ddef8076a8b528&"
                                    hatchamountcounter = _G.SecretHatchAmount.Overlord + 1
                                    _G.SecretHatchAmount.Overlord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/2.00B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373147649330516058/latest.png?ex=68295ae7&is=68280967&hm=f064e64f8b8f88ce60739652d683bb442900db530ff1b00cfb675cb561278d45&"
                                    hatchamountcounter = _G.SecretHatchAmount.Overlord + 1
                                    _G.SecretHatchAmount.Overlord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/5.00B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373147671560192010/latest.png?ex=68295aec&is=6828096c&hm=929fb5d1d486c3a01bfeca738b66c9b6f405341060da68044aff847f74d5b3ec&"
                                    hatchamountcounter = _G.SecretHatchAmount.Overlord + 1
                                    _G.SecretHatchAmount.Overlord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/200B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373147593663578194/latest.png?ex=68295ada&is=6828095a&hm=90138a5f70fa5c3cde1621bf20b0fc3127af8bad2acfee0ae526a7a8f155480f&"
                                    hatchamountcounter = _G.SecretHatchAmount.Overlord + 1
                                    _G.SecretHatchAmount.Overlord = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/50.0M"
                                end
                            elseif PetData.Name == "King Doggy" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373150068865241098/latest.png?ex=68295d28&is=68280ba8&hm=c9a93b0140c7eab1e17a472cd8d6d4d8bd56f27e0a3710b46a7656c8b294d55f&"
                                    hatchamountcounter = _G.SecretHatchAmount.KingDoggy + 1
                                    _G.SecretHatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/4.00B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373150099789709422/latest.png?ex=68295d2f&is=68280baf&hm=acb1407f0c6ca8d9c3f50ce49d01e70f118f0f6dcca7b4a59b50fb8a47e2df56&"
                                    hatchamountcounter = _G.SecretHatchAmount.KingDoggy + 1
                                    _G.SecretHatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/10.0B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373150129166487686/latest.png?ex=68295d36&is=68280bb6&hm=82996c809067b2fb5d5f863949fe68866d1689a54eeab332201abd4ad4d5448e&"
                                    hatchamountcounter = _G.SecretHatchAmount.KingDoggy + 1
                                    _G.SecretHatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/400B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373150047562235974/latest.png?ex=68295d23&is=68280ba3&hm=f0ffa11873006eb0977cce034448620ee7ef82521ea4ea0404629c972922eb7d&"
                                    hatchamountcounter = _G.SecretHatchAmount.KingDoggy + 1
                                    _G.SecretHatchAmount.KingDoggy = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/100M"
                                end
                            elseif PetData.Name == "Mech Robot" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373151609600737300/latest.png?ex=68295e97&is=68280d17&hm=2af799380c110664353978333028dc3e35658131c89161ef9b8eb734fc8590ac&"
                                    hatchamountcounter = _G.SecretHatchAmount.MechRobot + 1
                                    _G.SecretHatchAmount.MechRobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/2.66B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373151635005640724/latest.png?ex=68295e9d&is=68280d1d&hm=4cfa4feef6111bba5648f025ef3147a32131434399074e1779ac92d42a55977c&"
                                    hatchamountcounter = _G.SecretHatchAmount.MechRobot + 1
                                    _G.SecretHatchAmount.MechRobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/6.66B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373151663401205892/latest.png?ex=68295ea4&is=68280d24&hm=7b34398bdeebf0a3f6136fe50fe3a334a32553e92633ae2337bca82955e4a747&"
                                    hatchamountcounter = _G.SecretHatchAmount.MechRobot + 1
                                    _G.SecretHatchAmount.MechRobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/266B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373151582975299664/latest.png?ex=68295e91&is=68280d11&hm=e1bf201e9555a4b6ba75e0f1ef646a3b05361a509646e01d0e60fed5975a4172&"
                                    hatchamountcounter = _G.SecretHatchAmount.MechRobot + 1
                                    _G.SecretHatchAmount.MechRobot = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/66.6M"
                                end
                            elseif PetData.Name == "Lord Shock" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154455771549756/latest.png?ex=6829613e&is=68280fbe&hm=dd433c5bbbcfce5f611cd13a9cbdb1655569f7aad0afa80e8da495195a828415&"
                                    hatchamountcounter = _G.SecretHatchAmount.LordShock + 1
                                    _G.SecretHatchAmount.LordShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/20.0B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154477778931722/latest.png?ex=68296143&is=68280fc3&hm=4b77115a329c328f3d518d2530ba1bf4c3b1a62a5d1dedae3a5351f2e8ede8d5&"
                                    hatchamountcounter = _G.SecretHatchAmount.LordShock + 1
                                    _G.SecretHatchAmount.LordShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/50.0B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154502013747260/latest.png?ex=68296149&is=68280fc9&hm=97179d8ea95475309231ef712e8242bbed9e4fc8a640dba9553c78fd49f84583&"
                                    hatchamountcounter = _G.SecretHatchAmount.LordShock + 1
                                    _G.SecretHatchAmount.LordShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/2.00T"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154433680277524/latest.png?ex=68296138&is=68280fb8&hm=fe7055802eff02abfd0ecbc2a519c354bbb03a82d301ff93e54f9e90c7f3a61f&"
                                    hatchamountcounter = _G.SecretHatchAmount.LordShock + 1
                                    _G.SecretHatchAmount.LordShock = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/500M"
                                end
                            elseif PetData.Name == "The Prophet" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154994513252495/latest.png?ex=682961be&is=6828103e&hm=52475ffadc926a0064983d2e61f81f00d275aa6c7c42c208679b25739eb7d8a8&"
                                    hatchamountcounter = _G.SecretHatchAmount.TheProphet + 1
                                    _G.SecretHatchAmount.TheProphet = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/10.0B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373155017124741221/latest.png?ex=682961c4&is=68281044&hm=8ea9fbd95da0c5f8ca608a6c02071630af1f17d96c81b52f93113709a856d2c7&"
                                    hatchamountcounter = _G.SecretHatchAmount.TheProphet + 1
                                    _G.SecretHatchAmount.TheProphet = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/25.0B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373155043531821117/latest.png?ex=682961ca&is=6828104a&hm=89c6a97a698ac195dc1f4a5912efdbdc36a78e9b0226c0aab5c8cc3e2580d169&"
                                    hatchamountcounter = _G.SecretHatchAmount.TheProphet + 1
                                    _G.SecretHatchAmount.TheProphet = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/1.00T"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373154970551058492/latest.png?ex=682961b8&is=68281038&hm=b0502ec16ad1e50dd3c337df1d5e85a4d46655f06fb665338a9a0d6579d63043&"
                                    hatchamountcounter = _G.SecretHatchAmount.TheProphet + 1
                                    _G.SecretHatchAmount.TheProphet = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/250M"
                                end
                            elseif PetData.Name == "Queen Kitty" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156305006755990/latest.png?ex=682962f7&is=68281177&hm=e06e34b4e82c4947a6c42738cc39fdeafa50cd7cfcbb4fd9480e4dc98c7883e2&"
                                    hatchamountcounter = _G.SecretHatchAmount.QueenKitty + 1
                                    _G.SecretHatchAmount.QueenKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/3.20B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156325562912768/latest.png?ex=682962fc&is=6828117c&hm=0547d351010f7ad6f9cb427db4929ca08b449c46714faddd7342c596dd3669f3&"
                                    hatchamountcounter = _G.SecretHatchAmount.QueenKitty + 1
                                    _G.SecretHatchAmount.QueenKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/8.00B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156345536053330/latest.png?ex=68296300&is=68281180&hm=53e64dcc41e36c4e1205c5dacd6775ad3cb4b6b1301adb523034cfe979a5e6d7&"
                                    hatchamountcounter = _G.SecretHatchAmount.QueenKitty + 1
                                    _G.SecretHatchAmount.QueenKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/320B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156281246027847/latest.png?ex=682962f1&is=68281171&hm=d6edd2f973d2e85073110be8c24f0210af0ef8c52afa39ad9335fe60ae35d0ed&"
                                    hatchamountcounter = _G.SecretHatchAmount.QueenKitty + 1
                                    _G.SecretHatchAmount.QueenKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/80.0M"
                                end
                            elseif PetData.Name == "D0GGY1337" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156992650051715/latest.png?ex=6829639b&is=6828121b&hm=07d2111093e15f3686659add9c36cab6ced3163c194e8392002f6e6be46fca8c&"
                                    hatchamountcounter = _G.SecretHatchAmount.D0GGY1337 + 1
                                    _G.SecretHatchAmount.D0GGY1337 = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/2.00B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373157011595722854/latest.png?ex=6829639f&is=6828121f&hm=2d863e8b1cbf3a4fd128b82a54a0e16d7322a4152bb7105a8537ec5bfc69fc35&"
                                    hatchamountcounter = _G.SecretHatchAmount.D0GGY1337 + 1
                                    _G.SecretHatchAmount.D0GGY1337 = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/5.00B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373157032148074516/latest.png?ex=682963a4&is=68281224&hm=6eea0076ae78376883dff2a7efd1d0306882550a8039b15e8518db53c51ce231&"
                                    hatchamountcounter = _G.SecretHatchAmount.D0GGY1337 + 1
                                    _G.SecretHatchAmount.D0GGY1337 = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/200B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373156971393581157/latest.png?ex=68296396&is=68281216&hm=0e21ba4cf4131e1f474cd1d8bc95e041ba2516dc524215c1a24268e51b00399f&"
                                    hatchamountcounter = _G.SecretHatchAmount.D0GGY1337 + 1
                                    _G.SecretHatchAmount.D0GGY1337 = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/50.0M"
                                end
                            elseif PetData.Name == "Hyperwave Kitty" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373433121260961814/latest.png?ex=682a64c5&is=68291345&hm=a6266e4dcfbee3e829bc1c87d59f3f84be0cf2c4d4743a28d6de2f8a1e4b10d6&"
                                    hatchamountcounter = _G.SecretHatchAmount.HyperwaveKitty + 1
                                    _G.SecretHatchAmount.HyperwaveKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/5.00B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373433145856229586/latest.png?ex=682a64cb&is=6829134b&hm=5f955c511523405d0b501669e3ac1903d80f3bf8a7f84a87c393dbf76f74a4c9&"
                                    hatchamountcounter = _G.SecretHatchAmount.HyperwaveKitty + 1
                                    _G.SecretHatchAmount.HyperwaveKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/12.50B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373433166915829831/latest.png?ex=682a64d0&is=68291350&hm=a6848536f9dacd9dd5fc60ee9e2b99f1c0a3cd01bf822ebdf8cf6e42dfe13af9&"
                                    hatchamountcounter = _G.SecretHatchAmount.HyperwaveKitty + 1
                                    _G.SecretHatchAmount.HyperwaveKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/500B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373433096241676451/latest.png?ex=682a64bf&is=6829133f&hm=2f8600dd5e8556d716cff9af459761f6903dfc955ba063f50818bb903edc8292&"
                                    hatchamountcounter = _G.SecretHatchAmount.HyperwaveKitty + 1
                                    _G.SecretHatchAmount.HyperwaveKitty = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/125M"
                                end
                            elseif PetData.Name == "Royal Guardian" then
                                if PetData.Shiny == true and PetData.Mythic == false then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373473775642738788/latest.png?ex=682a8aa2&is=68293922&hm=7367ee5f72884bf6d940bc52f545f0952f6cbacae76c46ecc8be4b22bfaf1b8e&"
                                    hatchamountcounter = _G.SecretHatchAmount.RoyalGuardian + 1
                                    _G.SecretHatchAmount.RoyalGuardian = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/8.00B"
                                elseif PetData.Shiny == false and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373473809012621373/latest.png?ex=682a8aa9&is=68293929&hm=76c77d2b0146922895210910abb5c18ebfa232311ad9715bf3fda5ec16a871e1&"
                                    hatchamountcounter = _G.SecretHatchAmount.RoyalGuardian + 1
                                    _G.SecretHatchAmount.RoyalGuardian = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/20.0B"
                                elseif PetData.Shiny == true and PetData.Mythic == true then
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373434508967415840/268.png?ex=682a6610&is=68291490&hm=82a998e2f540538c2455c2dcb083d9a2dcdaecf61c1c02d127336e71f6aa5522&"
                                    hatchamountcounter = _G.SecretHatchAmount.RoyalGuardian + 1
                                    _G.SecretHatchAmount.RoyalGuardian = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/800B"
                                else
                                    PetImage = "https://cdn.discordapp.com/attachments/750156768834879488/1373434421285359616/latest.png?ex=682a65fb&is=6829147b&hm=0ce8901f6d6fc19bdfe40cb7f0c087e434d6c5fb171955755e209a2b8f189198&"
                                    hatchamountcounter = _G.SecretHatchAmount.RoyalGuardian + 1
                                    _G.SecretHatchAmount.RoyalGuardian = hatchamountcounter
                                    SaveHatchAmountSettings()
                                    ManualPetChance = "1/200M"
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
                            if PetData.Shiny == true and PetData.Mythic == false then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny Secret** has been hatched!"
                                TitleFinder = "A Shiny Secret was just hatched!"
                                FooterFinder = "Shiny Secret"
                                NewColor = "E3FF00"
                                SecretHatchCounter = _G.SecretHatchAmount.SecretCount + 1
                                _G.SecretHatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            elseif PetData.Shiny == false and PetData.Mythic == true then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Mythic Secret** has been hatched!"
                                TitleFinder = "A Mythic Secret was just hatched!"
                                FooterFinder = "Mythic Secret"
                                NewColor = "FF8200"
                                SecretHatchCounter = _G.SecretHatchAmount.SecretCount + 1
                                _G.SecretHatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            elseif PetData.Shiny == true and PetData.Mythic == true then
                                SecretPing = "<@&928384646595641404> <@&803012562878726174>, a **Shiny Mythic Secret** has been hatched!"
                                TitleFinder = "A Shiny Mythic Secret was just hatched!"
                                FooterFinder = "Shiny Mythic Secret"
                                NewColor = "00FF02"
                                SecretHatchCounter = _G.SecretHatchAmount.SecretCount + 1
                                _G.SecretHatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            else
                                SecretPing = "<@&803012562878726174>, a **Secret** has been hatched!"
                                TitleFinder = "A Secret was just hatched!"
                                FooterFinder = "Secret"
                                NewColor = "FF0064"
                                SecretHatchCounter = _G.SecretHatchAmount.SecretCount + 1
                                _G.SecretHatchAmount.SecretCount = SecretHatchCounter
                                SaveHatchAmountSettings()
                            end
                            -- The Webhook
                                local HttpService = game:GetService("HttpService")
                                local Info = {
                                    ["content"] = SecretPing,
                                    ["embeds"] = {
                                    {
                                    ["description"] = username .. " just hatched a **" .. petname .. "**!",
                                    ["thumbnail"] = {
                                        ["url"] = PetImage
                                    },
                                    ["footer"] = {
                                        ["text"] = "Egg #" .. abb(count) .. " | " .. FooterFinder,
                                    },
                                    ['timestamp'] = DateTime.now():ToIsoDate(),
                                    ["title"] = TitleFinder,
                                    ["color"] = tonumber(tostring("0x" .. NewColor)),
                                    ["fields"] = {
                                    {
                                        ["name"] = "Chance:",
                                        ["value"] = ManualPetChance,
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
                                    local jsonMessage = HttpService:JSONEncode(Info)
                                    local response = request({
                                        Url = Webhook,
                                        Method = "POST",
                                        Headers = {
                                            ["Content-Type"] = "application/json"
                                        },
                                        Body = jsonMessage
                                    })
                                end
                            end
                        end
    end)
print("activated")
