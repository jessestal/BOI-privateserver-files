	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SelfMurder()
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		switch = AI:GetArray( 0 )
		if switch == 0	then
			mapid = AI:GetMapID()
			id = AI:GetEctypeVarInteger( mapid, 119 )
			AI:ModifyEnmity( id, 900000000 )
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 15000, 1 )
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
			--mapid = AI:GetMapID()
			--AI:PlayEffect( "skill\\Monster\\boss\\yuanlingzhinu\\fire\\tx_yuanlingzhinu_fire.ini" )
			
			AI:AddSkill( 2037, 1 )
			AI:UseSkill( 2037, 1 )
			x = AI:GetPosX()
			y = AI:GetPosY()
			
			AI:SummonMonsterByPos( 55231, x, y )
			
			AI:SummonMonsterByPos( 55223, x, y )
			AI:SummonMonsterByPos( 55223, x+1, y )
			AI:SummonMonsterByPos( 55223, x-1, y )
			AI:SummonMonsterByPos( 55223, x, y+1 )
			AI:SummonMonsterByPos( 55223, x, y-1 )
			
			AI:SummonMonsterByPos( 55223, x+1, y+1 )
			AI:SummonMonsterByPos( 55223, x-1, y-1 )
			AI:SummonMonsterByPos( 55223, x+1, y-1 )
			AI:SummonMonsterByPos( 55223, x-1, y+1 )
	end