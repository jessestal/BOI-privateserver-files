	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/8
	--		Author£ººú±óÌÎ
	--		Class:	
	--		AIName£º
	--		Remark£ºÑ°¾¶µ½ÁèÏö
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
			AI:AddSeekPos(mapid,277,156)
			AI:AddSeekPos(mapid,292,156)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 292) and ( PosY == 156 )) then
			AI:SetAIState(0)
		end

	end

	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end