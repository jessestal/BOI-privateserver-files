	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/4/6
	--		Author:???
	--		Class:	.Lua
	--		AIName:30256-xuanwu.lua
	--		Remark:??
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			
			--AI:Say("GUID:02637000000")
			AI:AddSkill(2107,1)
      AI:UseSkill(2107,1)
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
					--????+????
					--AI:Say("GUID:02637000001")
					AI:SetTimer(0,10000,65535)
					AI:AddSkill(2107,1)
      		AI:UseSkill(2107,1)
					AI:SetArray(1,1)
				end
			end
   end
end
    
	