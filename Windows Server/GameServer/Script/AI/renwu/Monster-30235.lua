	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
			AI:SetArray(1,2)
			AI:SelfMurder()
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
			if a == 0 then
			AI:ScreenText("Ardth: Thanks for saving me, I will keep moving to the deeps of the Scorpion Lord's Crypt!",1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
			end
		end
		