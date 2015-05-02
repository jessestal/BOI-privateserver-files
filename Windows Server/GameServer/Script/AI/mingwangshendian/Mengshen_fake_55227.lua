	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			count = AI:GetArray( 2 )
			count = count + 1
			AI:SetArray( 2, count )
			AI:PlayEffect( "skill\\Monster\\boss\\xinlingkongju\\fire\\tx_xinlingkongju_fire.ini" )
			id = AI:GetArray( 5 )
			distance = AI:GetPlayerDistance( id )
			if distance < 4	then
				AI:AddSkill( 2037, 1 )
				AI:UseSkill( 2037, 1 )
			end
			AI:SetArray( 0, 2 )
		end
		
		if nIndex == 1	then
			AI:SetArray( 6, 2 )
		end
		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
        mapid = AI:GetMapID()
        t = AI:HaveAttackTarget()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:SetArray( 2, 0 )
			AI:SetArray( 3, 0 )
			AI:SetArray( 4, 0 )
			AI:SetArray( 5, 0 )
			AI:SetArray( 6, 0 )
			a = AI:GetArray( 1 )
			if a == 1	then
				AI:SummonMonsterByPos( 55220, 163, 80 )
			end
			AI:SetEctypeVarShort( mapid, 20, 0 )
			AI:SetArray( 1, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:Exit()
		else
			switch = AI:GetArray( 0 )
			if switch == 0	then
				AI:AddSkill(2018,1)
        		AI:UseSkill(2018,1)
				a1 = AI:GetEctypeVarShort( mapid, 21 )
				a2 = AI:GetEctypeVarShort( mapid, 22 )
				a3 = AI:GetEctypeVarShort( mapid, 23 )
				if a1 == 1	then
					AI:SetArray( 1, a1 )
					AI:SetEctypeVarShort( mapid, 21, 0 )
				else
					if a2 == 2 then
						AI:SetArray( 1, a2 )
						AI:SetEctypeVarShort( mapid, 22, 0 )
					else
						AI:SetArray( 1, a3 )
						AI:SetEctypeVarShort( mapid, 23, 0 )
					end
				end
				AI:ScreenText( "Hypnos summoned Shadow Phantom, Shadow Phantom will disappear after 20 seconds, get out of the attack range of Shadow Phantom.", 2 )
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 5, id )
				AI:SetArray( 6, 1 )
				AI:SetArray( 0, 1 )
				AI:SetTimer( 0, 8000, 1 )
				AI:SetTimer( 1, 9000, 1 )
			end
				
			if switch == 2	then
				a = AI:GetArray( 1 )
				count = AI:GetArray( 2 )
				if a == 1	then
					if count == 2	then
						AI:SetEctypeVarShort( mapid, 20, 2 )
						AI:SetEctypeVarShort( mapid, 39, 55 )
						id = AI:GetArray( 5 )
						x = AI:GetPlayerX( id )
						y = AI:GetPlayerY( id )
						AI:SummonMonsterByPos( 51596, x+2, y+2 )
						AI:SummonMonsterByPos( 55220, x+2, y+2 )
						AI:SetArray( 0, 4 )
						AI:Exit()
					end
				end
				if a == 2	then
					if count == 2	then
						AI:SetArray( 0, 4 )
						AI:Exit()
					end
				end
				if a == 3	then
					if count == 2	then
						AI:SetArray( 0, 4 )
						AI:Exit()
					end
				end
				AI:Say( "I want to eat meat." )
				AI:SetArray( 0, 1 )
				AI:SetTimer( 0, 12000, 1 )
			end
			
			switch1 = AI:GetArray( 6 )
        	if switch1 == 2	then
				id = AI:GetArray( 5 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 6, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
		end
        
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		a = AI:GetArray( 1 )
		if a == 1	then
			AI:SetEctypeVarShort( mapid, 20, 2 )
			AI:SetEctypeVarShort( mapid, 39, 55 )
			id = AI:GetArray( 5 )
			x = AI:GetPlayerX( id )
			y = AI:GetPlayerY( id )
			AI:SummonMonsterByPos( 51596, x+2, y+2 )
			AI:SummonMonsterByPos( 55220, x+2, y+2 )
		end		
	end