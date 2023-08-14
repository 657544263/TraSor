
function GrantLuxuryAndBonusResources( playerID, cityID, buildingID, plotID, bOriginalConstruction)
	local m_TRA_SORROW_table = GameInfo.Buildings["BUILDING_TRA_SORROW"]	
	if  (m_TRA_SORROW_table ~= nil) then
		local m_TRA_SORROW = m_TRA_SORROW_table.Index
		if playerID == 0 and buildingID == m_TRA_SORROW then 		
			local playerID = Game.GetLocalPlayer()
			local pPlayer = Players[playerID]
			local resourceInfo = GameInfo.Resources();
			local playerResources = Players[playerID]:GetResources();
			local vValue = 5;
			for resource in GameInfo.Resources() do
				if resource.ResourceClassType ~= "TRACLASS_STRATEGIC" then
					playerResources:ChangeResourceAmount(resource.Index, vValue);
				end
			end
		end
	end
end

GameEvents.BuildingConstructed.Add(GrantLuxuryAndBonusResources)