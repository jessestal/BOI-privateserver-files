	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SetArray( 0, 2 )
		end
		
		if nIndex == 1 then
			AI:SetArray( 2, 2 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
		mapid = AI:GetMapID()
		if t == false then
			AI:SetEctypeVarShort( mapid, 15, 0 )
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 0 )
			AI:SetEctypeVarShort( mapid, 15, 0 )
		else
			index = AI:GetEctypeVarShort( mapid, 15 )
			if index == 1	then
				--AI:AddSkill( 2027, 1 )
				--AI:UseSkill( 2027, 1 )
				--AI:RestoreHPInstant( 60000 )
				
				--????
				AI:RestoreHPInstant( 80000 )
				AI:AddSkill( 2036, 1 )
				AI:UseSkill( 2036, 1 )
				--????
				AI:AddSkill( 2006, 1 )
				AI:UseSkill( 2006, 1 )
				--??3000??
				AI:AddSkill( 2033, 3 )
				AI:UseSkill( 2033, 3 )
				AI:Say( "You drive me crazy." )
				AI:SetEctypeVarShort( mapid, 15, 0 )
			end
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 1, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				AI:SetArray( 2, 1 )
				AI:SetEctypeVarShort( mapid, 15, 0 )
        		AI:SetTimer( 0, 6000, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
			if switch == 2	then
				AI:SetEctypeVarShort( mapid, 11, 1 )
				--AI:SetEctypeVarShort( mapid, 39, 54 )
				--AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
				id = AI:GetArray( 1 )
				x = AI:GetPlayerX( id )
				y = AI:GetPlayerY( id )
				AI:ScreenText( "Aeacus released Darke Swirl and absorbed energy to restore their HP, leave Darke Swirl.", 2 )
				AI:SummonMonsterByPos( 55225, x, y )
				AI:SetArray( 0, 1 )
        		AI:SetTimer( 0, 12000, 1 )
        	end
        	
        	switch1 = AI:GetArray( 2 )
        	if switch1 == 2	then
				id = AI:GetArray( 1 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 2, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
        end
 	end