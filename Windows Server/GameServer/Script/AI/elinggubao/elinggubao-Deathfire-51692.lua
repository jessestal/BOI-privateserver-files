	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			x = AI:GetPosX()
			y = AI:GetPosY()
			
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				AI:AddSkill( 2037, 2 )
				AI:UseSkill( 2037, 2 )
			else
				AI:AddSkill( 2038, 1 )
				AI:UseSkill( 2038, 1 )
			end
			
			AI:SummonMonsterByPos( 51693, x, y )
	   	end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end
   		
   		if nIndex == 2	then
			AI:SetTimer( 0, 3000, 100 )
   		end
	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 2, 3000, 1 )
        	AI:SetTimer( 1, 20000, 1 )
        end
		
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end