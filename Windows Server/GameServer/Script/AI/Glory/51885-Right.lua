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
			AI:AddSeekPos(mapid,190,161)
			AI:SetArray(1,1)
		end
		
end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		b = AI:GetArray(2)
		if (( PosX == 190) and ( PosY == 161 )) then
			if b == 0 then
				AI:SummonMonsterByPos(51870,185,158)
				AI:SummonMonsterByPos(51870,182,166)
				AI:SummonMonsterByPos(51870,185,174)
				AI:SummonMonsterByPos(51870,192,178)
				AI:SummonMonsterByPos(51870,200,176)
				AI:SummonMonsterByPos(51870,206,170)
				AI:SummonMonsterByPos(51870,206,162)
				AI:SummonMonsterByPos(51870,200,156)
				AI:SummonMonsterByPos(51870,192,154)
				AI:SetArray(2, 1)
			end
				
			AI:SelfMurder()
		end

	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end