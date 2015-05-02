	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SetArray( 0, 2 )
		end
		if nIndex == 1 then
			AI:SetArray( 1, 2 )
		end
		if nIndex == 2 then
			AI:SetArray( 3, 2 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
		t = AI:HaveAttackTarget()
		if t == false then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:SetArray( 3, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
		else
			mapid = AI:GetMapID()
			switch = AI:GetArray( 0 )
			switch1 = AI:GetArray( 1 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 2, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				AI:SetArray( 1, 1 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 0, 10000, 1 )
        		AI:SetTimer( 1, 8000, 1 )
        		AI:SetTimer( 2, 9000, 1 )
        	end
			if switch == 2	then
				AI:SetEctypeVarShort( mapid, 39, 54 )
				AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
				id = AI:GetArray( 2 )
				x = AI:GetPlayerX( id )
				y = AI:GetPlayerY( id )
				AI:SummonMonsterByPos( 51596, x, y )
				AI:SummonMonsterByPos( 55222, x, y )
				AI:ScreenText( "Hades summoned a Hell Beetle, the Hell Beetle will disappear after 15 seconds.", 2 )
				AI:SetArray( 0, 1 )
        		AI:SetTimer( 0, 40000, 1 )
        	end
        	if switch1 == 2	then
				AI:SetEctypeVarShort( mapid, 39, 84 )
				id = AI:GetArray( 2 )
				x = AI:GetPlayerX( id )
				y = AI:GetPlayerY( id )
				AI:SummonMonsterByPos( 51596, x, y )
				AI:Say( "Fall into the abyss with me." )
				--??800????
				AI:AddSkill( 2033, 1 )
				AI:UseSkill( 2033, 1 )
				--??
				AI:AddSkill( 2007, 1 )
				AI:UseSkill( 2007, 1 )
				AI:SetArray( 1, 1 )
        		AI:SetTimer( 1, 20000, 1 )
        	end
        	
        	switch2 = AI:GetArray( 3 )
        	if switch2 == 2	then
				id = AI:GetArray( 2 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 2, 9000, 1 )
        	end
        end
 	end