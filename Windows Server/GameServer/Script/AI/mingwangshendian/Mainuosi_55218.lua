	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			AI:SetArray( 0, 2 )
   		end
   		
   		if nIndex == 1	then
			id = AI:GetArray( 4 )
			lastX = AI:GetArray( 2 )
			lastY = AI:GetArray( 3 )
			x = AI:GetPlayerX( id )
			y = AI:GetPlayerY( id )
			
			if x >= lastX	then
				distance_x = x - lastX
			else
				distance_x = lastX - x
			end
			
			if y >= lastY	then
				distance_y = y - lastY
			else
				distance_y = lastY - y
			end 
			
			if distance_x > 1	then
				AI:ScreenText( "Minos: I am rage, who asks you to move it?", 2 )
				--????
				AI:AddSkill( 2006, 1 )
				AI:UseSkill( 2006, 1 )
				AI:AddSkill( 2032, 1 )
                AI:UseSkill( 2032, 1 )
                AI:SetTimer( 3, 3000, 1 )
			else
				if distance_y > 1	then
					AI:ScreenText( "Minos: I am rage, who asks you to move it?", 2 )
					--????
					AI:AddSkill( 2006, 1 )
					AI:UseSkill( 2006, 1 )
					AI:AddSkill( 2032, 1 )
                	AI:UseSkill( 2032, 1 )
                	AI:SetTimer( 3, 3000, 1 )
				end
			end
   		end
   		
   		if nIndex == 2	then
			id = AI:GetArray( 4 )
			lastX = AI:GetArray( 2 )
			lastY = AI:GetArray( 3 )
			x = AI:GetPlayerX( id )
			y = AI:GetPlayerY( id )
			
			--AI:ScreenText( "GUID:02983000002", 2 )
			mapid = AI:GetMapID()
			AI:SetEctypeVarShort( mapid, 35, 11 )
			AI:SummonMonsterByPos( 51597, lastX, lastY )		
   		end
   		
   		if nIndex == 3	then
   			AI:AddSkill( 2006, 1 )
			AI:UseSkill( 2006, 1 )
			AI:AddSkill( 2032, 2 )
            AI:UseSkill( 2032, 2 )
   		end
   		
   		if nIndex == 4 then
			AI:SetArray( 5, 2 )
		end
			
	end   

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        t = AI:HaveAttackTarget()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:SetArray( 3, 0 )
			AI:SetArray( 4, 0 )
			AI:SetArray( 5, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
			AI:DelTimer( 3 )
			AI:DelTimer( 4 )
			--AI:DelTimer( 1 )
		else
			mapid = AI:GetMapID()
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 4, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:Say( "Obey me, or else you will suffer, and die." )
				AI:SetArray( 0, 1 )
				AI:SetArray( 5, 1 )
        		AI:SetTimer( 0, 5000, 1 )
        		AI:SetTimer( 4, 9000, 1 )
        	end
	       
	        if switch == 2	then
				count = AI:GetArray( 1 )
				if count == 0	then
	        		--????
	        		AI:ScreenText( "Minos: I am looking at you, don't move, or else you will die.", 2 )
	        		--AI:SetEctypeVarShort( mapid, 39, 85 )
	        		id = AI:GetArray( 4 )
	        		x = AI:GetPlayerX( id )
	        		y = AI:GetPlayerY( id )
	        		AI:SummonMonsterByPos( 55232, x, y )
	        		AI:SetArray( 2, x )
	        		AI:SetArray( 3, y )
	                AI:SetArray( 1, 1 )
	                AI:SetTimer( 1, 4000, 1 )
	        	end
	        	if count == 1	then
	        		--????
	        		AI:ScreenText( "Minos: Dodge.", 2 )
	        		id = AI:GetArray( 4 )
	        		x = AI:GetPlayerX( id )
	        		y = AI:GetPlayerY( id )
	        		AI:SetArray( 2, x )
	        		AI:SetArray( 3, y )
	                AI:SetArray( 1, 0 )
	                AI:SetTimer( 2, 4000, 1 )
	        	end
	        	AI:SetArray( 0, 1 )
	        	AI:SetTimer( 0, 12000, 1 )
			end
			
			switch1 = AI:GetArray( 5 )
        	if switch1 == 2	then
				id = AI:GetArray( 4 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 5, 1 )
        		AI:SetTimer( 4, 9000, 1 )
        	end
        	
		end
        
    end