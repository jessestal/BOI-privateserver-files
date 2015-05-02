	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
			
		if nIndex == 0	then
			mapid = AI:GetMapID()
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				AI:SetEctypeVarShort( mapid, 99, 12 )
				AI:SetTimer( 1, 25000, 1 )
	        	AI:SetTimer( 3, 26000, 1 )
	        	AI:AddSkill( 2049, 2 )
				AI:UseSkill( 2049, 2 )
	        	AI:ScreenText( "Okula: Give me wings! If I can't feast on your flesh, your energy will have to do...", 2 )
			else
				AI:SetEctypeVarShort( mapid, 99, 24 )
				AI:SetTimer( 1, 25000, 1 )
	       		AI:SetTimer( 3, 26000, 1 )
	       		AI:ScreenText( "Okula: Give me wings! If I can't feast on your flesh, your energy will have to do...", 2 )
			end
			
			x = AI:GetPosX()
	        y = AI:GetPosY()
	        AI:SummonMonsterByPos( 51685, x+7, y )
	        AI:SummonMonsterByPos( 51685, x-7, y )
	        AI:SummonMonsterByPos( 51685, x, y+7 )
	        AI:SummonMonsterByPos( 51685, x, y-7 )
		end
		
		if nIndex == 1	then
			mapid = AI:GetMapID()
			left = AI:GetEctypeVarShort( mapid, 99 )
			HPMAX = AI:GetHPMax()
			hpunit = HPMAX/100
			hp = hpunit * left
			AI:RestoreHPInstant( hp )
			AI:AddSkill( 2027, 1 )
			AI:UseSkill( 2027, 1 )
			x = AI:GetPosX()
	        y = AI:GetPosY()
	        AI:SummonMonsterByPos( 51688, x, y )
			AI:SetEctypeVarShort( mapid, 99, 0 )
			AI:SetTimer( 2, 6000, 1 )
		end
		
		if nIndex == 2	then
			mapid = AI:GetMapID()
			HP = AI:GetHP()
	        HPMAX = AI:GetHPMax()
	        lose = HPMAX - HP
	        AI:SetEctypeVarInteger( mapid, 119, lose )
	        x = AI:GetPosX()
	        y = AI:GetPosY()
	        a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				level = 62
			else
				level = 61
			end
	        AI:SummonLevelMonsterByPos( 51634 , level , a  , x , y )
	        AI:SummonMonsterByPos( 51638, x, y )
	        AI:Exit()
		end
		
		if nIndex == 3	then
			mapid = AI:GetMapID()
			AI:SetEctypeVarShort( mapid, 97, 1 )
		end
		
		if nIndex == 4	then
			AI:AddSkill( 2027, 1 )
			AI:UseSkill( 2027, 1 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
        mapid = AI:GetMapID()
        t = AI:HaveAttackTarget()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
			AI:DelTimer( 3 )
			AI:DelTimer( 4 )
			AI:SetEctypeVarShort( mapid, 99, 0 )
			AI:SetEctypeVarShort( mapid, 97, 0 )
			AI:SetEctypeVarInteger( mapid, 119, 0 )
			a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				level = 62
			else
				level = 61
			end
	        AI:SummonLevelMonsterByPos( 51634 , level , a  , 141 , 32 )
	        AI:OpenMapMask(8)
	        AI:DelNPC(2255)
			AI:Exit()
		else
			y = AI:GetPosY()
	    	if y >= 53 	then
	    		AI:ScreenText( "Okula: Leaving so soon...?!", 2 )
	    		a = AI:GetEctypeVarInteger( mapid ,110 )
				b = AI:GetEctypeVarInteger( mapid ,111 )
				AI:SetEctypeVarShort( mapid, 99, 0 )
				AI:SetEctypeVarShort( mapid, 97, 0 )
				AI:SetEctypeVarInteger( mapid, 119, 0 )
				if b == 0 then
					level = 62
				else
					level = 61
				end
		        AI:SummonLevelMonsterByPos( 51634 , level , a  , 141 , 32 )
		        AI:OpenMapMask(8)
				AI:DelNPC(2255)
		        AI:Exit()
	    	end
	    	
			lockvar = AI:GetArray( 0 )
			if lockvar == 0	then
				lose = AI:GetEctypeVarInteger( mapid, 119 )
				AI:LoseHPInstant( lose )
				AI:AddSkill( 2027, 1 )
				AI:UseSkill( 2027, 1 )
				AI:SetEctypeVarInteger( mapid, 119, 0 )
				AI:SetEctypeVarShort( mapid, 97, 0 )
				AI:SetArray( 0, 1 )
				AI:SetTimer( 0, 3000, 1 )
				b = AI:GetEctypeVarInteger( mapid ,111 )
				if b == 0 then
					AI:SetTimer(4,6000,2000)
				else
					AI:SetTimer(4,5000,2000)
				end
			end	
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)	
		
		AI:OpenMapMask(8)
		AI:DelNPC(2255)
		
	end