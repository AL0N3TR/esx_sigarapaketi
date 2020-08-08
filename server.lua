ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('cigarettpack', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
			xPlayer.removeInventoryItem('cigarettpack', 1)
            xPlayer.addInventoryItem('cigarett', 20)
end)

ESX.RegisterUsableItem('cigarett', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local lighter = xPlayer.getInventoryItem('lighter')
	
		if lighter.count > 0 then
			xPlayer.removeInventoryItem('cigarett', 1)
			TriggerClientEvent('esx_cigarett:startSmoke', source)
		else
			TriggerClientEvent('esx:showNotification', source, ('Çakmaksız Sıgaranı Yakamassın'))
		end
end)
