	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			x = AI:GetPosX()
			y = AI:GetPosY()
			count = AI:GetArray( 1 )
			count = count + 1
			AI:SetArray( 1, count )
			AI:SummonLevelMonsterByPos( 51686, 67, 75, x, y )
	        if count == 6 	then
				AI:SetTimer( 1, 20000, 1 )
	        end
   		end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		--
		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetTimer( 0, 1000, 6 )
			AI:SetArray( 0, 1 )
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end