


function getCount()
	local Count = 0
	local returnFloat = 1.0
	for _, Player in pairs(GetActivePlayers()) do -- probably doesnt work for onesync but hey :P
		Count = Count + 1
		if Count > 1 then
			returnFloat = returnFloat+ -0.01 * Count
		end
	end
	return Count, returnFloat
end

Citizen.CreateThread(function()
	while true do
		Wait(0)
		local count, returnFloat = getCount()
		SetPedDensityMultiplierThisFrame(returnFloat)
		SetVehicleDensityMultiplierThisFrame(returnFloat)
		SetRandomVehicleDensityMultiplierThisFrame(returnFloat)
		SetParkedVehicleDensityMultiplierThisFrame(returnFloat)
		SetScenarioPedDensityMultiplierThisFrame(returnFloat, returnFloat)
		--print(returnFloat)
		if count == 1 then
			Wait(1000)-- if 1 player no point stressing
		end
	end
end)


