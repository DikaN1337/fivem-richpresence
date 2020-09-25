Citizen.CreateThread(function()
	while true do
		if Config.Enabled then
			SetDiscordAppId(Config.appID)
			
			if Config.showBigPhoto then
				SetDiscordRichPresenceAsset(Config.bigPhoto)
			end
			if Config.showSmallPhoto then
				SetDiscordRichPresenceAssetSmall(Config.smallPhoto)
			end
			if Config.showBigAltText then
				SetDiscordRichPresenceAssetText(Config.bigPhotoAltText)
			end
			if Config.showSmallAltText then
				SetDiscordRichPresenceAssetSmallText(Config.smallPhotoAltText)
			end
			
			if Config.showID and Config.showName and Config.showPlayers then
				SetRichPresence("[ID:"..GetPlayerServerId(PlayerId()).."] - | [Name: ".. GetPlayerName(PlayerId()) .." | "..#GetActivePlayers().."/64 |")
			elseif Config.showPlayers ~= true and Config.showID and Config.showName then
				SetRichPresence("[ID:"..GetPlayerServerId(PlayerId()).."] - | [Name: ".. GetPlayerName(PlayerId()))
			elseif Config.showPlayers and Config.showID ~= true and Config.showName then
				SetRichPresence("[Name: ".. GetPlayerName(PlayerId()) .." | "..#GetActivePlayers().."/64 |")
			elseif Config.showPlayers and Config.showID and Config.showName ~= true then
				SetRichPresence("[ID:"..GetPlayerServerId(PlayerId()).."] - | "..#GetActivePlayers().."/64 |")
			elseif Config.showPlayers ~= true and Config.showName ~= true and Config.showID then
				SetRichPresence("[ID:"..GetPlayerServerId(PlayerId()).."] | ")
			elseif Config.showPlayers and Config.showName ~= true and Config.showID ~= true then
				SetRichPresence(#GetActivePlayers().."/64 | ")
			elseif Config.showID ~= true and Config.showName and Config.showPlayers ~= true then
				SetRichPresence("[Name: ".. GetPlayerName(PlayerId()) .." | ")
			end
			
			Citizen.Wait(60000)
		end
	end
end)
