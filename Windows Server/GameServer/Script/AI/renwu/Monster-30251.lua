	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
	local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			a = AI:GetRand(3)
			if a == 0 then
				AI:ScreenText("Atlantis has been captured! Withdraw as soon as possible!",2)
			end
			
			if a == 1 then
				AI:ScreenText("The monster have seized Atlantis! We can fight no longer, retreat!",2)
			end
			
			if a == 2 then
				AI:ScreenText("Anyone still in Atlantis, speak to the Ruin Guard Captain to reach the new Atlantis!",2)
			end
			
			if a == 3 then
				AI:ScreenText("Atlantis has been taken! Survivors, please withdraw as soon as possible!",2)
			end
		end
	end
			
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(0,10000,65535)
				AI:SetArray(1,2)
			end
		end
		
			
		