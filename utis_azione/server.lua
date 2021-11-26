ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('azione', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	local message = rawCommand:sub(7)
	playerName = xPlayer.getName()
	TriggerClientEvent('utisss:azione', -1,source, GetPlayerName(source), message, '')
end)

--utisss.#0672