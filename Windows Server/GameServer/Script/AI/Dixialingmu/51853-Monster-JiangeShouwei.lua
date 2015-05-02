	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/8
	--		Author£∫œÚÁÏ≥Ω
	--		Class:	
	--		AIName£∫
	--		Remark£∫Ω£∏Û ÿŒ¿—∞æ∂
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
			AI:AddSeekPos(mapid,304,97)
			AI:AddSeekPos(mapid,316,97)
			AI:SetArray(1,1)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 316) and ( PosY == 97 )) then
			AI:SelfMurder()
		end

	end

	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)

	end
