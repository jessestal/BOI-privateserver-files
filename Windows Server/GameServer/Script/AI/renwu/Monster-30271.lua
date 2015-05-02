	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/9/27
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:ScreenText("Demons in Olympus, come with me and let us ruin the Pantheon!!",1)
			end
	end
			
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Haha, finally I have been revived! You are such a fool to be tricked!",1)
				AI:SetTimer(0,5000,1)
				AI:SetArray(1,1)
			end
	end