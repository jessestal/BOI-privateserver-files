	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:SetArray( 0, 2 )
		end

		if nIndex == 1 then
			AI:SetArray( 1, 2 )
		end
		
		if nIndex == 2 then
			AI:SetArray( 8, 2 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
       
       	mapid = AI:GetMapID() 
		t = AI:HaveAttackTarget()
		if t == false then
			AI:SetEctypeVarShort( mapid, 20, 0 )
			AI:SetEctypeVarShort( mapid, 21, 0 )
			AI:SetEctypeVarShort( mapid, 22, 0 )
			AI:SetEctypeVarShort( mapid, 23, 0 )
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:SetArray( 3, 0 )
			AI:SetArray( 4, 0 )
			AI:SetArray( 5, 0 )
			AI:SetArray( 6, 0 )
			AI:SetArray( 7, 0 )
			AI:SetArray( 8, 0 )		
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
		else
			lock = AI:GetArray( 4 )
			if lock == 0	then
				mapid = AI:GetMapID()
				temp = AI:GetEctypeVarShort( mapid, 20 )
				AI:SetArray( 4, temp )
			end
			step = AI:GetArray( 4 )
			if step == 0	then
				switch = AI:GetArray( 0 )
				if switch == 0	then
					AI:SetEctypeVarShort( mapid, 21, 0 )
					AI:SetEctypeVarShort( mapid, 22, 0 )
					AI:SetEctypeVarShort( mapid, 23, 0 )
					id = AI:GetEctypeVarInteger( mapid, 119 )
					AI:SetArray( 5, id )
					AI:ModifyEnmity( id, 900000000 )
					AI:SetArray( 0, 1 )
					AI:SetArray( 8, 1 )
	        		AI:SetTimer( 0, 6000, 1 )
	        		AI:SetTimer( 2, 9000, 1 )
        		end
        		HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		
        		if HP < HPMAX * 0.7		then
        			warning = AI:GetArray( 7 )
        			if warning == 0		then
        				AI:ScreenText( "When Hypnos's HP reduces to half, he will summon Shadow Phantom, pay attention.", 2 )
        				AI:SetArray( 7, 1 )
        			end
        		end
        		
        		if HP < HPMAX * 0.5		then
        			if switch < 3	then 
						AI:SetEctypeVarShort( mapid, 39, 55 )
						AI:SetEctypeVarShort( mapid, 21, 1 )
						AI:SetEctypeVarShort( mapid, 22, 2 )
						AI:SetEctypeVarShort( mapid, 23, 3 )
						
						x = AI:GetPosX()
						y = AI:GetPosY()
						AI:SetArray( 2, x )
						AI:SetArray( 3, y )
						AI:SummonMonsterByPos( 51596, x-5, y )
						AI:SummonMonsterByPos( 55227, x-5, y )
						AI:SummonMonsterByPos( 51596, x, y+5 )
						AI:SummonMonsterByPos( 55227, x, y+5 )
						AI:SummonMonsterByPos( 51596, x+5, y )
						AI:SummonMonsterByPos( 55227, x+5, y )

						AI:SetArray( 0, 4 )
						AI:Exit()
					end
        		else
	        		if switch == 2	then
						id = AI:GetArray( 5 )
						x = AI:GetPlayerX( id )
						y = AI:GetPlayerY( id )
						AI:SetEctypeVarShort( mapid, 16, 3 )
						AI:SetEctypeVarShort( mapid, 39, 55 )
						random = AI:GetRand( 3 )
						if random == 0	then
							AI:Say( "I will kill everyone who opposes me." )
						end
						if random == 1	then
							AI:Say( "Do you prepare for death?" )
						end
						if random == 2	then
							AI:Say( "Let everything be burnt to ash." )
						end
						if random == 3	then
							AI:Say( "Go to hell." )
						end
						direction = AI:GetArray( 6 )
						if direction == 0	then
							AI:SummonMonsterByPos( 51596, x+6, y-3 )
							AI:SummonMonsterByPos( 51596, x+6, y )
							AI:SummonMonsterByPos( 51596, x+6, y+3 )
							AI:SummonMonsterByPos( 51596, x+5, y+5 )
							AI:SummonMonsterByPos( 51596, x+3, y+6 )
							AI:SummonMonsterByPos( 51596, x, y+6 )
							AI:SummonMonsterByPos( 51596, x-3, y+6 )
							AI:SummonMonsterByPos( 51596, x-5, y+5 )
							AI:SummonMonsterByPos( 51596, x-6, y+3 )
							AI:SummonMonsterByPos( 51596, x-6, y )
							AI:SummonMonsterByPos( 51596, x-6, y-3 )
								
							AI:SummonMonsterByPos( 55226, x+6, y-3 )
							AI:SummonMonsterByPos( 55226, x+6, y )
							AI:SummonMonsterByPos( 55226, x+6, y+3 )
							AI:SummonMonsterByPos( 55226, x+5, y+5 )
							AI:SummonMonsterByPos( 55226, x+3, y+6 )
							AI:SummonMonsterByPos( 55226, x, y+6 )
							AI:SummonMonsterByPos( 55226, x-3, y+6 )
							AI:SummonMonsterByPos( 55226, x-5, y+5 )
							AI:SummonMonsterByPos( 55226, x-6, y+3 )
							AI:SummonMonsterByPos( 55226, x-6, y )
							AI:SummonMonsterByPos( 55226, x-6, y-3 )
							AI:SetArray( 6, 1 )
						end
						if direction == 1	then
							AI:SummonMonsterByPos( 51596, x+6, y-3 )
							AI:SummonMonsterByPos( 51596, x+6, y )
							AI:SummonMonsterByPos( 51596, x+6, y+3 )
							AI:SummonMonsterByPos( 51596, x+5, y-5 )
							AI:SummonMonsterByPos( 51596, x+3, y-6 )
							AI:SummonMonsterByPos( 51596, x, y-6 )
							AI:SummonMonsterByPos( 51596, x-3, y-6 )
							AI:SummonMonsterByPos( 51596, x-5, y-5 )
							AI:SummonMonsterByPos( 51596, x-6, y+3 )
							AI:SummonMonsterByPos( 51596, x-6, y )
							AI:SummonMonsterByPos( 51596, x-6, y-3 )
								
							AI:SummonMonsterByPos( 55226, x+6, y-3 )
							AI:SummonMonsterByPos( 55226, x+6, y )
							AI:SummonMonsterByPos( 55226, x+6, y+3 )
							AI:SummonMonsterByPos( 55226, x+5, y-5 )
							AI:SummonMonsterByPos( 55226, x+3, y-6 )
							AI:SummonMonsterByPos( 55226, x, y-6 )
							AI:SummonMonsterByPos( 55226, x-3, y-6 )
							AI:SummonMonsterByPos( 55226, x-5, y-5 )
							AI:SummonMonsterByPos( 55226, x-6, y+3 )
							AI:SummonMonsterByPos( 55226, x-6, y )
							AI:SummonMonsterByPos( 55226, x-6, y-3 )
							AI:SetArray( 6, 0 )
						end
						
						AI:SetArray( 0, 1 )
						AI:SetTimer( 0, 12000, 1 )
	        		end
	        		
	        		switch1 = AI:GetArray( 8 )
		        	if switch1 == 2	then
						id = AI:GetArray( 5 )
						AI:ModifyEnmity( id, 900000000 )
						AI:SetArray( 8, 1 )
		        		AI:SetTimer( 2, 9000, 1 )
		        	end
	        	end
			end
			
			if step == 2	then
				switch = AI:GetArray( 1 )
				if switch == 0	then
					HPMAX = AI:GetHPMax()
					HP = HPMAX * 0.5
					AI:LoseHPInstant( HP )
					id = AI:GetEctypeVarInteger( mapid, 119 )
					AI:SetEctypeVarShort( mapid, 35, 11 )
					AI:SetArray( 5, id )
					AI:ModifyEnmity( id, 900000000 )
					AI:AddSkill( 2036, 1 )
					AI:UseSkill( 2036, 1 )
					AI:SetArray( 1, 1 )
					AI:SetArray( 8, 1 )
			        AI:SetTimer( 1, 6000, 1 )
			        AI:SetTimer( 2, 9000, 1 )
			    end
			    if switch == 2	then
			        AI:SetEctypeVarShort( mapid, 11, 3 )
			        id = AI:GetArray( 5 )
					x = AI:GetPlayerX( id )
					y = AI:GetPlayerY( id )
					AI:SummonMonsterByPos( 55225, x, y )
					AI:SetArray( 1, 1 )
					AI:Say( "You court death." )
					AI:SetTimer( 1, 10000, 1 )
			    end
			    switch1 = AI:GetArray( 8 )
		        if switch1 == 2	then
					id = AI:GetArray( 5 )
					AI:ModifyEnmity( id, 900000000 )
					AI:SetArray( 8, 1 )
		        	AI:SetTimer( 2, 9000, 1 )
		        end
	        end
		end			
  	 end
