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
        	AI:SetTimer( 0, 10000, 1 )
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
			AI:PlayEffect( "common\\story\\seelbreak2\\fire\\tx_seelbreak2_fire.ini" )
	end