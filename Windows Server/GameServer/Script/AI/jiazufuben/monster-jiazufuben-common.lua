	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/08/24
	--		Author:??
	--		AIName:monster-jiazufuben-common.lua
	--		AIID:????-????
	--
	------------------------------------------

	require ".\\Script\\AI\\jiazufuben\\id"

	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)

	end

	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)

	end

	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)

	end

	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)

	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

		local posX = AI:GetPosX()
		local posY = AI:GetPosY()
		local map_id = AI:GetMapID()

		--????????
		local randnum = AI:GetRand(10000)

		--????
		local wave_num = AI:GetEctypeVarShort( map_id , 0 )
		local kill_num = AI:GetEctypeVarShort( map_id , 1 )
		kill_num = kill_num + 1
		AI:SetEctypeVarShort( map_id , 1 , kill_num )
		if kill_num == monster_id[wave_num][2] then
			AI:SetEctypeVarShort( map_id , 1 , 0 )
			AI:SetEctypeVarShort( map_id , 2 , 1 )
		end
		AI:ScreenText("Monster eliminated: "..tostring(kill_num).." / "..tostring(monster_id[wave_num][2]),2)
	end