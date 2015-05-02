----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:AddSkill(2363,1)
				AI:UseSkill(2363,1)
			end
		end--???1--------------------end
--		
--		if nIndex == 2 then--???2--start
--			a=AI:GetArray(2)
--			if a == 1 then
--
--			end
--		end--???2--------------------end

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
--		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				mapx = AI:GetPosX()
				mapy = AI:GetPosY()
				if mapx < 76 then
					if mapy < 81 then
						wave=AI:GetEctypeVarShort(mapid,41)
						if wave > 0 then
							AI:SetTimer(1,3000,2)
							AI:SetArray(1,1)
						end
					else
						wave=AI:GetEctypeVarShort(mapid,43)
						if wave > 0 then
							AI:SetTimer(1,3000,2)
							AI:SetArray(1,1)
						end
					end
				else
					if mapy < 81 then
						wave=AI:GetEctypeVarShort(mapid,42)
						if wave > 0 then
							AI:SetTimer(1,3000,2)
							AI:SetArray(1,1)
						end
					else
						wave=AI:GetEctypeVarShort(mapid,44)
						if wave > 0 then
							AI:SetTimer(1,3000,2)
							AI:SetArray(1,1)
						end
					end
				end
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
			AI:Say("I'm done for!")
		elseif randombuff < 60 then
			AI:Say("Oh no!")
		end
		AI:DelTimer(1)
		AI:DelTimer(2)

	end
