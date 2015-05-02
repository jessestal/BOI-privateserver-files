	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	Monster-30294.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				AI:SelfMurder()
			end
			if nIndex == 1 then
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			end
			
		end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
		
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("You're right! The forces of the Netherworld are creeping into Olympus! Be careful!", 1)
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
				AI:SetTimer(0,5000,1)
				AI:SetTimer(1,4000,1)
				AI:SetArray(1,1)
			end
		end