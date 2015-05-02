	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				step = AI:GetArray(2)
				if step == 0 	then
					AI:SummonMonsterByPos( 51710, 207, 21 )
					AI:SetArray(2,1) 
				end
				if step == 1 	then
					AI:SummonMonsterByPos( 51710, 207, 48 )
					AI:SetArray(2,2) 
				end
			else
				step = AI:GetArray(2)
				if step == 0 	then
					AI:SummonMonsterByPos( 51710, 207, 21 )
					AI:SetArray(2,1) 
				end
				if step == 1 	then
					AI:SummonMonsterByPos( 51710, 207, 48 )
					AI:SetArray(2,2) 
				end
				if step == 2 	then
					AI:SummonMonsterByPos( 51710, 194, 21 )
					AI:SetArray(2,3) 
				end
				if step == 3 	then
					AI:SummonMonsterByPos( 51710, 194, 48 )
					AI:SetArray(2,4) 
				end
			end

		end
		
		if nIndex == 1	then
			mapid = AI:GetMapID()
			a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				level = 62
			else
				level = 71
			end
			AI:SummonLevelMonsterByPos( 51633, level, a, 208, 35 )
			AI:SummonMonsterByPos( 51638, 208, 35 )
			AI:Exit()
		end
		
		if nIndex == 2	then
			--right
			AI:SummonMonsterByPos( 51708, 221, 21 )
			AI:SummonMonsterByPos( 51708, 221, 30 )
			AI:SummonMonsterByPos( 51708, 221, 39 )
			AI:SummonMonsterByPos( 51708, 221, 48 )
			--left
			AI:SummonMonsterByPos( 51709, 194, 21 )
			AI:SummonMonsterByPos( 51709, 194, 30 )
			AI:SummonMonsterByPos( 51709, 194, 39 )
			AI:SummonMonsterByPos( 51709, 194, 48 )
			AI:SetTimer(1,10000,1)
		end
	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		n = AI:GetEnmityCount()
		if n < 1 then
			AI:SetEctypeVarShort( mapid, 99, 0 )
			AI:SetEctypeVarShort( mapid, 97, 0 )
			AI:SetEctypeVarShort( mapid, 96, 0 )
			AI:SetEctypeVarShort( mapid, 95, 0 )
			AI:SetEctypeVarInteger( mapid, 119, 0 )
			a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				level = 62
			else
				level = 61
			end
			--AI:SummonLevelMonsterByPos( 51633, level, a, 207, 26 )
			AI:OpenMapMask(17)
			AI:DelNPC(2254)
			AI:AddNPC(2141)
			AI:Exit()
		else
			switch = AI:GetArray(0)
			if switch == 0	then
				b = AI:GetEctypeVarInteger( mapid ,111 )
				if b == 0 then
					AI:SetTimer(0,7000,2)
				else
					AI:SetTimer(0,7000,4)
				end
				AI:SetTimer(2,16000,1)
				AI:SetArray(0,1) 
			end
		end
		
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end