	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/08/02
	--		Author:???
	--		Class:	.Lua
	--		AIName:Monster-Guiwang-51797.lua
	--		Remark:????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--??
			AI:AddSkill(2159,1)
      AI:UseSkill(2159,1)
      AI:Say("Absorb Souls!")				
			AI:ScreenText( "Absorb Souls!" , 2)
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
		    		AI:SetArray(1,0)
		    		end
	    		end
    	else	
			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("Ghostlord Stinger is here!")
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					--??
					AI:AddSkill(2159,1)
      		AI:UseSkill(2159,1)
      		AI:SetTimer(0,15000,65535)
					AI:SetArray(1,2)
				end
			end
   end
end
    	
    			
    
	