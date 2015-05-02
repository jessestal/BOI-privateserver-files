	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			x = AI:GetPosX()
			y = AI:GetPosY()
			count = AI:GetArray( 1 )
			count = count + 1
			AI:SetArray( 1, count )
			a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				level = 67
			else
				level = 68
			end
			AI:SummonLevelMonsterByPos( 51686, level, a, x, y )
	        if count == 2 	then
				AI:SetTimer( 1, 22000, 1 )
	        end
	        if count == 4 	then
				AI:SetTimer( 1, 26000, 1 )
	        end
   		end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				AI:SetTimer( 0, 1000, 2 )
			else
				AI:SetTimer( 0, 1000, 5 )
			end
        	
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end