----------------------------------------------------
--		Copyright£ºPERFECT WORLD
--		Modified£º2010/11/11
--		Author£ººú±óÌÎ
--		Class:	.Lua
--		AIName£ºmonster-32275.lua
--		Remark£º¹úÇìÐ¡¹Ö
----------------------------------------------------
	function Event_OnTimer(nAI,nIndex, nCount)
	
	end
	
	function Event_Thinking(nAI)
		
	end 

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
					PosX = AI:GetPosX()
					PosY = AI:GetPosY()
					PosX = PosX+2
					PosY = PosY+4
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosX = PosX+2
					PosY = PosY-2
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosY = PosY-4
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosX = PosX-2
					PosY = PosY-2
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosX = PosX-4
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosX = PosX-2
					PosY = PosY+2
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosY = PosY+4
					AI:SummonMonsterByPos(32276, PosX, PosY)
					PosX = PosX+2
					PosY = PosY+2
					AI:SummonMonsterByPos(32276, PosX, PosY)
		
	end
	
