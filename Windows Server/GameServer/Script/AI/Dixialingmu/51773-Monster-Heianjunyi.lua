	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/8
	--		Author£ººú±óÌÎ
	--		Class:	
	--		AIName£º
	--		Remark£ºÑ°¾¶µ½1ºÅ·¿
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
			AI:AddSeekPos(mapid,51,158)
			AI:AddSeekPos(mapid,48,163)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 48) and ( PosY == 163 )) then
			AI:SetAIState(0)
		end

	end

	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end