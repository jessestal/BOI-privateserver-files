	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)

		if nIndex == 0	then
			mapid = AI:GetMapID()
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText( "Okula: Ah! My guests have arrived!", 2 )
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:ScreenText( "Okula: And what wonderful timing! I was just about to sit down for a meal!", 2 )
				AI:SetArray(1,2)
			elseif a == 2 then
				AI:ScreenText( "Okula: Make yourself comfortable. I only need... one... BITE!", 2 )
				AI:SetArray(1,3)
			elseif a == 3 then
				AI:SetArray(1,4)
				AI:SetArray(0,2)
				AI:SetEctypeVarShort( mapid, 98, 2 )
				AI:ChangeFaction(4)
			end
   		end

   		if nIndex == 1	then
   			mapid = AI:GetMapID()
   			--n = AI:GetEnmityCount()
   			--t = n - 1
   			--rand = AI:GetRand(t)
   			id = AI:GetRandTarget()
   			x = AI:GetPlayerX( id )
			y = AI:GetPlayerY( id )
			AI:SummonMonsterByPos( 51639, x, y )
			time = AI:GetArray(5)
			time = time + 1
			AI:SetArray(5,time)
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				if time == 3 	then
					change = AI:GetArray(3)
					change = change + 1
					AI:SetArray(3,change)
					AI:SetTimer(2,8000,1)
					AI:SetArray(5,0)
				end
			else
				if time == 5 	then
					change = AI:GetArray(3)
					change = change + 1
					AI:SetArray(3,change)
					AI:SetTimer(2,8000,1)
					AI:SetArray(5,0)
				end
			end

   		end

   		if nIndex == 2	then
   			mapid = AI:GetMapID()
   			b = AI:GetEctypeVarInteger( mapid ,111 )
			x = AI:GetPosX()
	        y = AI:GetPosY()
	        AI:ScreenText( "Okula: Your sizzling flesh smells fantastic!", 2 )

			AI:SummonMonsterByPos( 51680, x, y )
		    AI:SummonMonsterByPos( 51723, x+2, y+2 )
		    AI:SummonMonsterByPos( 51723, x-2, y-2 )
		    AI:SummonMonsterByPos( 51723, x+2, y-2 )
		    AI:SummonMonsterByPos( 51723, x-2, y+2 )

		    AI:SummonMonsterByPos( 51680, x+2, y )
		    AI:SummonMonsterByPos( 51680, x+4, y )
		    AI:SummonMonsterByPos( 51680, x+6, y )
		    AI:SummonMonsterByPos( 51680, x+8, y )
		    AI:SummonMonsterByPos( 51680, x+10, y )

		    AI:SummonMonsterByPos( 51680, x-2, y )
		    AI:SummonMonsterByPos( 51680, x-4, y )
		    AI:SummonMonsterByPos( 51680, x-6, y )
		    AI:SummonMonsterByPos( 51680, x-8, y )
		    AI:SummonMonsterByPos( 51680, x-10, y )

		    AI:SummonMonsterByPos( 51680, x, y+2 )
		    AI:SummonMonsterByPos( 51680, x, y+4 )
		    AI:SummonMonsterByPos( 51680, x, y+6 )
		    AI:SummonMonsterByPos( 51680, x, y+8 )

		    AI:SummonMonsterByPos( 51680, x, y-2 )
		    AI:SummonMonsterByPos( 51680, x, y-4 )
		    AI:SummonMonsterByPos( 51680, x, y-6 )
		    AI:SummonMonsterByPos( 51680, x, y-8 )

	        change = AI:GetArray(3)
			change = change + 1
			AI:SetArray(3,change)
			if change < 4	then
	        	AI:SetTimer(4,5000,1)
	        else
	        	AI:SetTimer(3,10000,1)
	        end
   		end

   		if nIndex == 3	then
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
	        AI:SummonLevelMonsterByPos( 51635 , level , a  , x , y )
	        AI:SummonMonsterByPos( 51638, x, y )
	        AI:Exit()
   		end

   		if nIndex == 4	then
   			mapid = AI:GetMapID()
   			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				AI:SetTimer(1,4000,3)
				--AI:AddSkill( 2049, 1 )
				--AI:UseSkill( 2049, 1 )
			else
				AI:SetTimer(1,3000,6)
				--AI:AddSkill( 2049, 2 )
				--AI:UseSkill( 2049, 2 )
			end
   		end

   		if nIndex == 5	then
   			AI:ScreenText( "Okula: I'll summon the bones of a god!", 2 )
   		end

	end

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)

        mapid = AI:GetMapID()
        n = AI:GetEnmityCount()
        if n < 1 then
        	AI:SetArray(2,0)
        	AI:SetArray(3,0)
        	AI:SetArray(5,0)
			AI:DelTimer( 1 )
			AI:DelTimer( 2 )
			AI:DelTimer( 3 )
			AI:DelTimer( 4 )
			open = AI:GetArray( 7 )
			if open == 1 	then
				AI:OpenMapMask(8)
				AI:DelNPC(2255)
				AI:SetArray(7,0)
			end
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
	    	--Speak Shit
	        lockvar = AI:GetArray( 4 )
	        if lockvar == 0 	then
	        	speak = AI:GetEctypeVarShort( mapid, 98 )
	        	if speak == 0 	then
	        		AI:ChangeFaction(11)
	        		AI:SetArray(0,0)
	        	else
	        		lose = AI:GetEctypeVarInteger( mapid, 119 )
					AI:LoseHPInstant(lose)
					AI:AddSkill( 2027, 1 )
					AI:UseSkill( 2027, 1 )
					AI:SetEctypeVarInteger( mapid, 119, 0 )
					AI:SetArray(0,2)
				end
				AI:SetArray(4,1)
	        end
	    	a = AI:GetArray(0)
	        if a == 0	then
	        	AI:SetTimer(0 , 5000 , 4 )
	    		AI:SetArray(0,1)
	        elseif a == 2 then
	        	start = AI:GetArray(2)
		        if start == 0	then
					AI:SetTimer(4,6000,1)
					AI:SetTimer(5,4000,1)
					AI:SetArray(2,1)
		        end
		        open = AI:GetArray( 7 )
				if open == 0 	then
					AI:CloseMapMask(8)
					AI:AddNPC(2255)
					AI:SetArray(7,1)
				end
	        end

	    end

    end

    function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

		AI:OpenMapMask(8)
		AI:OpenMapMask(9)
		AI:DelNPC(2255)

	end
