if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 then
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Loading"):WaitForChild("Black").BackgroundTransparency == 1
	repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

	local username = game:GetService("Players").LocalPlayer.Name
	local userid = game:GetService("Players").LocalPlayer.UserId

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

	function Send(Name, Nickname, Strength, Rarity, Thumbnail, Formation, Color, NewPowers, nth)
		local OSTime = os.time()
		local Time = os.date('!*t', OSTime)
		local Webhook = _G.Webhook
		local msg = {
			["username"] = "A&J Gaming Hatch Bot",
			["embeds"] = {
				{
					["color"] = tonumber(tostring("0x" .. Color)), --decimal
					["title"] =  Formation .. " " .. Rarity .. " " .. Name,
					["thumbnail"] = {
						["url"] = Thumbnail
					},
					["description"] = username .. " just hatched a **" .. Formation .. " " .. Rarity .. "** " .. Name .. "!",
					["fields"] = {},
					["author"] = {},
					["footer"] = {
						["text"] = username .. "'s Egg Count: "..nth,
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
				local Color = (Rarity == 'Mythical' and "ff8c00") or (Rarity == 'Legendary' and "ff45f6") or (Rarity == 'Epic' and "ffea47") or (Rarity == 'Rare' and "42ff5e") or (Rarity == 'Basic' and "b0b0b0") or (Rarity == 'Exclusive' and "d06bff")
				local NewPowers = {}
				for a,b in pairs(Powers) do
					local eeeeeeee = tostring(b[1] .. " " .. b[2])
					table.insert(NewPowers, eeeeeeee)
				end
				Send(Name, Nickname, Library.Functions.Commas(Strength), Rarity, Thumbnail, Formation, Color, NewPowers, nth)
			end
		end
	end

	if _G.Connection then _G.Connection:Disconnect() end
	_G.Connection = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.ChildAdded:Connect(function(child)
		SendWebhook(child.Name)
	end)
end
