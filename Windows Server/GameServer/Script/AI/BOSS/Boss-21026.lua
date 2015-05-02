	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/05/31
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21026.lua
	--		Remark:?????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Ahh, the power of souls is converging on my weapon...!")
			AI:AddSkill(2344,1)
      AI:UseSkill(2344,1)
		end
		
		if nIndex == 1 then
			AI:Say("You worthless vermin! I'll crush you all!")
			AI:AddSkill(2345,1)
			AI:UseSkill(2345,1)
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
		    			AI:SetArray(1,0)
		    		end
	    		end
    	else	
			if a == 0 then
				if HP < HPMAX then
					AI:Say("No one, NO one can stop me! And that includes you!")
					AI:AddSkill(2344,1)
					AI:UseSkill(2344,1)
					AI:SetTimer(0,25000,65535)
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.7 then
					AI:Say("Don't think you can defeat me so easily!")
					AI:AddSkill(2345,1)
					AI:UseSkill(2345,1)
					AI:SetTimer(1,30000,65535)
					AI:SetArray(1,2)
				end
			end
			
			if a == 2 then
				if HP < HPMAX * 0.25 then
					AI:Say("Feel my true power!")
					AI:AddSkill(2346,1)
					AI:UseSkill(2346,1)
					AI:SetArray(1,3)
				end
			end
		end
	end