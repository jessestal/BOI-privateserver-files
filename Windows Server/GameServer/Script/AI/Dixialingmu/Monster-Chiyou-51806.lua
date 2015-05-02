	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/08/02
	--		Author:???
	--		Class:	.Lua
	--		AIName:Monster-Chiyou-51806.lua
	--		Remark:??
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("The land will break under my storms!")
			AI:AddSkill(2152,1)
      AI:UseSkill(2152,1)
		end
		
		if nIndex == 1 then
			AI:Say("I shall cover the world in darkness!")
			--AI:GetRandTarget()
			AI:AddSkill(2153,1)
      AI:UseSkill(2153,1)
		end
		
		if nIndex == 2 then						
			--????
			AI:Say("Aurora Shield!")
		  AI:ScreenText( "Aurora Shield!", 1 )
    	AI:AddSkill(2154,1)
      AI:UseSkill(2154,1)
    end
    
    if nIndex == 3 then						
			--????
			AI:Say("I will devour your souls! Your blood will nourish me!")
			AI:ScreenText( "I will devour your souls! Your blood will nourish me!", 1 )
			AI:GetRandTarget()
			AI:AddSkill(2155,1)
      AI:UseSkill(2155,1)
      HPMAX = AI:GetHPMax()
      local rhp = HPMAX * 0.01
      AI:RestoreHPInstant(rhp)
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
		    			AI:SetArray(1,0)
		    		end
	    		end
    	else	
			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("I am Chiyu!")
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					--????
					AI:AddSkill(2152,1)
      		AI:UseSkill(2152,1)
      		AI:SetTimer(0,10000,65535)
					--AI:SetTimer(1,25000,65535)
					AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP < HPMAX * 0.66 then
					--????
					AI:AddSkill(2153,1)
      		AI:UseSkill(2153,1)
    			AI:SetTimer(1,12000,65535)
    			AI:SetArray(1,3)
    		end
    	end
    	if a == 3 then
				if HP < HPMAX * 0.3 then
					AI:DelTimer(0)
    			--AI:SetTimer(3,35000,65535)
    			AI:SetArray(1,4)
    		end
    	end
    	if a == 4 then
				if HP < HPMAX * 0.25 then
					--????
					AI:Say("Aurora Shield!")
				  AI:ScreenText( "Aurora Shield!", 1 )
					AI:AddSkill(2154,1)
      		AI:UseSkill(2154,1)
      		AI:SetTimer(2,30000,65535)
    			AI:SetArray(1,5)
    		end
    	end
    	if a == 5 then
				if HP < HPMAX * 0.15 then
					--????
					AI:Say("I will devour your souls! Your blood will nourish me!")
					AI:ScreenText( "I will devour your souls! Your blood will nourish me!", 1 )
					AI:GetRandTarget()
					AI:AddSkill(2155,1)
      		AI:UseSkill(2155,1)
      		AI:SetTimer(3,20000,65535)
      		local rhp = HPMAX * 0.01
      		AI:RestoreHPInstant(rhp)
    			AI:SetArray(1,6)
    		end
    	end
   end
end
    	
    			
    
	