	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-30511.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:Say("Tap... tap... tap...")
		end
		
	end
		
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
		
		if a == 0 then
			AI:SetTimer(0,40000,65535)
			AI:SetArray(1,1)
		end
		
	end