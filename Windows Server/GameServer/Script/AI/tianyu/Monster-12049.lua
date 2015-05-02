	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/04/01
	--		Author:???
	--		Class:	Monster-12049.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("I'll destroy Atlantis when I'm done with you!")
				AI:AddSkill(2319,1)
				AI:UseSkill(2319,1)
			end
			
			if nIndex == 1 then
				AI:Say("I will devour your soul!")
				AI:AddSkill(2320,1)
				AI:UseSkill(2320,1)
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
						AI:Say("Feel the power of salvation!")
						AI:AddSkill(2319,1)
						AI:UseSkill(2319,1)
						AI:SetTimer(0,15000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:Say("You cannot escape!")
						AI:AddSkill(2320,1)
						AI:UseSkill(2320,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:Say("We shall be together even in death!")
						AI:AddSkill(2321,1)
						AI:UseSkill(2321,1)
						AI:SetArray(1,3)
					end
				end
			end
		end