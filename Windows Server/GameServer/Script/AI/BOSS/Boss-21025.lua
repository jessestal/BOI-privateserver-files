	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/05/31
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21025.lua
	--		Remark:??????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Have a taste of some Beast Slayer venom!")
			AI:AddSkill(2341,1)
      AI:UseSkill(2341,1)
		end
		
		if nIndex == 1 then
			AI:Say("Here, THIS'll wake you up!")
			AI:GetRandTarget()
			AI:AddSkill(2342,1)
			AI:UseSkill(2342,1)
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
					AI:Say("Who? Who dares to enter my realm?")
					AI:AddSkill(2341,1)
					AI:UseSkill(2341,1)
					AI:SetTimer(0,25000,65535)
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.7 then
					AI:Say("I will offer your souls in sacrifice!")
					AI:AddSkill(2342,1)
					AI:UseSkill(2342,1)
					AI:SetTimer(1,30000,65535)
					AI:SetArray(1,2)
				end
			end
			
			if a == 2 then
				if HP < HPMAX * 0.25 then
					AI:Say("My lord, grant me strength!")
					AI:AddSkill(2343,1)
					AI:UseSkill(2343,1)
					AI:SetArray(1,3)
				end
			end
		end
	end
		