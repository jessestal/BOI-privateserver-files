----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2010/11/11
--		Author��������
--		Class:	.Lua
--		AIName��monster-32275.lua
--		Remark������С��
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
	
