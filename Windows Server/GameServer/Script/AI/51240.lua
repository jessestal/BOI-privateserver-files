----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012-3
--		Author：胡斌涛
--		Class:	.Lua
--		AIName：51239
--		Remark：深渊小怪
----------------------------------------------------
--20	场上玩家数量
--21	深渊怪物场上存在数
--22	这一波深渊怪物已死亡的数量
--23	总共死亡的深渊怪物
--24	是否是刷怪时间

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		
		if nIndex == 2 then
			status=AI:GetEctypeVarShort(mapid,24)
			if status == 0
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30410,posx,posy)
				AI:Exit()
			end
		end

	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(2,1000,99)
		end

	end

------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:DelTimer(2)
		AI:Exit()
		
	end
