	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SetArray( 0, 2 )
		end
		if nIndex == 1 then
			id = AI:GetArray( 2 )
			distance_1 = AI:GetPlayerDistance( id )
			
			if distance_1 < 6	then
				
				--AI:AddSkill( 2033, 3 )
				--AI:UseSkill( 2033, 3 )
				--??AOE
				AI:AddSkill( 2037, 3 )
				AI:UseSkill( 2037, 3 )
			end
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 55230, x, y )
			AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
		end
		
		if nIndex == 2 then
			AI:SetArray( 0, 2 )
		end
		
		if nIndex == 3 then
			AI:AddStatus( -1, 10119, 9 )
			AI:PlayAction( "specialidle", 2000, 0 )
			AI:SetTimer( 5, 2000, 2 )
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 55229, x, y )
			AI:ScreenText( "Latamantis will release Mind Blast after 5 seconds, dodge out of the light ring.", 2 )
		end
		
		if nIndex == 4 then
			AI:SetArray( 3, 2 )
		end
		
		if nIndex == 5 then
			AI:PlayAction( "specialidle", 2000, 0 )
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
			AI:SetArray( 5, 0 )
			AI:SetArray( 6, 0 )
			AI:SetArray( 7, 0 )
			AI:DelTimer( 8 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
			AI:DelTimer( 3 )
			AI:DelTimer( 4 )
		else
			mapid = AI:GetMapID()
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 2, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 2, 5000, 1 )
        		AI:SetTimer( 4, 9000, 1 )
        	end
			if switch == 2	then
				count = AI:GetArray( 1 )
				if count == 0	then
					AI:SetEctypeVarShort( mapid, 39, 51 )
					id = AI:GetArray( 2 )
					x = AI:GetPlayerX( id )
					y = AI:GetPlayerY( id )
					AI:SummonMonsterByPos( 51596, x, y )
					say = AI:GetArray( 4 )
					if say == 0		then
						AI:Say( "Humans have a mind, why are they petrified?" )
						AI:SetArray( 4, 1 )
					end
					--???
					AI:AddSkill( 2017, 1 )
					AI:UseSkill( 2017, 1 )
					AI:SetTimer( 1, 13000, 1 )
					AI:SetTimer( 3, 8000, 1 )
					AI:SetArray( 1, 1 )
				end
	        	if count == 1	then
					AI:SetEctypeVarShort( mapid, 39, 51 )
					id = AI:GetArray( 2 )
					x = AI:GetPlayerX( id )
					y = AI:GetPlayerY( id )
					AI:SummonMonsterByPos( 51596, x, y )
					say = AI:GetArray( 5 )
					if say == 0		then
						AI:Say( "Humans are not able to resist the netherworld." )
						AI:SetArray( 5, 1 )
					end
					AI:AddSkill( 2010, 1 )
					AI:UseSkill( 2010, 1 )
					AI:SetTimer( 1, 13000, 1 )
					AI:SetTimer( 3, 8000, 1 )
					AI:SetArray( 1, 2 )
	        	end
	        	if count == 2	then
					AI:SetEctypeVarShort( mapid, 39, 51 )
					id = AI:GetArray( 2 )
					x = AI:GetPlayerX( id )
					y = AI:GetPlayerY( id )
					AI:SummonMonsterByPos( 51596, x, y )
					say = AI:GetArray( 6 )
					if say == 0		then
						AI:Say( "Don't bring lousy humans into my presence." )
						AI:SetArray( 6, 1 )
					end
					--???
					AI:AddSkill( 2011, 1 )
					AI:UseSkill( 2011, 1 )
					AI:SetTimer( 1, 13000, 1 )
					AI:SetTimer( 3, 8000, 1 )
					AI:SetArray( 1, 3 )
				end
				if count == 3	then
					AI:SetEctypeVarShort( mapid, 39, 51 )
					id = AI:GetArray( 2 )
					x = AI:GetPlayerX( id )
					y = AI:GetPlayerY( id )
					AI:SummonMonsterByPos( 51596, x, y )
					say = AI:GetArray( 7 )
					if say == 0		then
						AI:Say( "Humans are greedier than pigs." )
						AI:SetArray( 7, 1 )
					end
					--??
					AI:AddSkill( 2012, 1 )
					AI:UseSkill( 2012, 1 )
					AI:SetTimer( 1, 13000, 1 )
					AI:SetTimer( 3, 8000, 1 )
					AI:SetArray( 1, 0 )
				end
				AI:SetArray( 0, 1 )
        		AI:SetTimer( 0, 15000, 1 )
        	end
        	
        	switch1 = AI:GetArray( 3 )
        	if switch1 == 2	then
        		id = AI:GetArray( 2 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 3, 1 )
        		AI:SetTimer( 4, 9000, 1 )
        	end
        	
        end
 	end