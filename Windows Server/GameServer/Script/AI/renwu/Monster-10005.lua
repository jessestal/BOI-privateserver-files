	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/10
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			a = AI:GetRand(9)
			
			if a == 0 then
--				AI:ScreenText("GUID:03039000000",2)
			end
			
			if a == 1 then
--				AI:ScreenText("GUID:03039000001",2)
			end
			
			if a == 2 then
--				AI:ScreenText("GUID:03039000002",2)
			end
			
			if a == 3 then
--				AI:ScreenText("GUID:03039000003",2)
			end
			
			if a == 4 then
--				AI:ScreenText("GUID:03039000004",2)
			end
			
			if a == 5 then
--				AI:ScreenText("GUID:03039000005",2)
			end
			
			if a == 6 then
--				AI:ScreenText("GUID:03039000006",1)
			end
			
			if a == 7 then
--				AI:ScreenText("GUID:03039000007",2)
			end
			
			if a == 8 then
--				AI:ScreenText("GUID:03039000008",2)
			end
			
			if a == 9 then
--				AI:ScreenText("GUID:03039000009",2)
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		
		if a == 0 then
			AI:SetTimer(0,20000,65535)
			AI:SetArray(1,2)
		end
	end