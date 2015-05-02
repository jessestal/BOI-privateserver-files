	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			AI:SetArray( 0, 2 )
		end
		
		if nIndex == 1	then
			AI:SetArray( 3, 2 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
		t = AI:HaveAttackTarget()
		mapid = AI:GetMapID()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:SetArray( 3, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:SetEctypeVarShort( mapid, 16, 0 )
		else
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 2, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 0, 8000, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
        	HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
        	if HP < HPMAX * 0.3		then
        		--AI:ScreenText( "GUID:02984000000", 2 )
				AI:SetArray( 0, 4 )
				AI:SelfMurder()
        	end
			if switch == 2	then
				if HP > HPMAX * 0.3		then
					step = AI:GetArray( 1 )
					if step == 0	then
						AI:SetEctypeVarShort( mapid, 39, 55 )
						--AI:SetEctypeVarShort( mapid, 38, 1 )
						--AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
						x = AI:GetPosX()
						y = AI:GetPosY()
						AI:ScreenText( "Dream God: Flame blade.", 2 )
						AI:SetEctypeVarShort( mapid, 16, 1 )
						
						AI:SummonMonsterByPos( 51596, x+4, y )
						AI:SummonMonsterByPos( 51596, x-4, y )
						AI:SummonMonsterByPos( 51596, x, y+4 )
						AI:SummonMonsterByPos( 51596, x, y-4 )
						
						AI:SummonMonsterByPos( 55221, x+4, y )
						AI:SummonMonsterByPos( 55221, x-4, y )
						AI:SummonMonsterByPos( 55221, x, y+4 )
						AI:SummonMonsterByPos( 55221, x, y-4 )
						AI:SetArray( 1, 1 )
	        		end
	        		if step == 1	then
	        			AI:SetEctypeVarShort( mapid, 39, 55 )
						--AI:SetEctypeVarShort( mapid, 38, 1 )
						--AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
						id = AI:GetArray( 2 )
						x = AI:GetPlayerX( id )
						y = AI:GetPlayerY( id )
						AI:ScreenText( "Dream God: Chilly blade.", 2 )
						AI:SetEctypeVarShort( mapid, 16, 2 )
						
						AI:SummonMonsterByPos( 51596, x+4, y )
						AI:SummonMonsterByPos( 51596, x-4, y )
						AI:SummonMonsterByPos( 51596, x, y+4 )
						AI:SummonMonsterByPos( 51596, x, y-4 )
						
						AI:SummonMonsterByPos( 55221, x+4, y )
						AI:SummonMonsterByPos( 55221, x-4, y )
						AI:SummonMonsterByPos( 55221, x, y+4 )
						AI:SummonMonsterByPos( 55221, x, y-4 )
						AI:SetArray( 1, 0 )
	        		end
	        		AI:SetArray( 0, 1 )
		        	AI:SetTimer( 0, 14000, 1 )
        		end
        	end
        	
        	switch1 = AI:GetArray( 3 )
        	if switch1 == 2	then
				id = AI:GetArray( 2 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
			AI:PlayEffect( "skill\\Monster\\boss\\yuanlingzhinu\\fire\\tx_yuanlingzhinu_fire.ini" )
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 55224, x, y )
	end