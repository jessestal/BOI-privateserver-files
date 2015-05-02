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
		
--		if nIndex == 2 then--???2--start
--			a=AI:GetArray(2)
--			if a == 1 then
--
--			end
--		end--???2--------------------end
		
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
		if randombuff < 30 then
			AI:Say("Yowch, hot!")
		elseif randombuff < 60 then
			AI:Say("Brrrr, cold!")
		end
		AI:DelTimer(1)
		AI:DelTimer(2)

	end

