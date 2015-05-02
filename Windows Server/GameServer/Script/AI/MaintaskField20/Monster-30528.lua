	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/04/05
	--		Author:???
	--		Class:	Monster-30528.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Hey! They bite! Stop it!")
		end
		
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		
		if a == 0 then
			AI:SetTimer(0,25000,65535)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)     
      
	end    