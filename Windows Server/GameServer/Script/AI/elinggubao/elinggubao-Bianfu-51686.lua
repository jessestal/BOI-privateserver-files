	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			AI:PlayEffect( "skill\\Monster\\boss\\yuanlingzhinu\\fire\\tx_yuanlingzhinu_fire.ini" )
   		end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end	
   		
   		if nIndex == 2	then
			AI:Exit()
   		end
   		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 2000, 25 )
        	AI:SetTimer( 2, 30000, 1 )
        end
        
        mapid = AI:GetMapID()
        dead = AI:GetEctypeVarShort( mapid, 97 )
        if dead == 1 	then
        	lock = AI:GetArray( 1 )
        	if lock == 0 	then
	        	mapid = AI:GetMapID()
				left = AI:GetEctypeVarShort( mapid, 99 )
				left = left - 1
				AI:SetEctypeVarShort( mapid, 99, left )
	        	x = AI:GetPosX()
		        y = AI:GetPosY()
		        b = AI:GetEctypeVarInteger( mapid ,111 )
				if b == 0 then
					--AI:AddSkill( 2037, 1 )
					--AI:UseSkill( 2037, 1 )
				else
					AI:AddSkill( 2037, 1 )
					AI:UseSkill( 2037, 1 )
				end
		        AI:SummonMonsterByPos( 51718, x, y )
		        AI:SetTimer( 1, 1400, 1 )
		        AI:SetArray( 1, 1 )
		    end
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		left = AI:GetEctypeVarShort( mapid, 99 )
		left = left - 1
		AI:SetEctypeVarShort( mapid, 99, left )
		
	end