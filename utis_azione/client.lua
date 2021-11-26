ESX = nil
Citizen.CreateThread(function()
	 while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	 end
end)

RegisterNetEvent('utisss:azione')
AddEventHandler('utisss:azione', function(id, name, message, time)
    local inviatore = PlayerId()
    local ricevitori = GetPlayerFromServerId(id) 
    if ricevitori == inviatore then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"><i class="fas fa-door-open"></i> <b><span style="color: ##FF0000">[AZIONE] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(inviatore)), GetEntityCoords(GetPlayerPed(ricevitori)), true) < 200.0 then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"><i class="fas fa-door-open"></i> <b><span style="color: ##FF0000">[AZIONE] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    end
end)

--utisss.#0672