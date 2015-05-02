	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/28
	--		Author:???
	--		Class:	Monster-12075.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("I'll lunge you all together!")
				AI:AddSkill(2504,1)
				AI:UseSkill(2504,1)
			end
			if nIndex == 1 then
				AI:Say("Don't you feel that the whole world is shaking?!")
				AI:AddSkill(2505,1)
				AI:UseSkill(2505,1)
			end
			if nIndex == 2 then
				AI:Say("Never think about running away from here!!!")
				AI:AddSkill(2506,1)
				AI:UseSkill(2506,1)
			end
--			if nIndex == 3 then
--				AI:Say("GUID:03205000003")
--				AI:AddSkill(2507,1)
--				AI:UseSkill(2507,1)
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
						AI:Say("I shall tear you to ribbons! Die Crush!")
						AI:AddSkill(2504,1)
						AI:UseSkill(2504,1)
						AI:SetTimer(0,15000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:Say("Get out of my way!!!")
						AI:AddSkill(2505,1)
						AI:UseSkill(2505,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.4 then
						AI:Say("Be ready to die! The breath of death befalls on you.")
						AI:AddSkill(2506,1)
						AI:UseSkill(2506,1)
						AI:SetTimer(2,15000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.1 then
						AI:Say("You really annoyed me! I am the Undead!")
						AI:AddSkill(2507,1)
						AI:UseSkill(2507,1)
						AI:SetArray(1,4)
					end
				end
			end
		end