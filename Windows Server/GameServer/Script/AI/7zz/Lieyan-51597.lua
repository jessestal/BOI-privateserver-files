	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Exit()
		end
		if nIndex == 1 then
			AI:Exit()
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
		if t == false then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:Exit()
		else
			mapid = AI:GetMapID()
			lock = AI:GetArray( 1 )
			if lock == 0	then
				temp = AI:GetEctypeVarShort( mapid, 35 )
				AI:SetArray( 1, temp )
			end
			index = AI:GetArray( 1 )
			if index == 0	then
				switch = AI:GetArray( 0 )
				if switch == 0	then
					id = AI:GetEctypeVarInteger( mapid, 119 )
					AI:ModifyEnmity( id, 900000000 )
					AI:SetTimer( 0, 15000, 1 )
					AI:SetArray( 0, 1 )
				end
			end
			
			if index == 11	then
				switch = AI:GetArray( 2 )
				if switch == 0	then
					id = AI:GetEctypeVarInteger( mapid, 119 )
					AI:ModifyEnmity( id, 900000000 )
					AI:SetTimer( 1, 70000, 1 )
					AI:SetArray( 2, 1 )	
				end
			end
        end
 	end