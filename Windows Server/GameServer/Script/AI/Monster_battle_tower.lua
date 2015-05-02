	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2011/12/10
	--		Author:??
	--		AIName:Monster_battle_tower
	--		AIID:???
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
       		local AI = GetMonsterAI(nAI)
       		if nIndex == 0 then
        		AI:AddSkill(3891,1)
        		AI:UseSkill(3891,1)
        	end	
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(0)
        
        	if a == 0 then
--        		AI:Say("GUID:02996000000")
        		AI:SetTimer(0,3000,65535)
        		AI:SetArray(0,1)
        	end	
	end
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
    end