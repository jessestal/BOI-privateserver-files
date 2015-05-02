	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			AI:Exit()
		end
	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 2000, 1 )
        end

 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end