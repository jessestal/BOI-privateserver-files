	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55275.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 0 then
     	AI:AddSkill(2210,1)
     	AI:UseSkill(2210,1)
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
					AI:Say("You will never pass!")
					AI:AddSkill(2210,1)
					AI:UseSkill(2210,1)
					AI:SetTimer(0,15000,65535)
					AI:SetArray(1,2)
				end
			end
		end
	end   
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:SetArray(1,0)
      AI:Say("I will become one with the earth.")
	end      