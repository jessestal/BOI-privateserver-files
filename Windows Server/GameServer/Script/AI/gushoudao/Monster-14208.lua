	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-14208.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2262,1)
				AI:UseSkill(2262,1)
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
						AI:Say("The Archpriest can never be overcome!")
						AI:AddSkill(2262,1)
						AI:UseSkill(2262,1)
						AI:SetTimer(0,25000,65535)
						AI:SetArray(1,1)
					end
				end
			end
		end