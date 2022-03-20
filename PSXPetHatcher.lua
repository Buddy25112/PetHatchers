-- PSX Pet Hatcher (V2.4.2)
-- Maintained and Updated by A&J Gaming#1569
-- If you run into any bugs, let me know please!
-- Enjoy the pet hatcher :)

if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 then
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
	repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

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
	
	local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
	local IDToName = {}
	local PettoRarity = {}
	for i,v in pairs(Library.Directory.Pets) do
		IDToName[i] = v.name
		PettoRarity[i] = v.rarity
	end

	function GetThumbnail(id, type)
		local nailname = (type == 'Normal' or type == 'Rainbow' and 'thumbnail') or (type == 'Gold' and 'goldenThumbnail') or (type == 'Dark Matter' and 'darkMatterThumbnail')
		local eeee = Library.Directory.Pets[tostring(id)][nailname] or Library.Directory.Pets[tostring(id)]["thumbnail"] 
		local eeee = eeee:gsub("rbxassetid%:%/%/", "")
		local eeee = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%d&width=420&height=420&format=png", eeee)
		return eeee
	end

	function Send(Name, Nickname, Strength, Rarity, Thumbnail, Formation, Color, NewPowers, nth, Hatchping, chance, PetName)
		local OSTime = os.time()
		local Time = os.date('!*t', OSTime)
		local Webhook = _G.Webhook
		local msg = {
			["content"] = Hatchping,
			["embeds"] = {
				{
					["color"] = tonumber(tostring("0x" .. Color)), --decimal
					["title"] = "",
					["thumbnail"] = {
						["url"] = Thumbnail
					},
					["description"] = username .. " just hatched a **" .. PetName .. "**! (**" .. chance .. "%**)",
					["fields"] = {},
					["author"] = {
						["name"] = username,
						["url"] = "https://www.roblox.com/users/".. userid .."/profile",
						["icon_url"] = icon,
					},
					["footer"] = {
						["text"] = "Egg #" .. abb(nth) .. " | " .. Rarity,
					},
					['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
				}
			}
		}
		request = http_request or request or HttpPost or syn.request
		request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
	end

	function SendWebhook(uid)
		for i,v in pairs(Library.Save.Get().Pets) do
			if v.uid == uid and _G.TrackList[PettoRarity[v.id]] then
				local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or ''
				local Formation = (v.g and ':crown: Golden') or (v.r and ':rainbow: Rainbow') or (v.dm and ':milky_way: Dark Matter') or ''
				local Thumbnail = GetThumbnail(v.id, ThingyThingyTempTypeThing)
				local Name = IDToName[v.id]
				local Nickname = v.nk
				local nth = v.idt
				local Strength = v.s or {'???'}
				local Powers = v.powers or {}
				local Rarity = PettoRarity[v.id]
				local PetName = (ThingyThingyTempTypeThing == 'Gold' and Formation .. " " .. Rarity .. " " .. Name) or (ThingyThingyTempTypeThing == 'Rainbow' and Formation .. " " .. Rarity .. " " .. Name) or (ThingyThingyTempTypeThing == 'Dark Matter' and Formation .. " " .. Rarity .. " " .. Name) or Rarity .. " " .. Name
				local Firstchance = (Name == 'Hacked Raccoon' and "91") or (Name == 'Hacked Cat' and "5") or (Name == 'Haxigator' and "4") or (Name == 'Haxolotl' and "0.35") or (Name == '404 Demon' and "0.0035") or (Name == 'Huge Hacked Cat' and "0.00001") or (Name == 'Cat' and "28") or (Name == 'Dog' and "28") or (Name == 'Bunny' and "28") or (Name == 'White Bunny' and "14") or (Name == 'Dalmatian' and "3") or (Name == 'Piggy' and "38") or (Name == 'Cow' and "38") or (Name == 'Chicken' and "15") or (Name == 'Chick' and "8") or (Name == 'Noob' and "0.23") or (Name == 'Lamb' and "34") or (Name == 'Fox' and "17") or (Name == 'Corgi' and "3") or (Name == 'Monkey' and "12") or (Name == 'Bear' and "34") or (Name == 'Raccoon' and "24") or (Name == 'Black Bear' and "34") or (Name == 'Squirrel' and "34") or (Name == 'Tiger' and "2") or (Name == 'Parrot' and "7") or (Name == 'Turtle' and "59") or (Name == 'Goldfish' and "5") or (Name == 'Blue Fish' and "18") or (Name == 'Green Fish' and "18") or (Name == 'Hydra' and "0.15") or (Name == 'Ugly Duckling' and "40") or (Name == 'Flamingo' and "40") or (Name == 'Ducky' and "16") or (Name == 'Shark' and "4") or (Name == 'Kraken' and "0.125") or (Name == 'Elephant' and "46") or (Name == 'Happy Rock' and "7") or (Name == 'Gecko' and "46") or (Name == 'Griffin' and "2") or (Name == 'Bat' and "61") or (Name == 'Orange Gecko' and "31") or (Name == 'Bull' and "7") or (Name == 'Immortuus' and "0.37") or (Name == 'Mortuus' and "0.04") or (Name == 'Snow Cat' and "32") or (Name == 'Snow Dog' and "32") or (Name == 'Deer' and "24") or (Name == 'Frost Dragon' and "0.64") or (Name == 'Arctic Fox' and "11") or (Name == 'Penguin' and "14") or (Name == 'Walrus' and "36") or (Name == 'Polar Bear' and "36") or (Name == 'Snowman' and "0.16") or (Name == 'Seal' and "14") or (Name == 'Husky' and "4") or (Name == 'Icemortuus' and "0.17") or (Name == 'Snow Leopard' and "42") or (Name == 'Ice Slime' and "11") or (Name == 'Snow Squirrel' and "42") or (Name == 'Puffin' and "66") or (Name == 'Angry Yeti' and "0.2") or (Name == 'Snow Ram' and "33") or (Name == 'Cheerful Yeti' and "0.2") or (Name == 'Panther' and "17") or (Name == 'Lion' and "3") or (Name == 'Bobcat' and "27") or (Name == 'Desert Cat' and "53") or (Name == 'Slime' and "4") or (Name == 'Camel' and "40") or (Name == 'Sand Turtle' and "40") or (Name == 'Black Widow' and "0.1") or (Name == 'Armadillo' and "16") or (Name == 'Fire Dog' and "43") or (Name == 'Fire Cat' and "43") or (Name == 'Dragon' and "13") or (Name == 'Fire Horse' and "0.15") or (Name == 'Phoenix' and "0.05") or (Name == 'Hell Bat' and "43") or (Name == 'Hell Fox' and "43") or (Name == 'Flamortuus' and "0.17") or (Name == 'Three Headed Dragon' and "0.045") or (Name == 'Lava Slime' and "13") or (Name == 'Dominus Infernus' and "43") or (Name == 'Dominus Frigidus' and "43") or (Name == 'Dominus Empyreus' and "13") or (Name == 'Domortuus' and "0.1") or (Name == 'Froggy' and "38") or (Name == 'Peacock' and "1") or (Name == 'Enchanted Cat' and "11") or (Name == 'Cyclops' and "38") or (Name == 'Fairy' and "0.15") or (Name == 'Enchanted Elephant' and "11") or (Name == 'Enchanted Deer' and "0.15") or (Name == 'Green Cobra' and "38") or (Name == 'Dino' and "0.95") or (Name == 'King Cobra' and "0.15") or (Name == 'Purple Cobra' and "38") or (Name == 'Goblin' and "11") or (Name == 'Crocodile' and "11") or (Name == 'Sphinx' and "0.0125") or (Name == 'Red Panda' and "2") or (Name == 'Samurai Bull' and "0.19") or (Name == 'Axolotl' and "25") or (Name == 'Panda' and "63") or (Name == 'White Tiger' and "10") or (Name == 'Samurai Dragon' and "0.0125") or (Name == 'Cotton Candy Lamb' and "55") or (Name == 'Rainbow Fish' and "22") or (Name == 'Rainbow Slime' and "22") or (Name == 'Cupcake' and "0.18") or (Name == 'Unicorn' and "0.015") or (Name == 'Ghost' and "22") or (Name == 'Willow Wisp' and "2") or (Name == 'Phantom Wolf' and "0.00065") or (Name == 'Agony' and "0.0125") or (Name == 'Skele' and "54") or (Name == 'Reaper' and "22") or (Name == 'Shadow Griffin' and "0.19") or (Name == 'Hell Rock' and "32") or (Name == 'Hell Spider' and "0.26") or (Name == 'Hellhound' and "2") or (Name == 'Hell Chick' and "65") or (Name == 'Demon' and "0.19") or (Name == 'Hound of Hades' and "0.015") or (Name == 'Wyvern of Hades' and "0.0006") or (Name == 'Dove' and "2") or (Name == 'Angel Cat' and "65") or (Name == 'Angel Dog' and "33") or (Name == 'Heavenly Peacock' and "0.2") or (Name == 'Pegasus' and "0.01") or (Name == 'Empyrean Snake' and "50") or (Name == 'Empyrean Dragon' and "0.35") or (Name == 'Empyrean Stallion' and "37") or (Name == 'Empyrean Fox' and "12") or (Name == 'Angelus' and "0.00125") or (Name == 'Cyborg Dog' and "33") or (Name == 'Cyborg Cat' and "66") or (Name == 'Cyborg Bunny' and "1") or (Name == 'Cyborg Dragon' and "0.23") or (Name == 'Cyborg Mortuus' and "0.27") or (Name == 'Cyborg Ducky' and "66") or (Name == 'Cyborg Panda' and "33") or (Name == 'Cyborg Dominus' and "0.015") or (Name == 'Cyber Bunny' and "98") or (Name == 'Cyber Raccoon' and "2") or (Name == 'Metal Skull' and "0.03") or (Name == 'A-36' and "0.000325") or (Name == 'Cyber Fox' and "97") or (Name == 'Robot' and "3") or (Name == 'Happy Computer' and "0.39") or (Name == 'Techno Cat' and "0.0175") or (Name == 'M-2 PROTOTYPE' and "0.00065") or (Name == 'M-6 PROTOTYPE' and "0.00045") or (Name == 'Toy Mouse' and "71") or (Name == 'Steampunk Wolf' and "0.29") or (Name == 'Steampunk Bat' and "1") or (Name == 'Steampunk Octopus' and "2") or (Name == 'Cat Magician' and "25") or (Name == 'Sophisticated Fox' and "0.015") or (Name == 'Mining Mole' and "25") or (Name == 'Ducky Magician' and "72") or (Name == 'Steampunk Crocodile' and "2") or (Name == 'Steampunk Fish' and "0.29") or (Name == 'Mechanical Spider' and "0.0125") or (Name == 'Blimp Dragon' and "0.0005") or (Name == 'Reversed Cat' and "71") or (Name == 'Stacked Cat' and "2") or (Name == 'Reversed Dog' and "25") or (Name == 'Stacked Dog' and "2") or (Name == 'Stacked Dominus' and "0.0135") or (Name == 'Blurred Axolotl' and "5") or (Name == 'Blurred Dominus' and "0.32") or (Name == 'Blurred Bear' and "95") or (Name == 'Blurred Agony' and "0.0135") or (Name == 'Dominus Alienus' and "0.00055") or (Name == 'Bleebo The Alien' and "94") or (Name == 'Meebo The Alien' and "5") or (Name == 'Nine Eyed Lion' and "0.33") or (Name == 'Meebo in a Spaceship' and "0.0135") or (Name == 'Gleebo The Alien' and "94") or (Name == 'Alien Axolotl' and "0.33") or (Name == 'Alien Parasite' and "0.00065") or (Name == 'Astronaut Cat' and "5") or (Name == 'Star Surfer' and "0.0135") or (Name == 'Jelly Alien' and "95") or (Name == 'Red Fluffy' and "0.33") or (Name == 'Blue Fluffy' and "0.33") or (Name == 'Alien Arachnid' and "6") or (Name == 'Galaxy Fox' and "0.00055") or (Name == 'Glitched Dragon' and "2") or (Name == 'Glitched Dog' and "49") or (Name == 'Glitched Cat' and "49") or (Name == 'Glitched Dominus' and "0.17") or (Name == 'Glitched Unicorn' and "0.015") or (Name == 'Glitched Phoenix' and "0.01") or (Name == 'Glitched Immortuus' and "0.0006") or (Name == 'Chill Axolotl' and "49") or (Name == 'Lumi Axolotl' and "2") or (Name == 'Camo Axolotl' and "49") or (Name == 'Midnight Axolotl' and "0.17") or (Name == 'Storm Axolotl' and "0.0125") or (Name == 'Empyrean Axolotl' and "0.0006") or (Name == 'Hydra Axolotl' and "0.15") or (Name == 'Fancy Axolotl' and "49") or (Name == 'Nature Axolotl' and "49") or (Name == 'Axolotuus' and "2") or (Name == 'Astral Axolotl' and "0.011") or (Name == 'Hellish Axolotl' and "0.0005")
				local chance = (ThingyThingyTempTypeThing == 'Gold' and Firstchance * 0.1) or (ThingyThingyTempTypeThing == 'Rainbow' and Firstchance * 0.075) or (ThingyThingyTempTypeThing == 'Dark Matter' and Firstchance * 1) or Firstchance * 1
				local Basicrarity = _G.Basicping
				local Rarerarity = _G.Rareping
				local Epicrarity = _G.Epicping
				local Legendaryrarity = _G.Legendaryping
				local Mythicalrarity = _G.Mythicalping
				local Exclusiverarity = _G.Exclusiveping
				local Hatchping = (Rarity == 'Basic' and Basicrarity) or (Rarity == 'Rare' and Rarerarity) or (Rarity == 'Epic' and Epicrarity) or (Rarity == 'Legendary' and Legendaryrarity) or (Rarity == 'Mythical' and Mythicalrarity) or (Rarity == 'Exclusive' and Exclusiverarity)
				local Color = (Rarity == 'Mythical' and "ff8c00") or (Rarity == 'Legendary' and "ff45f6") or (Rarity == 'Epic' and "ffea47") or (Rarity == 'Rare' and "42ff5e") or (Rarity == 'Basic' and "b0b0b0") or (Rarity == 'Exclusive' and "d06bff")
				local NewPowers = {}
				for a,b in pairs(Powers) do
					local eeeeeeee = tostring(b[1] .. " " .. b[2])
					table.insert(NewPowers, eeeeeeee)
				end
				Send(Name, Nickname, Library.Functions.Commas(Strength), Rarity, Thumbnail, Formation, Color, NewPowers, nth, Hatchping, chance, PetName)
			end
		end
	end
    
    
	if _G.Connection then _G.Connection:Disconnect() end
	_G.Connection = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.ChildAdded:Connect(function(child)
		SendWebhook(child.Name)
	end)
end
print('PSX Pet Hatcher V2.4.2, Maintained and Updated by A&J Gaming#1569')
