	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/8
	--		Author£ººú±óÌÎ
	--		Class:	
	--		AIName£º
	--		Remark£ºÑ°¾¶Àë¿ª
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
			AI:AddSeekPos(mapid,268,168)
			AI:AddSeekPos(mapid,275,156)
			AI:AddSeekPos(mapid,297,156)
			AI:AddSeekPos(mapid,299,146)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 299) and ( PosY == 146 )) then
			AI:SelfMurder()
		end

	end

	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end
