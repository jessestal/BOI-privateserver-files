	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
			
end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

end


	function Event_ReadSeekPos(nAI)
	
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:AddSeekPos(mapid,142,162)
			AI:SetArray(1,1)
		end
		
end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(2)
		if (( PosX == 142) and ( PosY == 162 )) then
			if a == 0 then
				AI:SummonMonsterByPos(51870,140,154)
				AI:SummonMonsterByPos(51870,130,156)
				AI:SummonMonsterByPos(51870,125,163)
				AI:SummonMonsterByPos(51870,126,170)
				AI:SummonMonsterByPos(51870,131,176)
				AI:SummonMonsterByPos(51870,139,177)
				AI:SummonMonsterByPos(51870,145,174)
				AI:SummonMonsterByPos(51870,149,166)
				AI:SummonMonsterByPos(51870,146,158)
				AI:SetArray(2, 1)
			end
				
			AI:SelfMurder()
		end

	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end