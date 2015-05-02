	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SetArray( 0, 2 )
		end
		if nIndex == 1 then
			mapid = AI:GetMapID()
			AI:SetEctypeVarShort( mapid, 39, 81 )
			x = AI:GetArray( 2 )
			y = AI:GetArray( 3 )
			random = AI:GetRand( 3 )
			if random == 0	then
				AI:Say( "Accept baptism of flame!" )
			end
			if random == 1	then
				AI:Say( "The netherworld is more powerful than you think." )
			end
			if random == 2	then
				AI:Say( "Let everything be burnt to ash." )
			end
			if random == 3	then
				AI:Say( "Go to hell, sinner." )
			end
			AI:SummonMonsterByPos( 51596, x, y )
		end
		
		if nIndex == 2	then
			AI:SetArray( 4, 2 )
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
			AI:SetArray( 4, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
		else
			mapid = AI:GetMapID()
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 1, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				AI:SetArray( 4, 1 )
        		AI:SetTimer( 0, 6000, 1 )
        		AI:SetTimer( 2, 9000, 1 )
        	end
			if switch == 2	then
				--AI:SetEctypeVarShort( mapid, 39, 54 )
				AI:SetEctypeVarShort( mapid, 11, 2 )
				--AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
				AI:ScreenText( "Hypnos released Blast Bomb, it will blast after 4 seconds, keep off the bomb.", 2 )
				AI:AddSkill( 2011, 1 )
				AI:UseSkill( 2011, 1 )
				--AI:AddStatus( -1, 10119, 7 )
				--AI:PlayAction( "specialidle", 4500, 0 )
				id = AI:GetArray( 1 )
				x = AI:GetPlayerX( id )
				y = AI:GetPlayerY( id )
				AI:SummonMonsterByPos( 55228, x, y )
				AI:SetArray( 2, x )
				AI:SetArray( 3, y )
				
				AI:SummonMonsterByPos( 55225, x, y )
				AI:SummonMonsterByPos( 55225, x+2, y )
				AI:SummonMonsterByPos( 55225, x-2, y )
				AI:SummonMonsterByPos( 55225, x, y+2 )
				AI:SummonMonsterByPos( 55225, x, y-2 )
				AI:SummonMonsterByPos( 55225, x+2, y+2 )
				AI:SummonMonsterByPos( 55225, x-2, y-2 )
				AI:SummonMonsterByPos( 55225, x+1, y-1 )
				AI:SummonMonsterByPos( 55225, x-1, y+1 )
				
				AI:SummonMonsterByPos( 55225, x+5, y+5 )
				AI:SummonMonsterByPos( 55225, x-5, y-5 )
				
				AI:SummonMonsterByPos( 55225, x+2, y+5 )
				AI:SummonMonsterByPos( 55225, x+5, y+2 )
				
				AI:SummonMonsterByPos( 55225, x-2, y-5 )
				AI:SummonMonsterByPos( 55225, x-5, y-2 )
				
				AI:SummonMonsterByPos( 55225, x+7, y+2 )
				AI:SummonMonsterByPos( 55225, x+7, y-2 )
				AI:SummonMonsterByPos( 55225, x-7, y+2 )
				AI:SummonMonsterByPos( 55225, x-7, y-2 )
				
				AI:SummonMonsterByPos( 55225, x+7, y+5 )
				AI:SummonMonsterByPos( 55225, x+7, y-5 )
				AI:SummonMonsterByPos( 55225, x-7, y+5 )
				AI:SummonMonsterByPos( 55225, x-7, y-5 )
				
				AI:SummonMonsterByPos( 55225, x+5, y+7 )
				AI:SummonMonsterByPos( 55225, x-5, y+7 )
				AI:SummonMonsterByPos( 55225, x+5, y-7 )
				AI:SummonMonsterByPos( 55225, x-5, y-7 )
				
				AI:SummonMonsterByPos( 55225, x+2, y+7 )
				AI:SummonMonsterByPos( 55225, x-2, y+7 )
				AI:SummonMonsterByPos( 55225, x+2, y-7 )
				AI:SummonMonsterByPos( 55225, x-2, y-7 )
				
				AI:SummonMonsterByPos( 55225, x+7, y )
				AI:SummonMonsterByPos( 55225, x-7, y )
				AI:SummonMonsterByPos( 55225, x, y+7 )
				AI:SummonMonsterByPos( 55225, x, y-7 )
				AI:SummonMonsterByPos( 55225, x+7, y+7 )
				AI:SummonMonsterByPos( 55225, x-7, y-7 )
				AI:SummonMonsterByPos( 55225, x+7, y-7 )
				AI:SummonMonsterByPos( 55225, x-7, y+7 )
				
				AI:SetArray( 0, 1 )
        		AI:SetTimer( 0, 15000, 1 )
        		AI:SetTimer( 1, 4300, 1 )
        	end
        	
        	switch1 = AI:GetArray( 4 )
        	if switch1 == 2	then
				id = AI:GetArray( 1 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 4, 1 )
        		AI:SetTimer( 2, 9000, 1 )
        	end
        	
        end
 	end