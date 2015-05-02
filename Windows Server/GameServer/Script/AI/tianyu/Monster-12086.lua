	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/28
	--		Author:???
	--		Class:	Monster-12086.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("The strength of Abyss will kill you in an instant!")
				AI:AddSkill(2508,1)
				AI:UseSkill(2508,1)
			end
			if nIndex == 1 then
				AI:Say("Behold my power!!")
				AI:AddSkill(2509,1)
				AI:UseSkill(2509,1)
			end
			if nIndex == 2 then
				AI:Say("This world is doomed to being destroyed. So will you!")
				AI:AddSkill(2510,1)
				AI:UseSkill(2510,1)
			end
--			if nIndex == 3 then
--				AI:Say("GUID:03206000003")
--				AI:AddSkill(2511,1)
--				AI:UseSkill(2511,1)
--			end
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
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("Abyss Blade!! Destroy these ignorant human beings!")
						AI:AddSkill(2508,1)
						AI:UseSkill(2508,1)
						AI:SetTimer(0,15000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:Say("I'll throw you all into the endless Abyss!!")
						AI:AddSkill(2509,1)
						AI:UseSkill(2509,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.4 then
						AI:Say("Let fear occupy your heart!")
						AI:AddSkill(2510,1)
						AI:UseSkill(2510,1)
						AI:SetTimer(2,15000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.1 then
						AI:Say("Only Abyss is the unique law of the world!")
						AI:AddSkill(2511,1)
						AI:UseSkill(2511,1)
						AI:SetArray(1,4)
					end
				end
			end
		end