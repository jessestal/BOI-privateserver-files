	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/05/31
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21027.lua
	--		Remark:????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Be quiet!!!")
			AI:AddSkill(2347,1)
      AI:UseSkill(2347,1)
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
					AI:Say("This place has seen no people in many years - who ARE you?")
					AI:AddSkill(2347,1)
					AI:UseSkill(2347,1)
					AI:SetTimer(0,30000,65535)
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.25 then
					AI:Say("Awaken, my Devilhunter powers!")
					AI:AddSkill(2348,1)
					AI:UseSkill(2348,1)
					AI:SetArray(1,2)
				end
			end
		end
	end
	