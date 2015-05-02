	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 51681, x, y )
			AI:AddSkill( 2037, 1 )
			AI:UseSkill( 2037, 1 )
			AI:SetTimer( 1, 1500, 1 )
   		end
   		
   		if nIndex == 1	then
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 51682, x, y )
			AI:SetTimer( 2, 1500, 1 )
   		end
   		
   		if nIndex == 2	then
			AI:Exit()
   		end
   		
   		if nIndex == 3	then
   			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 51691, x, y )
   		end				
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		--
		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 5000, 1 )
        	AI:SetTimer( 3, 1500, 4 )
        end
        
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end