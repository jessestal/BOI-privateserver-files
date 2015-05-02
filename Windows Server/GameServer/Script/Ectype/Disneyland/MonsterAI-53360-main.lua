----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012-8
--		Author：胡斌涛
--		TaskName：【-通用AI请双击我改名-】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--计时器1--start
			a=AI:GetArray(1)
			if a == 1 then

			end
		end--计时器1--------------------end
		
		if nIndex == 2 then--计时器2--start
			a=AI:GetArray(2)
			if a == 1 then

			end
		end--计时器2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--副本AI测试
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end