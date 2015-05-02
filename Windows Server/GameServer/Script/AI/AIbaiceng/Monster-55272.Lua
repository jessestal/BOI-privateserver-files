	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	Monster-55272.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("The fire has started!")
			AI:PlayAction("skill\\Monster\\aobao\\fire\\tx_aobao_fire.ini" , 0, 1)
			AI:AddSkill(2215,1)
			AI:UseSkill(2215,1)
		end
		
		if nIndex == 1 then
			AI:AddSkill(2278,1)
			AI:UseSkill(2278,1)
		end
		
		if nIndex == 2 then
			AI:AddSkill(2278,2)
			AI:UseSkill(2278,2)
		end
		
		if nIndex == 3 then
			AI:AddSkill(2278,3)
			AI:UseSkill(2278,3)
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
					AI:Say("The fire has started!")
					AI:AddSkill(2215,1)
					AI:UseSkill(2215,1)
					AI:SetTimer(0,10000,65535)
					AI:SetTimer(1,15000,1)
					AI:SetTimer(2,30000,1)
					AI:SetTimer(3,45000,1)
					AI:SetArray(1,2)
				end
			end
		end
	end