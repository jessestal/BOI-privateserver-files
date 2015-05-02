	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/12/29
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21225.lua
	--		Remark:??????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Mechaslice!")
			AI:AddSkill(2059,1)
      AI:UseSkill(2059,1)
		end
		
		if nIndex == 1 then
			AI:Say("Rush! ")
			AI:GetRandTarget()
			AI:AddSkill(8644,1)
      AI:UseSkill(8644,1)
		end
		
		if nIndex == 2 then						
			--??????
			x = AI:GetPosX()
    	y = AI:GetPosY()
		  r = math.random( 2 , 5 )
		  AI:ScreenText( "Stay away from the bomb, or you will suffer great damage!", 1 )
    	AI:SummonMonsterByPos( 21226 , x+r , y+r )
    end
    
    if nIndex == 3 then						
			--??????
			x = AI:GetPosX()
    	y = AI:GetPosY()
			r = math.random( 3 , 5 )
    	--AI:ScreenText( "GUID:02641000003", 1 )
    	AI:SummonMonsterByPos( 21227 , x+r , y+r )
    	AI:SummonMonsterByPos( 21227 , x-r , y-r )
    end
    
    if nIndex == 4 then
			AI:Say("Terminate! Destroy! Crush! ")
			AI:AddSkill(2065,1)
      AI:UseSkill(2065,1)
		end
end

  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
		if t == false then
					if a > 0 then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:DelTimer(3)
		    				AI:DelTimer(4)
		    		AI:SetArray(1,0)
		    		end
	    		end
    	else	
			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("Protect the land of the Stoneman! Invaders... must be... eliminated! ")
					AI:AddSkill(2059,1)
	        AI:UseSkill(2059,1)
					AI:SetTimer(0,20000,65535)
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					--AI:Say("GUID:02641000006")
					--??????
					AI:GetRandTarget()
					AI:AddSkill(8644,1)
      		AI:UseSkill(8644,1)
					AI:SetTimer(1,25000,65535)
					AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP < HPMAX * 0.75 then
					--??????
					x = AI:GetPosX()
    			y = AI:GetPosY()
		 			r = math.random( 2 , 5 )
		 			AI:ScreenText( "Stay away from the bomb, or you will suffer great damage!", 1 )
    			AI:SummonMonsterByPos( 21226 , x+r , y+r )
    			AI:SetTimer(2,30000,65535)
    			AI:SetArray(1,3)
    		end
    	end
    	if a == 3 then
				if HP < HPMAX * 0.5 then
					--????????
					x = AI:GetPosX()
    			y = AI:GetPosY()
					r = math.random( 3 , 5 )
    			--AI:ScreenText( "GUID:02641000008", 1 )
    			AI:SummonMonsterByPos( 21227 , x+r , y+r )
    			AI:SummonMonsterByPos( 21227 , x-r , y-r )
    			AI:SetTimer(3,35000,65535)
    			AI:SetArray(1,4)
    		end
    	end
    	if a == 4 then
				if HP < HPMAX * 0.1 then
					--??
					AI:Say("Terminate! Destroy! Crush! ")
					AI:AddSkill(2065,1)
      		AI:UseSkill(2065,1)
      		AI:SetTimer(4,60000,65535)
    			AI:SetArray(1,5)
    		end
    	end
   end
end
    	
    			
    
	