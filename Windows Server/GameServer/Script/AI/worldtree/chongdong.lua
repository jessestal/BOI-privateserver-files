	function Event_OnTimer(nAI, nIndex, nCount)
	    local AI = GetMonsterAI(nAI)

	    if nIndex == 0 then
	    		AI:Say("The first group of enemies!")
	        AI:SummonMonster(51381, 1)
	        AI:SummonMonster(51384, 1)
	    end
	    if nIndex == 1 then
	    		AI:Say("The second group of enemies!")
	        AI:SummonMonster(51381, 1)
	        AI:SummonMonster(51384, 1)
	        AI:SummonMonster(51398, 1)
	    end
	    if nIndex == 2 then
	    		AI:Say("The third group of enemies!")
	    		AI:SummonMonster(51381, 1)
	        AI:SummonMonster(51384, 1)
	        AI:SummonMonster(51398, 1)
	        AI:SummonMonster(51398, 1)
	    end
	    if nIndex == 3 then
	    		AI:Say("The fourth group of enemies!")
	    		AI:SummonMonster(51381, 1)
	        AI:SummonMonster(51384, 1)
	        AI:SummonMonster(51398, 1)
	        AI:SummonMonster(51398, 1)
	        AI:SummonMonster(51398, 1)
	        AI:SelfMurder()
	    end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		--8-20-36-56
		
		
		a = AI:GetArray(9)
		if a == 0 then
			AI:SetTimer(0, 2000, 1)
			AI:SetArray(9,1)
		end
		a = AI:GetArray(1)
		if a == 0 then
			nun=AI:GetEctypeVarShort(mapid,10)
			if nun >= 8 then
				AI:SetTimer(1, 10000, 1)
				AI:SetArray(1,1)
			end
		end
		a = AI:GetArray(2)
		if a == 0 then
			nun=AI:GetEctypeVarShort(mapid,10)
			if nun >= 20 then
				AI:SetTimer(2, 10000, 1)
				AI:SetArray(2,1)
			end
		end
		a = AI:GetArray(3)
		if a == 0 then
			nun=AI:GetEctypeVarShort(mapid,10)
			if nun >= 36 then
				AI:SetTimer(3, 10000, 1)
				AI:SetArray(3,1)
			end
		end
--		a = AI:GetArray(4)
--		if a == 0 then
--			nun=AI:GetEctypeVarShort(mapid,10)
--			if nun >= 56 then
--				AI:SetTimer(4, 10000, 1)
--				AI:SetArray(4,1)
--			end
--		end


	end