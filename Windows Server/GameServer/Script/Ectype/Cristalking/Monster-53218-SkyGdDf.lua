----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then

			end
		end--???1--------------------end

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			statusEctype = AI:GetEctypeVarShort(mapid,1)
			if statusEctype == 9 then
				AI:Exit()
			end
			----------------------------------------------------------normal end
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		randombuff = math.random(0,99)
		if randombuff < 3 then
			AI:Say("Protect...  the purity of the skies...")
		elseif randombuff < 10 then
			AI:Say("Uh-oh...")
		end

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

--	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
----		if (( PosX == xx) and ( PosY == yy )) then
----			AI:Exit()
----		end
--
--	end
--
--	function Event_UpdateSeekPos(nAI,nIndex)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end
--
--	end