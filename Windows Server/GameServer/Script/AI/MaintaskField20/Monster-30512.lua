	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/21
	--		Author:???
	--		Class:	Monster-30512.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2313,1)
				AI:UseSkill(2313,1)
			end
			
			if nIndex == 1 then
				AI:AddSkill(2314,1)
				AI:UseSkill(2314,1)
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
						AI:SetTimer(0,30000,65535)
						AI:ScreenText("Ringo: Keep that thing busy while I clear the wreckage!",1)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:SetTimer(1,30000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:AddSkill(2315,1)
						AI:UseSkill(2315,1)
						AI:SetArray(1,3)
					end
				end
			end
		end
		
		function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    
    AI:ScreenText("Ringo: I'm on the waist deck, hurry!",1)
     
		end