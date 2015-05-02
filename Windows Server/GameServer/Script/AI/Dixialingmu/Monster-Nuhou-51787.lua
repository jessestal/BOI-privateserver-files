	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/7
	--		Author：胡斌涛
	--		Class:	
	--		AIName：
	--		Remark：寻经到中央
	----------------------------------------------------


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)

	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

	end

	function Event_ReadSeekPos(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:AddSeekPos(mapid,30,82)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 30) and ( PosY == 82 )) then
			AI:SetAIState(0)
		end

	end

	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end
