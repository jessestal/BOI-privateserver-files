	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-30509.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:AddSkill(2311,1)
			AI:UseSkill(2311,1)
--			AI:Say("GUID:02941000000")
		end
		
		if nIndex == 1 then 
			AI:AddSkill(2312,1)
			AI:UseSkill(2312,1)
--			AI:Say("GUID:02941000001")	
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
						AI:Say("Heeeeeeere, fishy, fishy...")
						AI:SetTimer(0,10000,65535)
						AI:SetTimer(1,15000,65535)
						AI:SetArray(1,1)
					end
				end
			end
	end