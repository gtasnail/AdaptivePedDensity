

Pogfig = {}

Pogfig.LogicWay = true

--put above ^^ to false to do it the messy way VVV
Pogfig.Rate1 = 1.0
Pogfig.Rate10 = 0.9
Pogfig.Rate20 = 0.8
Pogfig.Rate30 = 0.7
Pogfig.Rate40 = 0.6
Pogfig.Rate50 = 0.5
Pogfig.Rate60 = 0.4
Pogfig.Rate70 = 0.3
Pogfig.Rate80 = 0.2
Pogfig.Rate90 = 0.1
Pogfig.Rate10 = 0.0
------

function getCount()
	local Count = 0
	local returnFloat = 1.0
	for _, Player in pairs(GetActivePlayers()) do -- probably doest work for onesync but hey :P
		Count = Count + 100
		if Count > 1 then
			returnFloat = returnFloat+ -0.01 * Count
		end
	end
	return Count, returnFloat
end

if Pogfig.LogicWay then
	Citizen.CreateThread(function()
		while true do
			Wait(0)
			local count, returnFloat = getCount()
			SetPedDensityMultiplierThisFrame(returnFloat)
			SetVehicleDensityMultiplierThisFrame(returnFloat)
			SetRandomVehicleDensityMultiplierThisFrame(returnFloat)
			SetParkedVehicleDensityMultiplierThisFrame(returnFloat)
			SetScenarioPedDensityMultiplierThisFrame(returnFloat, returnFloat)
			print(returnFloat)
			if count == 1 then
				Wait(1000)-- if 1 player no point stressing
			end
		end
	end)
end



if not Pogfig.LogicWay then
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local count = getCount()
		if count == 1 then
			print('yep')
			SetPedDensityMultiplierThisFrame(Pogfig.Rate1)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate1)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate1)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate1)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate1, Pogfig.Rate1)
		elseif count == 10 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate10)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate10)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate10)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate10)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate10, Pogfig.Rate10)
		elseif count == 20 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate20)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate20)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate20)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate20)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate20)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate20, Pogfig.Rate20)
		elseif count == 30 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate30)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate30)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate30)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate30)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate30)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate30, Pogfig.Rate30)
		elseif count == 40 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate40)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate40)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate40)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate40)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate40)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate40, Pogfig.Rate40)
		elseif count == 50 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate50)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate50)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate50)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate50)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate50)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate50, Pogfig.Rate50)
		elseif count == 60 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate60)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate60)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate60)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate60)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate60)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate60, Pogfig.Rate60)
		elseif count == 70 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate70)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate70)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate70)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate70)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate70)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate70, Pogfig.Rate70)
		elseif count == 80 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate80)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate80)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate80)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate80)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate80)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate80, Pogfig.Rate80)
		elseif count == 90 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate90)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate90)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate90)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate90)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate90)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate90, Pogfig.Rate90)
		elseif count == 100 then
			SetPedDensityMultiplierThisFrame(Pogfig.Rate100)
			SetPedDensityMultiplierThisFrame(Pogfig.Rate100)
			SetVehicleDensityMultiplierThisFrame(Pogfig.Rate100)
			SetRandomVehicleDensityMultiplierThisFrame(Pogfig.Rate100)
			SetParkedVehicleDensityMultiplierThisFrame(Pogfig.Rate100)
			SetScenarioPedDensityMultiplierThisFrame(Pogfig.Rate100, Pogfig.Rate100)
		end
	end
end)
end
