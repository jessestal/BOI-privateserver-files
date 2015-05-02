	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-53210.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2351,1)
				AI:UseSkill(2351,1)
			end
			
			if nIndex == 1 then
				AI:GetRandTarget()
				AI:AddSkill(2352,1)
				AI:UseSkill(2352,1)
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
						AI:Say("Who dares enter the Titan Estate?")
						AI:AddSkill(2351,1)
						AI:UseSkill(2351,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:Say("Die, foolish mortal!")
						AI:GetRandTarget()
						AI:AddSkill(2352,1)
						AI:UseSkill(2352,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:Say("Feel my true power!")
						AI:AddSkill(2353,1)
						AI:UseSkill(2353,1)
						AI:SetArray(1,3)
					end
				end
			end
		end
						
			
			